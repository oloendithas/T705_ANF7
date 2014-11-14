.class Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;
.super Ljava/lang/Object;
.source "HTML5Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsPrivateBrowsingEnabledGetter"
.end annotation


# instance fields
.field private mIsPrivateBrowsingEnabled:Z

.field private mIsReady:Z

.field final synthetic this$0:Landroid/webkitsec/HTML5Audio;


# direct methods
.method constructor <init>(Landroid/webkitsec/HTML5Audio;Landroid/os/Looper;Landroid/webkitsec/WebViewClassic;)V
    .registers 6
    .param p2, "uiThreadLooper"    # Landroid/os/Looper;
    .param p3, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 122
    iput-object p1, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->this$0:Landroid/webkitsec/HTML5Audio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;

    invoke-direct {v1, p0, p1, p3}, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter$1;-><init>(Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;Landroid/webkitsec/HTML5Audio;Landroid/webkitsec/WebViewClassic;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method

.method static synthetic access$102(Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z

    return p1
.end method

.method static synthetic access$202(Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;
    .param p1, "x1"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z

    return p1
.end method


# virtual methods
.method declared-synchronized get()Z
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsReady:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_b

    .line 137
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    goto :goto_1

    .line 138
    :catch_9
    move-exception v0

    goto :goto_1

    .line 141
    :cond_b
    :try_start_b
    iget-boolean v0, p0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->mIsPrivateBrowsingEnabled:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 135
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
