.class Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;
.super Ljava/lang/Object;
.source "mDNLeOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onBootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/mDNLeOnOff;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 213
    :goto_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 215
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->syncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 216
    sget-wide v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->avgAniTime:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    # getter for: Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I
    invoke-static {}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->access$100()I

    move-result v2

    int-to-long v6, v2

    add-long v0, v4, v6

    .line 217
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    iget-object v2, v2, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call updatemDNIe with delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff$2;->this$0:Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->updatemDNIe()V

    .line 222
    const/4 v2, 0x0

    # setter for: Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->delayOffset:I
    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->access$102(I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v0    # "delay":J
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 223
    :catch_0
    move-exception v2

    goto :goto_1
.end method
