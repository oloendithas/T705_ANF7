.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field private static final DIR_ENCRYPTION:Z

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private final ENCRYPT:I

.field private final PRESCAN_FULL_ERR:I

.field private final RESPONSE_BASE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    .line 95
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    .line 104
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    .line 110
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 111
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 113
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 114
    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 120
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/DirEncryptService;->RESPONSE_BASE:I

    .line 121
    const/16 v0, 0x2ab

    iput v0, p0, Lcom/android/server/DirEncryptService;->ENCRYPT:I

    .line 122
    const/16 v0, 0x2ae

    iput v0, p0, Lcom/android/server/DirEncryptService;->PRESCAN_FULL_ERR:I

    .line 225
    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    const-string v0, "ctor DirEncryptService....."

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 191
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    move-result v0

    return v0
.end method

.method private authByUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 289
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 291
    .local v0, "myUID":I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 295
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCallerAndFeatureAvailablityCheck()I
    .locals 2

    .prologue
    .line 518
    sget-boolean v1, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v1, :cond_0

    .line 519
    const/16 v1, 0xc8

    .line 528
    :goto_0
    return v1

    .line 522
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 523
    .local v0, "requester":I
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 524
    const-string v1, "Invalid requester"

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 525
    const/16 v1, 0xcc

    goto :goto_0

    .line 528
    :cond_1
    const/16 v1, 0xd

    goto :goto_0
.end method

.method private doCheckBeforeEncryption(Ljava/lang/String;)I
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xd

    .line 546
    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->doCallerAndFeatureAvailablityCheck()I

    move-result v0

    .line 547
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    .line 554
    .end local v0    # "result":I
    :goto_0
    return v0

    .line 550
    .restart local v0    # "result":I
    :cond_0
    if-nez p1, :cond_1

    .line 551
    const-string v1, "missing password..."

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 552
    const/16 v0, 0xcb

    goto :goto_0

    :cond_1
    move v0, v1

    .line 554
    goto :goto_0
.end method

.method private findRequester(I)Ljava/lang/String;
    .locals 5
    .param p1, "uidApp"    # I

    .prologue
    .line 299
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 300
    .local v1, "myUID":I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "callingPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 305
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 306
    :cond_0
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 340
    :goto_0
    return-object v3

    .line 310
    :cond_1
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 312
    const-string v3, ""

    goto :goto_0

    .line 315
    :cond_2
    if-eq v1, p1, :cond_3

    .line 316
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 317
    goto :goto_0

    .line 320
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 321
    .local v2, "pid":I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 325
    if-nez v0, :cond_4

    .line 327
    const-string v3, "Calling package name is null..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 328
    const-string v3, ""

    goto :goto_0

    .line 331
    :cond_4
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 332
    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v3, "user"

    goto :goto_0

    .line 339
    :cond_5
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 340
    const-string v3, "dm"

    goto :goto_0
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "result":Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 277
    .local v0, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 279
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 280
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 281
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 285
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    return-object v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 688
    .local v0, "appUid":I
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 690
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 694
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 695
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 696
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v0, :cond_0

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerId UID matched"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "UID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 698
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 702
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-eqz v3, :cond_2

    .line 704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerId packageName --"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 709
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 707
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v6, "getContainerId packageName is null"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 709
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method private moveDumpstate()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 240
    const-string/jumbo v1, "trigger_restart_min_framework"

    .line 241
    .local v1, "ENCRYPTING_STATE":Ljava/lang/String;
    const-string v0, "1"

    .line 242
    .local v0, "ENCRYPTED_STATE":Ljava/lang/String;
    const-string/jumbo v8, "vold.decrypt"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "cryptState":Ljava/lang/String;
    const/4 v5, 0x0

    .line 245
    .local v5, "ret":Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 247
    const/4 v5, 0x1

    :goto_0
    move v7, v5

    .line 270
    :goto_1
    return v7

    .line 248
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    const/4 v5, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v4, 0x0

    .line 253
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 254
    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_2

    .line 255
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 262
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->moveDumpstates()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v5, 0x1

    goto :goto_0

    .line 257
    :cond_2
    const-string v8, "Can\'t get mount service"

    invoke-static {v8}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 264
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I
    .locals 18
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "mountPoint"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p5, "containerId"    # I

    .prologue
    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 745
    const-string v2, "Service: changeEcryptfsPassword"

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 746
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DirEncryptService;->doCheckBeforeEncryption(Ljava/lang/String;)I

    move-result v14

    .line 747
    .local v14, "checkResult":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: changeEcryptfsPassword with password doCheckBeforeEncryption checkResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 748
    const/16 v2, 0xd

    if-eq v14, v2, :cond_0

    .line 757
    .end local v14    # "checkResult":I
    :goto_0
    return v14

    .line 750
    .restart local v14    # "checkResult":I
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptService;->doCheckBeforeEncryption(Ljava/lang/String;)I

    move-result v15

    .line 751
    .local v15, "checkResultForNewPassword":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: changeEcryptfsPassword with password doCheckBeforeEncryption checkResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 752
    const/16 v2, 0xd

    if-eq v15, v2, :cond_1

    move v14, v15

    goto :goto_0

    .line 754
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    new-instance v2, Lcom/android/server/EcryptfsMountParams;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p3

    move-object/from16 v5, p1

    move/from16 v9, p5

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v13}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 757
    const/16 v14, 0xd

    goto :goto_0
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptStorage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 595
    sget-boolean v6, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v6, :cond_0

    .line 596
    const/16 v2, 0xc8

    .line 629
    :goto_0
    return v2

    .line 599
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 600
    .local v1, "requester":I
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 601
    const-string v6, "Invalid requester"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 602
    const/16 v2, 0xcc

    goto :goto_0

    .line 605
    :cond_1
    const/16 v2, 0xc9

    .line 606
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 608
    .local v4, "token":J
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 609
    .local v0, "dew":Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 612
    const/4 v2, 0x0

    .line 613
    const-string v6, "SD card mounted, need unmount..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 614
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 615
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 616
    const/16 v2, 0xd

    .line 628
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 617
    :cond_2
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 618
    const-string v6, "SD card ready, need encrypt cycle..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 619
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 620
    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 621
    const/16 v2, 0xd

    goto :goto_1

    .line 624
    :cond_3
    const-string v6, "SD card not mounted, so not applying policies this time"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 625
    const/16 v2, 0xca

    goto :goto_1
