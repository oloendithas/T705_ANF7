.class public Lcom/samsung/android/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;,
        Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;,
        Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    }
.end annotation


# static fields
.field public static final CLIENTSPEC_KEY_ACCURACY:Ljava/lang/String; = "request_accuracy"

.field public static final CLIENTSPEC_KEY_ALLOW_INDEXES:Ljava/lang/String; = "request_template_index_list"

.field public static final CLIENTSPEC_KEY_APPNAME:Ljava/lang/String; = "appName"

.field public static final CLIENTSPEC_KEY_BACKGROUND:Ljava/lang/String; = "background"

.field public static final CLIENTSPEC_KEY_DEMANDED_PROPERTY_NAME:Ljava/lang/String; = "propertyName"

.field public static final CLIENTSPEC_KEY_DEMAND_EXTRA_EVENT:Ljava/lang/String; = "demandExtraEvent"

.field public static final CLIENTSPEC_KEY_OWN_NAME:Ljava/lang/String; = "ownName"

.field public static final CLIENTSPEC_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final CLIENTSPEC_KEY_SECURITY_LEVEL:Ljava/lang/String; = "securityLevel"

.field public static final CLIENTSPEC_KEY_USE_MANUAL_TIMEOUT:Ljava/lang/String; = "useManualTimeout"

.field private static final DEBUG:Z

.field private static final ENROLL_FINISHED:Ljava/lang/String; = "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

.field private static final ERROR_MSG_SERVICE_NOT_FOUND:Ljava/lang/String; = "FingerprintService is not running!"

.field public static final EXTRAS_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final FINGERPRINT_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.feature.fingerprint_manager_service"

.field public static final FINGER_ALL:I = 0x15

.field public static final FINGER_LEFT_INDEX:I = 0x2

.field public static final FINGER_LEFT_INDEX_2ND:I = 0xc

.field public static final FINGER_LEFT_LITTLE:I = 0x5

.field public static final FINGER_LEFT_LITTLE_2ND:I = 0xf

.field public static final FINGER_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_LEFT_MIDDLE_2ND:I = 0xd

.field public static final FINGER_LEFT_RING:I = 0x4

.field public static final FINGER_LEFT_RING_2ND:I = 0xe

.field public static final FINGER_LEFT_THUMB:I = 0x1

.field public static final FINGER_LEFT_THUMB_2ND:I = 0xb

.field public static final FINGER_NOT_SPECIFIED:I = 0x0

.field public static final FINGER_NUMBER_FOR_ONE:I = 0xa

.field public static final FINGER_PERMISSION_DELIMITER:Ljava/lang/String; = ","

.field public static final FINGER_RIGHT_INDEX:I = 0x7

.field public static final FINGER_RIGHT_INDEX_2ND:I = 0x11

.field public static final FINGER_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_RIGHT_LITTLE_2ND:I = 0x14

.field public static final FINGER_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_RIGHT_MIDDLE_2ND:I = 0x12

.field public static final FINGER_RIGHT_RING:I = 0x9

.field public static final FINGER_RIGHT_RING_2ND:I = 0x13

.field public static final FINGER_RIGHT_THUMB:I = 0x6

.field public static final FINGER_RIGHT_THUMB_2ND:I = 0x10

.field public static final SECURITY_LEVEL_HIGH:I = 0x2

.field public static final SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_REGULAR:I = 0x1

.field public static final SECURITY_LEVEL_VERY_HIGH:I = 0x3

.field public static final SERVICE_NAME:Ljava/lang/String; = "fingerprint_service"

.field private static final START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field private static isEnroll:Z

.field private static mCallerActivity:Landroid/app/Activity;

.field private static mCallerApplication:Landroid/app/Application;

.field private static mContext:Landroid/content/Context;

.field private static mEnrollFinishResult:I

.field private static mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field private static mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field private static mIndex:I

.field private static mSecurityLevel:I

.field private static mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

.field private static mStringId:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;


# instance fields
.field private mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field final mHandler:Landroid/os/Handler;

.field private mOwnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.activity.StartEnrollActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    .line 148
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 149
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 151
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 152
    sput v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 155
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 158
    sput v6, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 166
    sput-object v5, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 168
    sput-boolean v2, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return-void

    :cond_29
    move v0, v2

    .line 50
    goto :goto_b
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 729
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$2;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 1293
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$3;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 206
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 208
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/fingerprint/FingerprintManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Exception;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    return v0
.end method

.method private clearEnrollStatus()V
    .registers 2

    .prologue
    .line 1536
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    .line 1537
    return-void
