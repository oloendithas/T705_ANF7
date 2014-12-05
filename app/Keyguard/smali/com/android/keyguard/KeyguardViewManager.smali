.class public Lcom/android/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static USE_UPPER_CASE:Z


# instance fields
.field private mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mPanelOrientation:I

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportBitmapEnabled:Z

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .param p4, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z

    .line 102
    iput v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mPanelOrientation:I

    .line 106
    new-instance v0, Lcom/android/keyguard/KeyguardViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/keyguard/KeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 363
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    .line 160
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 162
    iput-object p3, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 163
    iput-object p4, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    const-string v0, "persist.panel.orientation"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mPanelOrientation:I

    .line 167
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardViewManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardViewManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardViewManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0b0082

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 444
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 445
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_12

    .line 446
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 448
    :cond_12
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 451
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->widgetsDisabled()Z

    move-result v5

    if-nez v5, :cond_ba

    .line 455
    :cond_2a
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 456
    .local v1, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v5, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "securityModel.getSecurityMode() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v5

    if-eqz v5, :cond_b0

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v5, :cond_56

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v5, :cond_b0

    .line 461
    :cond_56
    const v5, 0x7f03004d

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 468
    .end local v1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .local v3, "view":Landroid/view/View;
    :goto_5f
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardHostView;

    iput-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 469
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 470
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v5, v8}, Lcom/android/keyguard/KeyguardViewBase;->setViewMediatorCallback(Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 471
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz p1, :cond_c4

    const-string v5, "is_switching_user"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    move v5, v6

    :goto_82
    invoke-virtual {v8, v5}, Lcom/android/keyguard/KeyguardHostView;->initializeSwitchingUserState(Z)V

    .line 485
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v5

    if-eqz v5, :cond_a0

    .line 486
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 488
    :cond_a0
    if-eqz p1, :cond_af

    .line 489
    const-string v5, "showappwidget"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 491
    .local v4, "widgetToShow":I
    if-eqz v4, :cond_af

    .line 492
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardHostView;->goToWidget(I)V

    .line 495
    .end local v4    # "widgetToShow":I
    :cond_af
    return-void

    .line 463
    .end local v3    # "view":Landroid/view/View;
    .restart local v1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_b0
    const v5, 0x7f030015

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_5f

    .line 466
    .end local v1    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .end local v3    # "view":Landroid/view/View;
    :cond_ba
    const v5, 0x7f03004e

    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_5f

    :cond_c4
    move v5, v7

    .line 471
    goto :goto_82
.end method

.method private isWidgetEnabled()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 771
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 772
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kg_multiple_lockscreen"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_18

    .line 775
    :goto_17
    return v0

    :cond_18
    move v0, v1

    .line 772
    goto :goto_17

    .line 775
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v0

    goto :goto_17
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .registers 14
    .param p1, "enableScreenRotation"    # Z
    .param p2, "force"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v1, -0x1

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_e

    .line 368
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 371
    :cond_e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_de

    .line 372
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "keyguard host is null, creating it..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 376
    const v4, 0x110900

    .line 381
    .local v4, "flags":I
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_2c

    .line 382
    const/high16 v2, 0x20000

    or-int/2addr v4, v2

    .line 385
    :cond_2c
    const/4 v7, -0x1

    .line 386
    .local v7, "stretch":I
    const/16 v8, 0x7d4

    .line 387
    .local v8, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 389
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 390
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 394
    :goto_42
    const v2, 0x7f0d0003

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 395
    if-eqz p1, :cond_118

    .line 396
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Rotation sensor for lock screen On!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    if-ne v2, v9, :cond_111

    .line 398
    .local v6, "UseQwertyKeypad":Z
    :goto_5e
    if-eqz v6, :cond_114

    .line 399
    const/4 v2, 0x5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 408
    .end local v6    # "UseQwertyKeypad":Z
    :goto_63
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 409
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 410
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 413
    :cond_76
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 414
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 415
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 416
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 417
    const-string v2, "Keyguard"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 419
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 422
    new-instance v2, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    .line 423
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 424
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getForegroundLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 426
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getKeyguardHostView(Landroid/widget/FrameLayout;)V

    .line 428
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mBackgroundChanger:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 431
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v7    # "stretch":I
    .end local v8    # "type":I
    :cond_de
    if-nez p2, :cond_e4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-nez v1, :cond_f7

    .line 432
    :cond_e4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 434
    invoke-direct {p0, p3}, Lcom/android/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    .line 435
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 437
    :cond_f7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 438
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 441
    return-void

    .line 392
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "flags":I
    .restart local v7    # "stretch":I
    .restart local v8    # "type":I
    :cond_10b
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto/16 :goto_42

    .line 397
    :cond_111
    const/4 v6, 0x0

    goto/16 :goto_5e

    .line 401
    .restart local v6    # "UseQwertyKeypad":Z
    :cond_114
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_63

    .line 404
    .end local v6    # "UseQwertyKeypad":Z
    :cond_118
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Rotation sensor for lock screen Off!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto/16 :goto_63
.end method

.method private maybeEnableScreenRotation(Z)V
    .registers 5
    .param p1, "enableScreenRotation"    # Z

    .prologue
    .line 548
    if-eqz p1, :cond_18

    .line 549
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen On!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 555
    :goto_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    return-void

    .line 552
    :cond_18
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Rotation sensor for lock screen Off!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_e
.end method

.method private shouldEnableScreenRotation()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 218
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_17

    const/high16 v2, 0x7f080000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private shouldEnableTranslucentDecor()Z
    .registers 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 506
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v10, :cond_17

    .line 507
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardHostView;->getUserActivityTimeout()J

    move-result-wide v6

    .line 508
    .local v6, "timeout":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_17

    .line 509
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v6, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 544
    .end local v6    # "timeout":J
    :goto_16
    return-void

    .line 515
    :cond_17
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "intelligent_sleep_mode"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9d

    move v5, v8

    .line 517
    .local v5, "isSmartStayOn":Z
    :goto_26
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "psm_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9f

    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "powersaving_switch"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_9f

    move v4, v8

    .line 520
    .local v4, "isPowerSavingOn":Z
    :goto_43
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v10

    if-eqz v10, :cond_6e

    if-eqz v4, :cond_6e

    .line 521
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "isLowLevel"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_a1

    move v3, v8

    .line 522
    .local v3, "isLowLevel":Z
    :goto_5a
    iget-object v10, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "psm_auto_turn_on"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_a3

    move v2, v8

    .line 524
    .local v2, "isAutoEnable":Z
    :goto_69
    if-eqz v2, :cond_6e

    if-nez v3, :cond_6e

    .line 525
    const/4 v4, 0x0

    .line 529
    .end local v2    # "isAutoEnable":Z
    .end local v3    # "isLowLevel":Z
    :cond_6e
    const-wide/16 v0, 0x2710

    .line 530
    .local v0, "displayTimeout":J
    if-ne v5, v8, :cond_78

    const-wide/16 v9, 0x1388

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 532
    .restart local v0    # "displayTimeout":J
    if-ne v4, v8, :cond_88

    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .end local v0    # "displayTimeout":J
    :cond_88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 535
    .restart local v0    # "displayTimeout":J
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_a5

    .line 536
    sget-object v8, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v9, "mWindowLayoutParams is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .end local v0    # "displayTimeout":J
    .end local v4    # "isPowerSavingOn":Z
    .end local v5    # "isSmartStayOn":Z
    :cond_9d
    move v5, v9

    .line 515
    goto :goto_26

    .restart local v5    # "isSmartStayOn":Z
    :cond_9f
    move v4, v9

    .line 517
    goto :goto_43

    .restart local v4    # "isPowerSavingOn":Z
    :cond_a1
    move v3, v9

    .line 521
    goto :goto_5a

    .restart local v3    # "isLowLevel":Z
    :cond_a3
    move v2, v9

    .line 522
    goto :goto_69

    .line 539
    .end local v3    # "isLowLevel":Z
    .restart local v0    # "displayTimeout":J
    :cond_a5
    sget-object v8, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v9, "mWindowLayoutParams not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 543
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v8, Landroid/view/WindowManager$LayoutParams;->buttonLightTimeout:J

    goto/16 :goto_16
.end method

.method private widgetsDisabled()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 756
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 757
    .local v5, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    .line 758
    .local v4, "disabledFeatures":I
    const/4 v1, 0x0

    .line 759
    .local v1, "disabledByDpm":Z
    if-eqz v5, :cond_20

    .line 760
    iget-object v8, p0, Lcom/android/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 761
    .local v0, "currentUser":I
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v4

    .line 762
    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_33

    move v1, v6

    .line 764
    .end local v0    # "currentUser":I
    :cond_20
    :goto_20
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    .line 765
    .local v2, "disabledByLowRamDevice":Z
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->isWidgetEnabled()Z

    move-result v8

    if-nez v8, :cond_35

    move v3, v6

    .line 766
    .local v3, "disabledByUser":Z
    :goto_2b
    if-nez v2, :cond_31

    if-nez v1, :cond_31

    if-eqz v3, :cond_32

    :cond_31
    move v7, v6

    :cond_32
    return v7

    .end local v2    # "disabledByLowRamDevice":Z
    .end local v3    # "disabledByUser":Z
    .restart local v0    # "currentUser":I
    :cond_33
    move v1, v7

    .line 762
    goto :goto_20

    .end local v0    # "currentUser":I
    .restart local v2    # "disabledByLowRamDevice":Z
    :cond_35
    move v3, v7

    .line 765
    goto :goto_2b
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .registers 2

    .prologue
    .line 718
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_e

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_e

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 723
    :cond_e
    monitor-exit p0

    return-void

    .line 718
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_9

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardHostView;->dispatch(Landroid/view/MotionEvent;)V

    .line 742
    :cond_9
    return-void
.end method

.method public declared-synchronized hide()V
    .registers 6

    .prologue
    .line 681
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2d

    .line 684
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 693
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_2d

    .line 694
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 695
    .local v0, "lastView":Lcom/android/keyguard/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    .line 696
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/keyguard/KeyguardViewManager$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardViewManager$3;-><init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    .end local v0    # "lastView":Lcom/android/keyguard/KeyguardViewBase;
    :cond_2d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->cleanUp()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 712
    monitor-exit p0

    return-void

    .line 681
    :catchall_38
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .registers 2

    .prologue
    .line 729
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launchCamera()V
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->launchCamera()V

    .line 748
    :cond_9
    return-void
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 612
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_14

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onScreenTurnedOff()V

    .line 618
    :cond_14
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->screenTurnedOff()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 619
    monitor-exit p0

    return-void

    .line 612
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 622
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "onScreenTurnedOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 627
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_68

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 629
    .local v1, "token":Landroid/os/IBinder;
    :goto_17
    if-nez v1, :cond_37

    sget-object v3, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send wm null token: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_6a

    const-string v2, "host was null"

    :goto_2c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_37
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v2, :cond_7d

    .line 633
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->onScreenTurnedOn()V

    .line 637
    if-eqz p1, :cond_54

    .line 638
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6d

    .line 641
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/keyguard/KeyguardViewManager$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/keyguard/KeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 667
    :cond_54
    :goto_54
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->screenTurnedOn()V

    .line 668
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->showUnlockAffordance()V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_7a

    .line 669
    :cond_66
    monitor-exit p0

    return-void

    .line 627
    .end local v1    # "token":Landroid/os/IBinder;
    :cond_68
    const/4 v1, 0x0

    goto :goto_17

    .line 629
    .restart local v1    # "token":Landroid/os/IBinder;
    :cond_6a
    :try_start_6a
    const-string v2, "not showing"
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_7a

    goto :goto_2c

    .line 653
    :cond_6d
    :try_start_6d
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_7a

    goto :goto_54

    .line 654
    :catch_71
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_72
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling onShown():"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_7a

    goto :goto_54

    .line 622
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "token":Landroid/os/IBinder;
    :catchall_7a
    move-exception v2

    monitor-exit p0

    throw v2

    .line 659
    .restart local v1    # "token":Landroid/os/IBinder;
    :cond_7d
    if-eqz p1, :cond_54

    .line 661
    :try_start_7f
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_7a

    goto :goto_54

    .line 662
    :catch_83
    move-exception v0

    .line 663
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_84
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception calling onShown():"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_7a

    goto :goto_54
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 600
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 604
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->reset()V

    .line 605
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKFeature()Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_25
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 609
    :cond_40
    monitor-exit p0

    return-void

    .line 600
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .registers 6
    .param p1, "needsInput"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 578
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1b

    .line 579
    if-eqz p1, :cond_1c

    .line 580
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 588
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1b} :catch_26

    .line 594
    :cond_1b
    :goto_1b
    return-void

    .line 583
    :cond_1c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_12

    .line 589
    :catch_26
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show(); mKeyguardView=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    .line 179
    .local v0, "enableScreenRotation":Z
    iget v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mPanelOrientation:I

    if-eqz v2, :cond_24

    .line 182
    const/4 v0, 0x0

    .line 185
    :cond_24
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    .line 192
    const/high16 v1, 0x2200000

    .line 193
    .local v1, "visFlags":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->shouldEnableTranslucentDecor()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 194
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0xc000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 197
    :cond_3c
    sget-object v2, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:setSystemUiVisibility("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->isFestivalActivated()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 201
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 206
    :goto_74
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    .line 208
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->show()V

    .line 211
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 213
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->show()V
    :try_end_9a
    .catchall {:try_start_1 .. :try_end_9a} :catchall_a4

    .line 214
    monitor-exit p0

    return-void

    .line 203
    :cond_9c
    :try_start_9c
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x7f0d0003

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_a4

    goto :goto_74

    .line 175
    .end local v0    # "enableScreenRotation":Z
    .end local v1    # "visFlags":I
    :catchall_a4
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showAssistant()V
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_9

    .line 734
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->showAssistant()V

    .line 736
    :cond_9
    return-void
.end method

.method updateShowWallpaper(Z)V
    .registers 6
    .param p1, "show"    # Z

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_18

    .line 560
    if-eqz p1, :cond_19

    .line 561
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 567
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_18} :catch_24

    .line 574
    :cond_18
    :goto_18
    return-void

    .line 563
    :cond_19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_f

    .line 568
    :catch_24
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public updateUserActivityTimeout()V
    .registers 4

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 499
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_10
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .registers 3

    .prologue
    .line 672
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "verifyUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 674
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->verifyUnlock()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 675
    monitor-exit p0

    return-void

    .line 672
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