.end method

.method public enforceEnterpriseMountUnmountEcryptfsPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/android/server/DirEncryptService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 5

    .prologue
    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    sget-boolean v4, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v4, :cond_0

    move-object v1, v0

    .line 813
    .end local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v1, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_0
    return-object v1

    .line 803
    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 805
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 806
    const-string v4, "EncPrefs found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 807
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 812
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v0

    .line 813
    .end local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_0

    .line 809
    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const-string v4, "EncPrefs not found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isPathMounted(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    .locals 14
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 771
    const-string v0, "Service: isPathMounted"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 772
    iget-object v12, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v13, 0x9

    new-instance v0, Lcom/android/server/EcryptfsMountParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p1

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 775
    const/16 v0, 0xd

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 4

    .prologue
    .line 471
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_0

    .line 472
    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    .line 474
    :cond_0
    const/4 v0, 0x0

    .line 475
    .local v0, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 477
    .local v1, "token":J
    const-string v3, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 478
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 480
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    .locals 17
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "mountPath"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "mountAndEncrypt"    # Z
    .param p5, "excludeMediaTypes"    # I
    .param p6, "containerId"    # I
    .param p7, "state"    # I
    .param p8, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .prologue
    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 651
    const-string v2, "Service: mountEcryptfsStorage with password"

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptService;->doCheckBeforeEncryption(Ljava/lang/String;)I

    move-result v14

    .line 653
    .local v14, "checkResult":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service: mountEcryptfsStorage with password doCheckBeforeEncryption checkResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 654
    const/16 v2, 0xd

    if-eq v14, v2, :cond_0

    .line 660
    .end local v14    # "checkResult":I
    :goto_0
    return v14

    .line 656
    .restart local v14    # "checkResult":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v16, 0x6

    new-instance v2, Lcom/android/server/EcryptfsMountParams;

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 660
    const/16 v14, 0xd

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 149
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 151
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventcode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " raw: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cooked "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 157
    const/16 v1, 0x2ae

    if-ne p1, v1, :cond_1

    .line 158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v2, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return v0

    .line 160
    :cond_1
    const/16 v1, 0x2ab

    if-ne p1, v1, :cond_0

    .line 161
    const/4 v1, 0x3

    aget-object v7, p3, v1

    .line 162
    .local v7, "status":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, "reqEnc":I
    const-string/jumbo v1, "success"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    if-ne v6, v0, :cond_2

    .line 166
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Decrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 347
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .locals 1
    .param p1, "in"    # Z

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    .line 818
    return-void
.end method

