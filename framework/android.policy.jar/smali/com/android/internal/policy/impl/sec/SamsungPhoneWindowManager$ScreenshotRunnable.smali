.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field mConn:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V
    .registers 4
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    .line 2229
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    .line 2230
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2234
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2235
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2236
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    :cond_23
    monitor-exit v1

    .line 2239
    return-void

    .line 2238
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v0
.end method
