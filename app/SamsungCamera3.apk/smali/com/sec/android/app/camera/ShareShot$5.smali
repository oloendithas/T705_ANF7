.class Lcom/sec/android/app/camera/ShareShot$5;
.super Ljava/lang/Object;
.source "ShareShot.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ShareShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ShareShot;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ShareShot;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    invoke-static {p2}, Lcom/samsung/shareshot/IShareShotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/shareshot/IShareShotService;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 292
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->isJoinedIn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->joinIn()V

    .line 300
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-boolean v1, v1, Lcom/sec/android/app/camera/ShareShot;->mRespondNoti:Z

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/camera/ShareShot;->mRespondNoti:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    iget-object v2, v2, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->setUserList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot$5;->this$0:Lcom/sec/android/app/camera/ShareShot;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 312
    return-void
.end method