.end method

.method private declared-synchronized ensureServiceConnected()V
    .registers 4

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_33

    .line 248
    const-string v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_30

    .line 250
    :try_start_11
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_21

    .line 251
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_29
    .catchall {:try_start_11 .. :try_end_1f} :catchall_30

    .line 279
    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    .line 254
    :cond_21
    :try_start_21
    const-string v1, "FingerprintManager"

    const-string v2, "ensureServiceConnected: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29
    .catchall {:try_start_21 .. :try_end_28} :catchall_30

    goto :goto_1f

    .line 257
    :catch_29
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v1, "ensureServiceConnected:"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_1f

    .line 247
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1

    .line 261
    :cond_33
    :try_start_33
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 262
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "mService is not valid so retieve the service again."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v1, "fingerprint_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/fingerprint/IFingerprintManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_30

    .line 266
    :try_start_53
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-eqz v1, :cond_69

    .line 267
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_61} :catch_62
    .catchall {:try_start_53 .. :try_end_61} :catchall_30

    goto :goto_1f

    .line 273
    :catch_62
    move-exception v0

    .line 274
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_63
    const-string v1, "ensureServiceConnected:"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_30

    goto :goto_1f

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_69
    :try_start_69
    const-string v1, "FingerprintManager"

    const-string v2, "ensureServiceConnected: mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_70} :catch_62
    .catchall {:try_start_69 .. :try_end_70} :catchall_30

    goto :goto_1f
.end method

.method public static getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 10
    .param p0, "quality"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1663
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1664
    .local v2, "mPm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1665
    .local v3, "mRes":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 1666
    .local v4, "result":I
    const/4 v1, 0x0

    .line 1669
    .local v1, "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :try_start_7
    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_c} :catch_19

    move-result-object v3

    .line 1674
    :goto_d
    if-nez v3, :cond_25

    .line 1675
    const-string v5, "FingerprintManager"

    const-string/jumbo v6, "mRes is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const/4 v5, 0x0

    .line 1713
    :goto_18
    return-object v5

    .line 1670
    :catch_19
    move-exception v0

    .line 1671
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FingerprintManager"

    const-string v6, "getImageQualityAnimation, NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 1679
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_25
    sparse-switch p0, :sswitch_data_9e

    .line 1707
    const-string/jumbo v5, "spass_errimage_default"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1710
    :goto_33
    if-eqz v4, :cond_3b

    .line 1711
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .restart local v1    # "mAni":Landroid/graphics/drawable/AnimationDrawable;
    :cond_3b
    move-object v5, v1

    .line 1713
    goto :goto_18

    .line 1681
    :sswitch_3d
    const-string/jumbo v5, "spass_errimage_nomatch"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1682
    goto :goto_33

    .line 1684
    :sswitch_49
    const-string/jumbo v5, "spass_errimage_short"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1685
    goto :goto_33

    .line 1688
    :sswitch_55
    const-string/jumbo v5, "spass_errimage_speed"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1689
    goto :goto_33

    .line 1692
    :sswitch_61
    const-string/jumbo v5, "spass_errimage_left"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1693
    goto :goto_33

    .line 1695
    :sswitch_6d
    const-string/jumbo v5, "spass_errimage_right"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1696
    goto :goto_33

    .line 1698
    :sswitch_79
    const-string/jumbo v5, "spass_errimage_wet"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1699
    goto :goto_33

    .line 1701
    :sswitch_85
    const-string/jumbo v5, "spass_errimage_diagonal"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1702
    goto :goto_33

    .line 1704
    :sswitch_91
    const-string/jumbo v5, "spass_errimage_homekey"

    const-string v6, "anim"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1705
    goto :goto_33

    .line 1679
    nop

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_3d
        0x2 -> :sswitch_55
        0x4 -> :sswitch_49
        0x10 -> :sswitch_55
        0x200 -> :sswitch_91
        0x1000 -> :sswitch_61
        0x8000 -> :sswitch_85
        0x20000 -> :sswitch_61
        0x40000 -> :sswitch_6d
        0x1000000 -> :sswitch_79
    .end sparse-switch
.end method