.method public setNullSDCardPassword()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 565
    const/4 v1, 0x0

    .line 566
    .local v1, "instMountService":Landroid/os/storage/IMountService;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 568
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 583
    :goto_0
    return v3

    .line 571
    :cond_0
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 573
    if-eqz v1, :cond_1

    .line 574
    :try_start_0
    const-string v4, ""

    invoke-interface {v1, v4}, Landroid/os/storage/IMountService;->setNullSDCardPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "DirEncryptService"

    const-string v5, "Error while setting null password for sdcard."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v4, "Can\'t set nullpassword!"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 485
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_0

    .line 486
    const/16 v3, 0xc8

    .line 499
    :goto_0
    return v3

    .line 489
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 490
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 492
    .local v1, "token":J
    const-string/jumbo v3, "setPassword....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 493
    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 498
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    const/16 v3, 0xd

    goto :goto_0

    .line 496
    :cond_1
    const-string/jumbo v3, "setPassword error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 16
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 354
    const/16 v13, 0xc8

    .line 355
    .local v13, "result":I
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_1

    .line 357
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 358
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v3, v13

    .line 467
    :goto_1
    return v3

    .line 361
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStorageCardEncryption: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    .line 370
    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    .line 372
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v3, v13

    .line 375
    goto :goto_1

    .line 377
    :cond_2
    const/4 v3, 0x4

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    .line 379
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    .line 380
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v3, v13

    .line 387
    goto/16 :goto_1

    .line 383
    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 389
    :cond_4
    const/4 v3, 0x4

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    .line 391
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v3, v13

    .line 394
    goto/16 :goto_1

    .line 396
    :cond_5
    const/4 v3, 0x6

    move/from16 v0, p3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x7

    move/from16 v0, p3

    if-eq v0, v3, :cond_7

    .line 398
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 399
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v3, v13

    .line 406
    goto/16 :goto_1

    .line 402
    :cond_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed"

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 409
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 411
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v12

    .line 412
    .local v12, "requester":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 414
    .local v14, "token":J
    new-instance v10, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v10, v0, v1, v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 415
    .local v10, "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v11

    .line 417
    .local v11, "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 418
    .local v9, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 419
    const/4 v3, 0x2

    iput v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 420
    const/4 v3, 0x4

    iput v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 423
    :cond_8
    invoke-virtual {v11, v10}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v3

    if-eqz v3, :cond_9

    .line 425
    const-string v3, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    .line 426
    const/16 v3, 0xf

    monitor-exit v4

    goto/16 :goto_1

    .line 465
    .end local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v11    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v12    # "requester":Ljava/lang/String;
    .end local v14    # "token":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 429
    .restart local v9    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v11    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v12    # "requester":Ljava/lang/String;
    .restart local v14    # "token":J
    :cond_9
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called by: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 433
    const/16 v13, 0x8

    .line 435
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 463
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 464
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    monitor-exit v4

    move v3, v13

    .line 467
    goto/16 :goto_1

    .line 437
    :cond_a
    const/16 v13, 0x9

    goto :goto_4

    .line 445
    :cond_b
    iget v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_d

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 448
    const/16 v13, 0x8

    .line 450
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_4

    .line 452
    :cond_c
    const/16 v13, 0x9

    goto :goto_4

    .line 455
    :cond_d
    const-string v3, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V

    goto :goto_4

    .line 460
    :cond_e
    const-string v3, "Policy has already been saved."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logI(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    const/16 v13, 0xa

    goto :goto_4
.end method

.method public systemReady()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 195
    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 202
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    .line 207
    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "dir_enc_report"

    const/16 v3, 0x1f4

    const-string v4, "DirEncryptConnector"

    const/16 v5, 0xa0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 208
    new-instance v7, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DirEncryptConnector"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 209
    .local v7, "thread":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 211
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 212
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 215
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v7    # "thread":Ljava/lang/Thread;
    :goto_1
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    goto :goto_0

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeDaemonConnector exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto :goto_1
.end method

.method public unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I
    .locals 14
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p3, "uninstallOrStop"    # I
    .param p4, "containerId"    # I

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->enforceEnterpriseMountUnmountEcryptfsPermission()I

    .line 725
    const-string v0, "Service: unmountEcryptfsStorage"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    .line 726
    iget-object v12, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v13, 0x7

    new-instance v0, Lcom/android/server/EcryptfsMountParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move/from16 v7, p4

    move-object/from16 v9, p2

    move/from16 v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/android/server/EcryptfsMountParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;Ljava/lang/String;I)V

    invoke-virtual {v12, v13, v0}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 730
    const/16 v0, 0xd

    return v0
.end method

.method public unmountSDCardByAdmin()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    .line 561
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 351
    return-void
.end method
