.class public Lcom/sec/android/app/camera/ShareShot;
.super Ljava/lang/Object;
.source "ShareShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ShareShot$OnUserSelected;,
        Lcom/sec/android/app/camera/ShareShot$UserWrapper;
    }
.end annotation


# static fields
.field public static final ACTIVE_REQUEST_TIMEOUT:I = 0xce

.field public static final ACTIVE_USER:I = 0xcb

.field public static final CANCEL_ACTIVE_USER:I = 0xcc

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera"

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

.field public static final REFESH_VIEW_COMMAND:I = 0xcd

.field private static final RUN_DIALOG_TO_CONFIRM:I = 0xc8

.field private static final RUN_DIALOG_TO_NOTICE_COMFIRMED:I = 0xca

.field private static final RUN_TO_SNS_MODE:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "ShareShot"


# instance fields
.field private callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

.field private cb_conn:Landroid/content/ServiceConnection;

.field private conn:Landroid/content/ServiceConnection;

.field private iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

.field public iShootShareService:Lcom/samsung/shareshot/IShareShotService;

.field private mActiveIp:Ljava/lang/String;

.field public mActiveUserHandler:Landroid/os/Handler;

.field protected mActivityContext:Lcom/sec/android/app/camera/Camera;

.field protected mMainHandler:Landroid/os/Handler;

.field public mReceiveImagePath:Ljava/lang/String;

.field public mReceived:Z

.field public mRespondNoti:Z

.field public mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

.field public sobject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 3
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    .line 60
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShareShot;->mReceived:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mReceiveImagePath:Ljava/lang/String;

    .line 63
    iput-boolean v2, p0, Lcom/sec/android/app/camera/ShareShot;->mRespondNoti:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    .line 66
    iput-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$1;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mMainHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$2;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActiveUserHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$3;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 262
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$4;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    .line 287
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$5;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    .line 316
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 318
    new-instance v0, Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->sobject:Ljava/lang/Object;

    .line 322
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ShareShot;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/ShareShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;
    .param p1, "x1"    # Lcom/samsung/dmc/ux/db/UserInfo;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ShareShot;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;
    .param p1, "x1"    # Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ShareShot;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/ShareShot;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2
    .param p1, "gsUserInfo"    # Lcom/samsung/dmc/ux/db/UserInfo;

    .prologue
    .line 591
    const-string v0, "ShareShot"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v0, "ShareShot"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/ShareShot$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/ShareShot$6;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 610
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 641
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    :goto_0
    return-void

    .line 646
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkWifiConnection()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ShareShot;->checkWifiConnection(Z)Z

    move-result v0

    return v0
.end method

.method public checkWifiConnection(Z)Z
    .locals 3
    .param p1, "showDialog"    # Z

    .prologue
    .line 556
    const-string v1, "ShareShot"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->isWifiDirectConnected()Z

    move-result v0

    .line 558
    .local v0, "bool_direct":Z
    if-nez v0, :cond_1

    .line 559
    if-eqz p1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showWifiConnectionDialog()V

    .line 561
    :cond_0
    const/4 v0, 0x0

    .line 565
    .end local v0    # "bool_direct":Z
    :goto_0
    return v0

    .line 563
    .restart local v0    # "bool_direct":Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideWifiConnectionDialog()V

    goto :goto_0
.end method

.method public getShareShotService()Lcom/samsung/shareshot/IShareShotService;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 685
    const/4 v1, 0x0

    .line 687
    .local v1, "info":Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 692
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 693
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 696
    :goto_1
    return-object v2

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public isWifiDirectConnected()Z
    .locals 4

    .prologue
    .line 569
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 570
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 571
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    const-string v2, "ShareShot"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v2, 0x1

    .line 575
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public join()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Lcom/sec/android/app/camera/ShareShot$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/ShareShot$7;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 715
    return-void
.end method