.method public static getImageQualityFeedback(I)I
    .registers 2
    .param p0, "quality"    # I

    .prologue
    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_3e

    .line 1623
    :goto_4
    return v0

    .line 1578
    :sswitch_5
    const v0, 0x1040025

    .line 1579
    goto :goto_4

    .line 1582
    :sswitch_9
    const v0, 0x1040027

    .line 1583
    goto :goto_4

    .line 1585
    :sswitch_d
    const v0, 0x1040028

    .line 1586
    goto :goto_4

    .line 1588
    :sswitch_11
    const v0, 0x1040029

    .line 1589
    goto :goto_4

    .line 1591
    :sswitch_15
    const v0, 0x104002a

    .line 1592
    goto :goto_4

    .line 1594
    :sswitch_19
    const v0, 0x104002a

    .line 1595
    goto :goto_4

    .line 1597
    :sswitch_1d
    const v0, 0x104002b

    .line 1598
    goto :goto_4

    .line 1600
    :sswitch_21
    const v0, 0x104002c

    .line 1601
    goto :goto_4

    .line 1603
    :sswitch_25
    const v0, 0x104002d

    .line 1604
    goto :goto_4

    .line 1606
    :sswitch_29
    const v0, 0x104002e

    .line 1607
    goto :goto_4

    .line 1609
    :sswitch_2d
    const v0, 0x104002f

    .line 1610
    goto :goto_4

    .line 1612
    :sswitch_31
    const v0, 0x1040030

    .line 1613
    goto :goto_4

    .line 1615
    :sswitch_35
    const v0, 0x1040031

    .line 1616
    goto :goto_4

    .line 1618
    :sswitch_39
    const v0, 0x1040039

    .line 1619
    goto :goto_4

    .line 1576
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_25
        0x2 -> :sswitch_11
        0x4 -> :sswitch_9
        0x10 -> :sswitch_d
        0x200 -> :sswitch_39
        0x1000 -> :sswitch_15
        0x2000 -> :sswitch_9
        0x8000 -> :sswitch_35
        0x10000 -> :sswitch_2d
        0x20000 -> :sswitch_19
        0x40000 -> :sswitch_1d
        0x80000 -> :sswitch_29
        0x1000000 -> :sswitch_31
        0x2000000 -> :sswitch_21
    .end sparse-switch
.end method

