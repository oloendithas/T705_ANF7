.class final Lcom/absolute/android/persistservice/am;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ak;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ak;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ak;B)V
    .registers 3

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/am;-><init>(Lcom/absolute/android/persistservice/ak;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v1, 0x3

    .line 178
    monitor-enter p0

    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_37

    .line 180
    iget-object v0, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ak;->a(Lcom/absolute/android/persistservice/ak;)Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_4b

    move-result v0

    if-eqz v0, :cond_37

    .line 183
    :try_start_e
    iget-object v0, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ak;->b(Lcom/absolute/android/persistservice/ak;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v0

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->ping()Z

    .line 188
    iget-object v0, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ak;->d(Lcom/absolute/android/persistservice/ak;)Lcom/absolute/android/persistservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ak;->c(Lcom/absolute/android/persistservice/ak;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/q;->c(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_39
    .catchall {:try_start_e .. :try_end_26} :catchall_4b

    .line 204
    :goto_26
    const/4 v0, 0x3

    :try_start_27
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ak;->e(Lcom/absolute/android/persistservice/ak;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_4b

    .line 208
    :cond_37
    monitor-exit p0

    return-void

    .line 194
    :catch_39
    move-exception v0

    :try_start_3a
    iget-object v0, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ak;->d(Lcom/absolute/android/persistservice/ak;)Lcom/absolute/android/persistservice/q;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/am;->a:Lcom/absolute/android/persistservice/ak;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ak;->c(Lcom/absolute/android/persistservice/ak;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Z)V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    goto :goto_26

    .line 178
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