.method public manageLocalService(Z)V
    .locals 9
    .param p1, "start"    # Z

    .prologue
    const/4 v8, 0x1

    .line 718
    const-string v5, "ShareShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " manageLocalService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-nez p1, :cond_5

    .line 720
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v5, :cond_1

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v5, :cond_0

    .line 725
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-nez v5, :cond_2

    .line 726
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 728
    :cond_2
    const-string v5, "ShareShot"

    const-string v6, " unbind service"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v5, v6}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    .line 730
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->isWifiDirectConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 731
    :cond_3
    const-string v5, "ShareShot"

    const-string v6, " stop service"

    invoke-static {v5, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 733
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 735
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v2, "callbackUnbindIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v2}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 737
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v4, "unbindIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v4}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 739
    .end local v2    # "callbackUnbindIntent":Landroid/content/Intent;
    .end local v4    # "unbindIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 740
    .local v3, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "ShareShot"

    const-string v6, " service null exception"

    invoke-static {v5, v6}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 746
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 747
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 743
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 744
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 749
    :cond_5
    if-ne p1, v8, :cond_0

    .line 750
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, "callbackBindIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 752
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v1, v6, v8}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 754
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .local v0, "bindIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 756
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v0, v6, v8}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method public onPreviewFileReceived(I)V
    .locals 3
    .param p1, "preview"    # I

    .prologue
    const/4 v1, 0x1

    .line 761
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 769
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 765
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onRespondSharewithNotify()V
    .locals 5

    .prologue
    .line 816
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 817
    .local v0, "userInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->onShareModeSelect(I)V

    .line 818
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/ShareShot$9;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/ShareShot$9;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 829
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 3
    .param p1, "auto"    # I

    .prologue
    const/4 v1, 0x1

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_0

    .line 616
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;
    .param p2, "isChecked"    # Z

    .prologue
    .line 581
    const-string v0, "ShareShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-eqz p2, :cond_0

    .line 584
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ShareShot;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ShareShot;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_0
.end method

.method public produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 654
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 655
    .local v2, "personalInfo":Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 657
    invoke-virtual {v2, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 659
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .local v1, "f1":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 662
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 667
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 677
    :goto_1
    return-object v2

    .line 664
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 669
    :pswitch_0
    const v3, 0x7f0201f0

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 672
    :pswitch_1
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized refreshDeviceList()V
    .locals 4

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    const-string v1, "ShareShot"

    const-string v2, "refreshDeviceList"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .line 775
    .local v0, "deviceListMenu":Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuSize()V

    .line 777
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 779
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 780
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0b01db

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CameraToast;->makeText(Lcom/sec/android/app/camera/Camera;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_2
    monitor-exit p0

    return-void

    .line 772
    .end local v0    # "deviceListMenu":Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 832
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Notice"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has accepted your request!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/ShareShot$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/ShareShot$10;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 839
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .param p1, "user"    # Lcom/samsung/shareshot/User;

    .prologue
    .line 842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Share with request"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wants to share image with you. Continue?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/sec/android/app/camera/ShareShot$12;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/ShareShot$12;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/camera/ShareShot$11;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/ShareShot$11;-><init>(Lcom/sec/android/app/camera/ShareShot;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 871
    return-void
.end method

.method public searchUser(Lcom/samsung/dmc/ux/db/UserInfo;)Lcom/samsung/shareshot/User;
    .locals 7
    .param p1, "gsUserInfo"    # Lcom/samsung/dmc/ux/db/UserInfo;

    .prologue
    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, "user":Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 491
    .local v2, "searchInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 492
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 494
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 495
    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 505
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v5

    .line 502
    :catch_0
    move-exception v5

    .line 505
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 7
    .param p1, "userIP"    # Ljava/lang/String;

    .prologue
    .line 510
    const/4 v4, 0x0

    .line 511
    .local v4, "user":Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 514
    .local v3, "searchInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/ShareShot;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 515
    .local v5, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 517
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 518
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 519
    if-eqz v3, :cond_0

    .line 520
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 522
    monitor-exit v5

    move-object v6, v4

    .line 531
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v6

    .line 526
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_1
    monitor-exit v5

    .line 531
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 526
    .restart local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 527
    .end local v5    # "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public searchUser(Ljava/util/List;II)Lcom/samsung/shareshot/User;
    .locals 7
    .param p2, "userID"    # I
    .param p3, "selected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;II)",
            "Lcom/samsung/shareshot/User;"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 536
    .local v3, "user":Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 537
    .local v2, "searchInfo":Lcom/samsung/dmc/ux/db/UserInfo;
    const-string v4, "ShareShot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this user list have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    monitor-enter p1

    .line 539
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 541
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 542
    if-eqz v2, :cond_0

    .line 543
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 544
    monitor-exit p1

    move-object v4, v3

    .line 548
    :goto_0
    return-object v4

    .line 547
    :cond_1
    monitor-exit p1

    .line 548
    const/4 v4, 0x0

    goto :goto_0

    .line 547
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public wakeupToSnSMod()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 789
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IntentExtraMessageType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, "intent_extra_message":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "ActivateConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 793
    iput-boolean v5, p0, Lcom/sec/android/app/camera/ShareShot;->mRespondNoti:Z

    .line 794
    const-string v2, "ShareShot"

    const-string v3, " will wake up camera to deal with share with request"

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ShareShot;->onRespondSharewithNotify()V

    .line 801
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShareMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 802
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/ShareShot$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/ShareShot$8;-><init>(Lcom/sec/android/app/camera/ShareShot;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :cond_1
    :goto_1
    return-void

    .line 796
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isfromhistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Lcom/sec/android/app/camera/ShareShot;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/Camera;->onShareModeSelect(I)V

    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