.method public static getImageQualityIcon(I)I
    .registers 2
    .param p0, "quality"    # I

    .prologue
    .line 1627
    const/4 v0, 0x0

    .line 1628
    .local v0, "result":I
    sparse-switch p0, :sswitch_data_28

    .line 1656
    const v0, 0x1080312

    .line 1659
    :goto_7
    return v0

    .line 1630
    :sswitch_8
    const v0, 0x108031c

    .line 1631
    goto :goto_7

    .line 1633
    :sswitch_c
    const v0, 0x1080314

    .line 1634
    goto :goto_7

    .line 1637
    :sswitch_10
    const v0, 0x1080316

    .line 1638
    goto :goto_7

    .line 1641
    :sswitch_14
    const v0, 0x1080315

    .line 1642
    goto :goto_7

    .line 1644
    :sswitch_18
    const v0, 0x108031d

    .line 1645
    goto :goto_7

    .line 1647
    :sswitch_1c
    const v0, 0x1080317

    .line 1648
    goto :goto_7

    .line 1650
    :sswitch_20
    const v0, 0x1080313

    .line 1651
    goto :goto_7

    .line 1653
    :sswitch_24
    const v0, 0x108031b

    .line 1654
    goto :goto_7

    .line 1628
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_8
        0x2 -> :sswitch_10
        0x4 -> :sswitch_c
        0x10 -> :sswitch_10
        0x200 -> :sswitch_24
        0x1000 -> :sswitch_14
        0x8000 -> :sswitch_20
        0x20000 -> :sswitch_14
        0x40000 -> :sswitch_18
        0x1000000 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I

    .prologue
    .line 179
    const-class v1, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "SecurityLevel"    # I
    .param p2, "ownName"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v3, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v3

    if-nez p0, :cond_10

    .line 184
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "context must not be null"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 183
    :catchall_d
    move-exception v2

    monitor-exit v3

    throw v2

    .line 187
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_36

    if-eqz p0, :cond_36

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_36

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 192
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    .line 195
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_36
    sput-object p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 196
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_3f

    .line 197
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->startFingerprintManagerService()V

    .line 199
    :cond_3f
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_48

    .line 200
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {v2, p2}, Lcom/samsung/android/fingerprint/FingerprintManager;->setOwnName(Ljava/lang/String;)V

    .line 202
    :cond_48
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->sInstance:Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_d

    monitor-exit v3

    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 175
    const-class v0, Lcom/samsung/android/fingerprint/FingerprintManager;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_4
    invoke-static {p0, v1, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isEnrolling()Z
    .registers 1

    .prologue
    .line 1540
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    return v0
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1128
    return-void
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 8
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 1138
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 1139
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_25

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1143
    :goto_24
    return-void

    .line 1139
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1141
    :cond_39
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_5a

    const-string v0, ""

    :goto_4e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e
.end method

.method private logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "extraInfo2"    # Ljava/lang/String;

    .prologue
    .line 1146
    sget-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v0, :cond_3d

    .line 1147
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_25

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    :goto_24
    return-void

    .line 1147
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 1149
    :cond_3d
    const-string v1, "FingerprintManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_5e

    const-string v0, ""

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52
.end method

.method private registerActivityLifeCallback()V
    .registers 3

    .prologue
    .line 794
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_13

    .line 795
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "registerActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 798
    :cond_13
    return-void
.end method

.method private setEnrollStatus()V
    .registers 2

    .prologue
    .line 1532
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnroll:Z

    .line 1533
    return-void
.end method

.method private setOwnName(Ljava/lang/String;)V
    .registers 5
    .param p1, "ownName"    # Ljava/lang/String;

    .prologue
    .line 1717
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    .line 1720
    return-void
.end method

.method private static startFingerprintManagerService()V
    .registers 5

    .prologue
    .line 212
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.fingerprint.service"

    const-string v4, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 220
    :goto_30
    return-void

    .line 217
    :catch_31
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30
.end method

.method private unregisterActivityLifeCallback()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 801
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v0, :cond_18

    .line 802
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "unregisterActivityLifeCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    sget-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 804
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    .line 805
    sput-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 807
    :cond_18
    return-void
.end method


# virtual methods
.method public addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 1016
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1018
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1019
    const-string v2, "addPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1029
    :goto_10
    return v1

    .line 1024
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->addPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1025
    :catch_18
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "addPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;

    .prologue
    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 407
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 408
    const-string v2, "attachClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 418
    :goto_f
    return-object v1

    .line 413
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->attachClient(Landroid/os/IBinder;Lcom/samsung/android/fingerprint/IFingerprintClient;)Landroid/os/IBinder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 414
    :catch_17
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "attachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public binderDied()V
    .registers 5

    .prologue
    .line 224
    const-string v0, "FingerprintManager"

    const-string v1, "====== binderDied ====="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    .line 226
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 227
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_1a
    return-void
.end method

.method public cancel(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 284
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 285
    const-string v2, "cancel"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 295
    :cond_10
    :goto_10
    return v1

    .line 290
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->cancel(Landroid/os/IBinder;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1b

    move-result v2

    if-nez v2, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    .line 291
    :catch_1b
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "cancel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public closeTransaction(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1103
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1105
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1106
    const-string v2, "closeTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1116
    :goto_10
    return v1

    .line 1111
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1112
    :catch_18
    move-exception v0

    .line 1113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "closeTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public detachClient(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 425
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 426
    const-string v2, "detachClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 436
    :goto_10
    return v1

    .line 431
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->detachClient(Landroid/os/IBinder;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 432
    :catch_18
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "detachClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 301
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 302
    const-string v2, "enroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 312
    :goto_10
    return v1

    .line 307
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 308
    :catch_18
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 352
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 353
    const-string v2, "enrollForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 363
    :goto_10
    return v1

    .line 358
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->enrollForMultiUser(Landroid/os/IBinder;ILjava/lang/String;I)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 359
    :catch_18
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "enrollForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 460
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 461
    const-string v2, "finishIdentify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 471
    :goto_10
    return v1

    .line 466
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->finishIdentify(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 467
    :catch_18
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "finishIdentify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getEnrollFinishResult()I
    .registers 2

    .prologue
    .line 1251
    sget v0, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    return v0
.end method

.method public getEnrolledFingers()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 863
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 865
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 866
    const-string v2, "getEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 876
    :goto_10
    return v1

    .line 871
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledFingers(Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_10

    .line 872
    :catch_1a
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 880
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 882
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 883
    const-string v2, "getEnrolledPermissions"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 893
    :goto_f
    return-object v1

    .line 888
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 889
    :catch_17
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getEnrolledUserCount()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 914
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 916
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 917
    const-string v2, "getEnrolledUserCount"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 927
    :goto_10
    return v1

    .line 922
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUserCount()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 923
    :catch_18
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUserCount"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public getEnrolledUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 899
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 900
    const-string v2, "getEnrolledUsers"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 910
    :goto_f
    return-object v1

    .line 905
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getEnrolledUsers()Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 906
    :catch_17
    move-exception v0

    .line 907
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getEnrolledUsers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getIndexName(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 1544
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1545
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_10

    .line 1546
    const-string v2, "getIndexName"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1554
    :goto_f
    return-object v1

    .line 1550
    :cond_10
    :try_start_10
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_17

    move-result-object v1

    goto :goto_f

    .line 1551
    :catch_17
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_f
.end method

.method public getLastImageQuality(Landroid/content/Context;)I
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 626
    const/4 v1, 0x0

    .line 627
    .local v1, "imageId":I
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_f

    .line 628
    const-string v2, "getLastImageQuality"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 629
    const/4 v2, 0x0

    .line 641
    :goto_e
    return v2

    .line 631
    :cond_f
    if-nez p1, :cond_19

    .line 632
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    :cond_19
    :try_start_19
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQuality(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityIcon(I)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_41

    move-result v1

    .line 640
    :goto_27
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastImageQuality: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 641
    goto :goto_e

    .line 637
    :catch_41
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_27
.end method

.method public getLastImageQualityMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 609
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_d

    .line 610
    const-string v2, "getLastImageQualityMessage"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 621
    :cond_c
    :goto_c
    return-object v1

    .line 613
    :cond_d
    if-eqz p1, :cond_c

    .line 617
    :try_start_f
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getLastImageQualityMessage(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_c

    .line 618
    :catch_1a
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getLastImageQualityMessage"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public getSensorServiceVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1069
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_12

    .line 1070
    const-string v1, "getSensorServiceVersion"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1071
    const-string v1, ""

    .line 1080
    :goto_11
    return-object v1

    .line 1075
    :cond_12
    :try_start_12
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getSensorServiceVersion()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_11

    .line 1076
    :catch_19
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "getSensorServiceVersion"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1080
    const-string v1, ""

    goto :goto_11
.end method

.method public getVersion()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1050
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1052
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1053
    const-string v2, "getVersion"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1063
    :goto_10
    return v1

    .line 1058
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->getVersion()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1059
    :catch_18
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "getVersion"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public hasPendingCommand()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1035
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1036
    const-string v2, "hasPendingCommand"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1046
    :goto_10
    return v1

    .line 1041
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->hasPendingCommand()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1042
    :catch_18
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "hasPendingCommand"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public identify(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 504
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 506
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 507
    const-string v2, "identify"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 517
    :goto_10
    return v1

    .line 512
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identify(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 513
    :catch_18
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 540
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 541
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 551
    :goto_10
    return v1

    .line 546
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 547
    :catch_18
    move-exception v0

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyForMultiUser(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 521
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 523
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 524
    const-string v2, "identifyForMultiUser"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 534
    :goto_10
    return v1

    .line 529
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    const/4 v3, -0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_10

    .line 530
    :catch_19
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "identifyForMultiUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p3, "attribute"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 475
    if-nez p1, :cond_c

    .line 476
    const-string v2, "identifyWithDialog"

    const-string v3, "Context is null"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 500
    :goto_b
    return v1

    .line 479
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 480
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_1b

    .line 481
    const-string v2, "identifyWithDialog"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v4, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_b

    .line 484
    :cond_1b
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_3b

    move-object v1, p1

    .line 485
    check-cast v1, Landroid/app/Activity;

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v1, p1

    .line 486
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 487
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    .line 493
    :goto_30
    :try_start_30
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->identifyWithDialog(Ljava/lang/String;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_40

    move-result v1

    goto :goto_b

    .line 489
    :cond_3b
    sput-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 490
    sput-object v4, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_30

    .line 494
    :catch_40
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v1, :cond_48

    .line 496
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 498
    :cond_48
    const-string v1, "identifyWithDialog"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 500
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 931
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 933
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 934
    const-string v2, "isEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 944
    :goto_10
    return v1

    .line 939
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isEnrolledPermission(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 940
    :catch_18
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isEnrolledPermission"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public isSensorReady()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1397
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1399
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 1400
    const-string v2, "isSensorReady"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1410
    :goto_10
    return v1

    .line 1405
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->isSensorReady()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    goto :goto_10

    .line 1406
    :catch_18
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "isSensorReady"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public notifyAlternativePasswordBegin()V
    .registers 5

    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1484
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_10

    .line 1485
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1489
    :cond_10
    :try_start_10
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAlternativePasswordBegin()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    .line 1493
    :goto_15
    return-void

    .line 1490
    :catch_16
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAlternativePasswordBegin"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public notifyAppActivityState(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "extInfo"    # Landroid/os/Bundle;

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 781
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v1, :cond_11

    .line 782
    const-string/jumbo v1, "notifyAppActivityState"

    const/4 v2, 0x0

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 791
    :goto_10
    return-void

    .line 786
    :cond_11
    :try_start_11
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyApplicationState(ILandroid/os/Bundle;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_10

    .line 788
    :catch_17
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "notifyAppActivityState"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public notifyAuthSessionBegin()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1450
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1452
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1453
    const-string/jumbo v2, "notifyAuthSessionBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1462
    :goto_11
    return v1

    .line 1458
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionBegin()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1459
    :catch_19
    move-exception v0

    .line 1460
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyAuthSessionBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public notifyAuthSessionEnd()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1466
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1468
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1469
    const-string/jumbo v2, "notifyAuthSessionEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1478
    :goto_11
    return v1

    .line 1474
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyAuthSessionEnd()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1475
    :catch_19
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyAuthSessionEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public notifyEnrollBegin()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1414
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1416
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1417
    const-string/jumbo v2, "notifyEnrollBegin"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1428
    :goto_11
    return v1

    .line 1422
    :cond_12
    :try_start_12
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->setEnrollStatus()V

    .line 1423
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollBegin()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_11

    .line 1424
    :catch_1c
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->clearEnrollStatus()V

    .line 1426
    const-string/jumbo v2, "notifyEnrollBegin"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public notifyEnrollEnd()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1432
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1434
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->clearEnrollStatus()V

    .line 1436
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_15

    .line 1437
    const-string/jumbo v2, "notifyEnrollEnd"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1446
    :goto_14
    return v1

    .line 1442
    :cond_15
    :try_start_15
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->notifyEnrollEnd()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    goto :goto_14

    .line 1443
    :catch_1c
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "notifyEnrollEnd"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_14
.end method

.method public openTransaction(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1085
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1087
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1088
    const-string/jumbo v2, "openTransaction"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1098
    :goto_11
    return v1

    .line 1093
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->openTransaction(Landroid/os/IBinder;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 1094
    :catch_19
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "openTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public processFIDO(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "requestData"    # [B

    .prologue
    .line 645
    const-string v3, "FingerprintManager"

    const-string/jumbo v4, "processFIDO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, "responseData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_18

    .line 651
    const-string/jumbo v3, "processFIDO"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 670
    .end local v1    # "responseData":[B
    .local v2, "responseData":[B
    :goto_17
    return-object v2

    .line 656
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_18
    if-eqz p4, :cond_1f

    :try_start_1a
    array-length v3, p4

    if-eqz v3, :cond_1f

    if-nez p1, :cond_21

    :cond_1f
    move-object v2, v1

    .line 657
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_17

    .line 660
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :cond_21
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p2, v4, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->processFIDO(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)[B
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_2d

    move-result-object v1

    :cond_2b
    :goto_2b
    move-object v2, v1

    .line 670
    .end local v1    # "responseData":[B
    .restart local v2    # "responseData":[B
    goto :goto_17

    .line 661
    .end local v2    # "responseData":[B
    .restart local v1    # "responseData":[B
    :catch_2d
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "processFIDO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 664
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_2b

    .line 665
    const-string/jumbo v4, "processFIDO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", requestData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p4, :cond_74

    const-string v3, "NULL"

    :goto_68
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_2b

    :cond_74
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_68
.end method

.method public protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "unprotectedData"    # [B

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 558
    .local v1, "protectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_10

    .line 559
    const-string/jumbo v3, "protect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 578
    .end local v1    # "protectedData":[B
    .local v2, "protectedData":[B
    :goto_f
    return-object v2

    .line 564
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_10
    if-eqz p3, :cond_15

    :try_start_12
    array-length v3, p3

    if-nez v3, :cond_17

    :cond_15
    move-object v2, v1

    .line 565
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_f

    .line 568
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :cond_17
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->protect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1f

    move-result-object v1

    :cond_1d
    :goto_1d
    move-object v2, v1

    .line 578
    .end local v1    # "protectedData":[B
    .restart local v2    # "protectedData":[B
    goto :goto_f

    .line 569
    .end local v2    # "protectedData":[B
    .restart local v1    # "protectedData":[B
    :catch_1f
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "protect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 572
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_1d

    .line 573
    const-string/jumbo v4, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unprotectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_67

    const-string v3, ""

    :goto_5b
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1d

    :cond_67
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_5b
.end method

.method public reEnroll(Landroid/os/IBinder;I)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 318
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 319
    const-string/jumbo v2, "reenroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 329
    :goto_11
    return v1

    .line 324
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->reEnroll(Landroid/os/IBinder;I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 325
    :catch_19
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "reenroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 8
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpec"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 369
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 370
    const-string/jumbo v2, "registerClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 383
    :goto_10
    return-object v1

    .line 374
    :cond_11
    const-string/jumbo v2, "securityLevel"

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string/jumbo v2, "packageName"

    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :try_start_25
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_2c

    move-result-object v1

    goto :goto_10

    .line 379
    :catch_2c
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;)Landroid/os/IBinder;
    .registers 8
    .param p1, "client"    # Lcom/samsung/android/fingerprint/IFingerprintClient;
    .param p2, "clientSpecBuilder"    # Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 390
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 391
    const-string/jumbo v2, "registerClient"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 401
    :goto_10
    return-object v1

    .line 396
    :cond_11
    :try_start_11
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1c

    move-result-object v1

    goto :goto_10

    .line 397
    :catch_1c
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "registerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientSpec="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public removeAllEnrolledFingers()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 999
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1001
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1002
    const-string/jumbo v2, "removeAllEnrolledFingers"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1012
    :goto_11
    return v1

    .line 1007
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeAllEnrolledFingers(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1008
    :catch_1b
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeAllEnrolledFingers"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public removeEnrolledFinger(I)Z
    .registers 7
    .param p1, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 982
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 984
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 985
    const-string/jumbo v2, "removeEnrolledFinger"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 995
    :goto_11
    return v1

    .line 990
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledFinger(ILjava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 991
    :catch_1b
    move-exception v0

    .line 992
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledFinger"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "fingerIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 965
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 967
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 968
    const-string/jumbo v2, "removeEnrolledPermission"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 978
    :goto_11
    return v1

    .line 973
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 974
    :catch_19
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permissionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 948
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 950
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 951
    const-string/jumbo v2, "removeEnrolledPermissions"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 961
    :goto_11
    return v1

    .line 956
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->removeEnrolledPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 957
    :catch_19
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "removeEnrolledPermissions"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public secondaryEnroll(Landroid/os/IBinder;I)I
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerIndex"    # I

    .prologue
    const/4 v1, -0x1

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 335
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 336
    const-string/jumbo v2, "secondaryEnroll"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 346
    :goto_11
    return v1

    .line 341
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->secondaryEnroll(Landroid/os/IBinder;I)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 342
    :catch_19
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "secondaryEnroll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public setEnrollFinishResult(I)V
    .registers 2
    .param p1, "set"    # I

    .prologue
    .line 1245
    sput p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollFinishResult:I

    .line 1246
    return-void
.end method

.method public setIndexName(ILjava/lang/String;)Z
    .registers 8
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1558
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1560
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1561
    const-string/jumbo v2, "setIndexName"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1571
    :cond_11
    :goto_11
    return v1

    .line 1565
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_11

    .line 1566
    :cond_1e
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setIndexName(ILjava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_11

    .line 1568
    :catch_25
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setIndexName"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public setPassword(Ljava/lang/String;)Z
    .registers 7
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1516
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1518
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1519
    const-string/jumbo v2, "setPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1528
    :goto_11
    return v1

    .line 1524
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->setPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1b

    move-result v1

    goto :goto_11

    .line 1525
    :catch_1b
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;
    .registers 9
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z

    .prologue
    const/4 v1, 0x0

    .line 811
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 813
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_11

    .line 814
    const-string/jumbo v2, "showIdentifyDialog"

    const-string v3, "FingerprintService is not running!"

    invoke-direct {p0, v2, v1, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 859
    :goto_10
    return-object v1

    .line 818
    :cond_11
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3f

    move-object v1, p1

    .line 819
    check-cast v1, Landroid/app/Activity;

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    move-object v1, p1

    .line 820
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 821
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerActivityLifeCallback()V

    .line 845
    :goto_26
    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    sget v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mSecurityLevel:I

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .line 850
    :try_start_31
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->showIdentifyDialog(Landroid/os/IBinder;Ljava/lang/String;Z)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3c} :catch_44

    .line 859
    :goto_3c
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mIdentifyDialog:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    goto :goto_10

    .line 823
    :cond_3f
    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    .line 824
    sput-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerActivity:Landroid/app/Activity;

    goto :goto_26

    .line 852
    :catch_44
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/fingerprint/FingerprintManager;->mCallerApplication:Landroid/app/Application;

    if-eqz v1, :cond_4c

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterActivityLifeCallback()V

    .line 856
    :cond_4c
    const-string/jumbo v1, "showIdentifyDialog"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3c
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)Z
    .registers 5
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1357
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1362
    if-nez p1, :cond_c

    .line 1363
    const-string v1, "FingerprintManager"

    const-string v2, "ActivityContext is null!! startEnrollActivity need activityContext"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :goto_b
    return v0

    .line 1366
    :cond_c
    if-nez p2, :cond_16

    .line 1367
    const-string v1, "FingerprintManager"

    const-string v2, "Listener is null!! startEnrollActivity need EnrollFinishListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1370
    :cond_16
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26

    .line 1371
    :cond_1e
    const-string v1, "FingerprintManager"

    const-string v2, "Id parameter is needed. Please give a correct id."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1375
    :cond_26
    sput-object p1, Lcom/samsung/android/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1376
    sput-object p2, Lcom/samsung/android/fingerprint/FingerprintManager;->mEnrollListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1377
    sput-object p3, Lcom/samsung/android/fingerprint/FingerprintManager;->mStringId:Ljava/lang/String;

    .line 1379
    sput p4, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    .line 1381
    const-string v0, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startEnrollActivity: previousStage(mStringId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    .line 1386
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_70

    .line 1387
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move v0, v1

    .line 1388
    goto :goto_b

    .line 1391
    :cond_70
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V

    move v0, v1

    .line 1392
    goto :goto_b
.end method

.method public startSettingEnrollActivity(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;I)V
    .registers 10
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 1342
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;-><init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V

    .line 1343
    .local v0, "enrollFinishBroadcastReceiver":Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.fingerprint.action.ENROLL_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1346
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1347
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->START_ENROLL_ACTIVITY_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1348
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1349
    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_33

    .line 1350
    const-string/jumbo v3, "ownName"

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1352
    :cond_33
    const-string v3, "index"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1354
    return-void
.end method

.method public unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "protectedData"    # [B

    .prologue
    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, "unprotectedData":[B
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v3, :cond_10

    .line 585
    const-string/jumbo v3, "unprotect"

    const/4 v4, 0x0

    const-string v5, "FingerprintService is not running!"

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v2, v1

    .line 604
    .end local v1    # "unprotectedData":[B
    .local v2, "unprotectedData":[B
    :goto_f
    return-object v2

    .line 590
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_10
    if-eqz p3, :cond_15

    :try_start_12
    array-length v3, p3

    if-nez v3, :cond_17

    :cond_15
    move-object v2, v1

    .line 591
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_f

    .line 594
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :cond_17
    sget-object v3, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unprotect(Landroid/os/IBinder;Ljava/lang/String;[B)[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1f

    move-result-object v1

    :cond_1d
    :goto_1d
    move-object v2, v1

    .line 604
    .end local v1    # "unprotectedData":[B
    .restart local v2    # "unprotectedData":[B
    goto :goto_f

    .line 595
    .end local v2    # "unprotectedData":[B
    .restart local v1    # "unprotectedData":[B
    :catch_1f
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "unprotect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permissionName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 598
    sget-boolean v3, Lcom/samsung/android/fingerprint/FingerprintManager;->DEBUG:Z

    if-eqz v3, :cond_1d

    .line 599
    const-string/jumbo v4, "unprotect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", protectedData="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p3, :cond_66

    const-string v3, "NULL"

    :goto_5a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1d

    :cond_66
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, p3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_5a
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 442
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 443
    const-string/jumbo v2, "unregisterClient"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 453
    :goto_11
    return v1

    .line 448
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/fingerprint/IFingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_11

    .line 449
    :catch_19
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "unregisterClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1496
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->ensureServiceConnected()V

    .line 1498
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    if-nez v2, :cond_12

    .line 1499
    const-string/jumbo v2, "verifyPassword"

    const/4 v3, 0x0

    const-string v4, "FingerprintService is not running!"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1508
    :goto_11
    return v1

    .line 1504
    :cond_12
    :try_start_12
    sget-object v2, Lcom/samsung/android/fingerprint/FingerprintManager;->mService:Lcom/samsung/android/fingerprint/IFingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/fingerprint/FingerprintManager;->mOwnName:Ljava/lang/String;

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/samsung/android/fingerprint/IFingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_1f

    move-result v1

    goto :goto_11

    .line 1505
    :catch_1f
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "verifyPassword"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->verifyPassword(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
