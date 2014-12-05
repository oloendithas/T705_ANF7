.class public abstract Lcom/android/keyguard/KeyguardActivityLauncher;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const-class v0, Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardActivityLauncher;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->dismissKeyguardOnNextActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardActivityLauncher;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/os/Handler;
    .param p4, "x4"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private dismissKeyguardOnNextActivity()V
    .registers 4

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 221
    :goto_7
    return-void

    .line 218
    :catch_8
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v2, "can\'t dismiss keyguard on launch"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_c
.end method

.method private startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "worker"    # Landroid/os/Handler;
    .param p4, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 225
    new-instance v4, Landroid/os/UserHandle;

    const/4 v0, -0x2

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 226
    .local v4, "user":Landroid/os/UserHandle;
    if-eqz p3, :cond_a

    if-nez p4, :cond_12

    .line 227
    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 261
    :goto_11
    return-void

    .line 231
    :cond_12
    new-instance v0, Lcom/android/keyguard/KeyguardActivityLauncher$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher$2;-><init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method private wouldLaunchResolverActivity(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v4, 0x10000

    .line 268
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 271
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    return v3
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .registers 7
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    .line 280
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 283
    const/4 v2, 0x0

    .line 286
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_2a
    return v2

    .line 279
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_2e
    const/4 v2, 0x1

    goto :goto_2a
.end method


# virtual methods
.method public abstract getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
.end method

.method public getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 71
    new-instance v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-direct {v1}, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;-><init>()V

    .line 72
    .local v1, "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    .line 73
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 74
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v7, 0x10000

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 76
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_33

    .line 77
    sget-boolean v7, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v7, :cond_31

    sget-object v7, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v8, "getCameraWidgetInfo(): Nothing found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object v1, v6

    .line 102
    .end local v1    # "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    :cond_32
    :goto_32
    return-object v1

    .line 80
    .restart local v1    # "info":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    :cond_33
    const v7, 0x10080

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v4, v2, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 83
    .local v5, "resolved":Landroid/content/pm/ResolveInfo;
    sget-boolean v7, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v7, :cond_5e

    sget-object v7, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCameraWidgetInfo(): resolved: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_5e
    invoke-direct {p0, v5, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 85
    sget-boolean v6, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v6, :cond_32

    sget-object v6, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v7, "getCameraWidgetInfo(): Would launch resolver"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 88
    :cond_70
    if-eqz v5, :cond_76

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_78

    :cond_76
    move-object v1, v6

    .line 89
    goto :goto_32

    .line 91
    :cond_78
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_88

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_94

    .line 92
    :cond_88
    sget-boolean v6, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v6, :cond_32

    sget-object v6, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v7, "getCameraWidgetInfo(): no metadata found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 95
    :cond_94
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.android.keyguard.layout"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    .local v3, "layoutId":I
    if-nez v3, :cond_ac

    .line 97
    sget-boolean v6, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v6, :cond_32

    sget-object v6, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v7, "getCameraWidgetInfo(): no layout specified"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 100
    :cond_ac
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    .line 101
    iput v3, v1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    goto/16 :goto_32
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
.end method

.method public isPreferedActivity(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showsWhileLocked"    # Z
    .param p3, "useDefaultAnimations"    # Z
    .param p4, "worker"    # Landroid/os/Handler;
    .param p5, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 167
    .local v6, "context":Landroid/content/Context;
    if-eqz p3, :cond_11

    const/4 v3, 0x0

    .local v3, "animation":Landroid/os/Bundle;
    :goto_8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 170
    return-void

    .line 167
    .end local v3    # "animation":Landroid/os/Bundle;
    :cond_11
    invoke-static {v6, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_8
.end method

.method public launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "showsWhileLocked"    # Z
    .param p3, "animation"    # Landroid/os/Bundle;
    .param p4, "worker"    # Landroid/os/Handler;
    .param p5, "onStarted"    # Ljava/lang/Runnable;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 179
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const-string v0, "createdByLockscreen"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v8

    .line 188
    .local v8, "isSecure":Z
    if-eqz v8, :cond_17

    if-eqz p2, :cond_5e

    .line 189
    :cond_17
    if-nez v8, :cond_1c

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->dismissKeyguardOnNextActivity()V

    .line 193
    :cond_1c
    :try_start_1c
    sget-boolean v0, Lcom/android/keyguard/KeyguardActivityLauncher;->DEBUG:Z

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    const-string v1, "Starting activity for intent %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_3c
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_3f} :catch_40

    .line 213
    :goto_3f
    return-void

    .line 196
    :catch_40
    move-exception v7

    .line 197
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity not found for intent + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 202
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_5e
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v6

    .line 203
    .local v6, "callback":Lcom/android/keyguard/KeyguardSecurityCallback;
    new-instance v0, Lcom/android/keyguard/KeyguardActivityLauncher$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher$1;-><init>(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-interface {v6, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 211
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_3f
.end method

.method public launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 13
    .param p1, "worker"    # Landroid/os/Handler;
    .param p2, "onSecureCameraStarted"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    .line 110
    .local v9, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 112
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v0, :cond_37

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 114
    sget-object v0, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardActivityLauncher;->wouldLaunchResolverActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 119
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 127
    :goto_2b
    return-void

    .line 121
    :cond_2c
    sget-object v4, Lcom/android/keyguard/KeyguardActivityLauncher;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    const/4 v5, 0x1

    move-object v3, p0

    move v6, v2

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_2b

    .line 125
    :cond_37
    sget-object v1, Lcom/android/keyguard/KeyguardActivityLauncher;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_2b
.end method

.method public launchWidgetPicker(I)V
    .registers 9
    .param p1, "appWidgetId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.KEYGUARD_APPWIDGET_PICK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "pickIntent":Landroid/content/Intent;
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v0, "customSort"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const-string v0, "categoryFilter"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v6, "options":Landroid/os/Bundle;
    const-string v0, "appWidgetCategory"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v0, "appWidgetOptions"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    const/high16 v0, 0x34800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    .line 147
    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method
