.class public Lcom/android/keyguard/CameraWidgetFrame;
.super Lcom/android/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;,
        Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private mFakeNavBar:Landroid/view/View;

.field private mFullscreenPreview:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mInsets:Landroid/graphics/Rect;

.field private mLaunchCameraStart:J

.field private final mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTmpLoc:[I

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mUseFastTransition:Z

.field private final mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    .line 43
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p3, "activityLauncher"    # Lcom/android/keyguard/KeyguardActivityLauncher;
    .param p4, "widgetInfo"    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .param p5, "previewWidget"    # Landroid/view/View;

    .prologue
    const v3, 0x7f060068

    .line 146
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    .line 67
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    .line 74
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    .line 80
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    .line 97
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    .line 116
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 147
    iput-object p2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 148
    iput-object p3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 149
    iput-object p4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .line 150
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    .line 151
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 153
    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-direct {v1, p1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "clickBlocker":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    sget-boolean v1, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_ba

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new CameraWidgetFrame instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_ba
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->render()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/CameraWidgetFrame;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/CameraWidgetFrame;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CameraWidgetFrame;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/CameraWidgetFrame;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method private cancelTransitionToCamera()V
    .registers 5

    .prologue
    .line 433
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelTransitionToCamera at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callbacks"    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p2, "launcher"    # Lcom/android/keyguard/KeyguardActivityLauncher;

    .prologue
    const/4 v0, 0x0

    .line 169
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 179
    :cond_7
    :goto_7
    return-object v0

    .line 172
    :cond_8
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v4

    .line 173
    .local v4, "widgetInfo":Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    if-eqz v4, :cond_7

    .line 175
    invoke-static {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v5

    .line 176
    .local v5, "previewWidget":Landroid/view/View;
    if-eqz v5, :cond_7

    .line 179
    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V

    goto :goto_7
.end method

.method private enableWindowExitAnimation(Z)V
    .registers 10
    .param p1, "isEnabled"    # Z

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 483
    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 484
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_d

    .line 494
    :cond_c
    :goto_c
    return-void

    :cond_d
    move-object v3, v0

    .line 486
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 487
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_4b

    const v1, 0x7f0d0003

    .line 488
    .local v1, "newWindowAnimations":I
    :goto_15
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_c

    .line 489
    sget-boolean v4, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v4, :cond_43

    sget-object v4, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting windowAnimations to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_43
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 492
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    .line 487
    .end local v1    # "newWindowAnimations":I
    :cond_4b
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private static getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetInfo"    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .prologue
    .line 183
    iget v0, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v0, :cond_9

    invoke-static {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/android/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 211
    sget-boolean v1, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v2, "inflateGenericWidgetView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_c
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 213
    .local v0, "iv":Landroid/widget/ImageView;
    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 214
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    const/16 v1, 0x7f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 216
    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "widgetInfo"    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    .prologue
    .line 189
    sget-boolean v5, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v5, :cond_1e

    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inflateWidgetView: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1e
    const/4 v4, 0x0

    .line 191
    .local v4, "widgetView":Landroid/view/View;
    const/4 v3, 0x0

    .line 193
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_20
    iget-object v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 195
    .local v0, "cameraContext":Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 197
    .local v1, "cameraInflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 198
    iget v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_3a} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_3a} :catch_48

    move-result-object v4

    .line 204
    .end local v0    # "cameraContext":Landroid/content/Context;
    .end local v1    # "cameraInflater":Landroid/view/LayoutInflater;
    :goto_3b
    if-eqz v3, :cond_44

    .line 205
    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    :cond_44
    return-object v4

    .line 199
    :catch_45
    move-exception v2

    .line 200
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    .line 203
    goto :goto_3b

    .line 201
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_48
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_3b
.end method

.method private instanceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onCameraLaunched()V
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    .line 439
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    .line 440
    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .registers 11
    .param p1, "showing"    # Z

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 497
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyguardVisibilityChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2d
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_67

    if-nez p1, :cond_67

    .line 500
    iput-boolean v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 501
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    iget-wide v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_67

    .line 503
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    .line 504
    .local v0, "launchTime":J
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_62

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v3, "Camera took %sms to launch"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_62
    iput-wide v7, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 506
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    .line 509
    .end local v0    # "launchTime":J
    :cond_67
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .registers 5

    .prologue
    .line 512
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSecureCameraActivityStarted at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    return-void
.end method

.method private recover()V
    .registers 5

    .prologue
    .line 350
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recovering at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    .line 352
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    .line 353
    return-void
.end method

.method private render()V
    .registers 21

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 221
    .local v10, "root":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int v13, v14, v15

    .line 222
    .local v13, "width":I
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v14, v15

    .line 223
    .local v1, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    if-ne v14, v13, :cond_6f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    if-ne v14, v1, :cond_6f

    .line 224
    sget-boolean v14, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v14, :cond_6e

    sget-object v14, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v15, "Already rendered at size=%sx%s %d%%"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x42c80000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleX()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6e
    :goto_6e
    return-void

    .line 228
    :cond_6f
    if-eqz v13, :cond_6e

    if-eqz v1, :cond_6e

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v13, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v1, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->requestLayout()V

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int v12, v14, v15

    .line 237
    .local v12, "thisWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    sub-int v11, v14, v15

    .line 239
    .local v11, "thisHeight":I
    int-to-float v14, v12

    int-to-float v15, v13

    div-float v5, v14, v15

    .line 240
    .local v5, "pvScaleX":F
    int-to-float v14, v11

    int-to-float v15, v1

    div-float v6, v14, v15

    .line 241
    .local v6, "pvScaleY":F
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 243
    .local v4, "pvScale":F
    int-to-float v14, v13

    mul-float/2addr v14, v4

    float-to-int v9, v14

    .line 244
    .local v9, "pvWidth":I
    int-to-float v14, v1

    mul-float/2addr v14, v4

    float-to-int v3, v14

    .line 246
    .local v3, "pvHeight":I
    if-ge v9, v12, :cond_15c

    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    int-to-float v7, v14

    .line 247
    .local v7, "pvTransX":F
    :goto_bd
    if-ge v3, v11, :cond_15f

    sub-int v14, v11, v3

    div-int/lit8 v14, v14, 0x2

    int-to-float v8, v14

    .line 249
    .local v8, "pvTransY":F
    :goto_c4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_162

    const/4 v2, 0x1

    .line 250
    .local v2, "isRtl":Z
    :goto_d0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v2, :cond_165

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget v14, v14, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    int-to-float v14, v14

    :goto_dd
    invoke-virtual {v15, v14}, Landroid/view/View;->setPivotX(F)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setPivotY(F)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v4}, Landroid/view/View;->setScaleX(F)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v4}, Landroid/view/View;->setScaleY(F)V

    .line 254
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v2, :cond_168

    const/4 v14, -0x1

    :goto_fd
    int-to-float v14, v14

    mul-float/2addr v14, v7

    invoke-virtual {v15, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v14, v13, v1}, Landroid/graphics/Point;->set(II)V

    .line 258
    sget-boolean v14, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v14, :cond_6e

    sget-object v14, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v15, "Rendered camera widget size=%sx%s %d%% instance=%s"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const/high16 v18, 0x42c80000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getScaleX()F

    move-result v19

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 246
    .end local v2    # "isRtl":Z
    .end local v7    # "pvTransX":F
    .end local v8    # "pvTransY":F
    :cond_15c
    const/4 v7, 0x0

    goto/16 :goto_bd

    .line 247
    .restart local v7    # "pvTransX":F
    :cond_15f
    const/4 v8, 0x0

    goto/16 :goto_c4

    .line 249
    .restart local v8    # "pvTransY":F
    :cond_162
    const/4 v2, 0x0

    goto/16 :goto_d0

    .line 250
    .restart local v2    # "isRtl":Z
    :cond_165
    const/4 v14, 0x0

    goto/16 :goto_dd

    .line 254
    :cond_168
    const/4 v14, 0x1

    goto :goto_fd
.end method

.method private rescheduleTransitionToCamera()V
    .registers 7

    .prologue
    .line 426
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_20

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rescheduleTransitionToCamera at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_20
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    if-eqz v2, :cond_35

    const-wide/16 v0, 0x0

    .line 429
    .local v0, "duration":J
    :goto_2d
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    return-void

    .line 428
    .end local v0    # "duration":J
    :cond_35
    const-wide/16 v0, 0x190

    goto :goto_2d
.end method

.method private reset()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 443
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    .line 445
    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 446
    iput-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    .line 447
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 448
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-eqz v0, :cond_4c

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 454
    :cond_4c
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-eqz v0, :cond_5e

    .line 455
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 456
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 458
    :cond_5e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 459
    return-void
.end method

.method private transitionToCamera()V
    .registers 18

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v12, :cond_d

    .line 347
    :cond_c
    :goto_c
    return-void

    .line 265
    :cond_d
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 267
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    .line 270
    .local v7, "navHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v8, v12, Landroid/graphics/Rect;->right:I

    .line 272
    .local v8, "navWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {v12, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Landroid/view/View;->getScaleY()F

    move-result v13

    mul-float v10, v12, v13

    .line 274
    .local v10, "pvHeight":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float v13, v10, v13

    add-float v9, v12, v13

    .line 276
    .local v9, "pvCenter":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 278
    .local v11, "root":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreImplementationForTest()Z

    move-result v12

    if-eqz v12, :cond_6b

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    const v13, 0x7f0b0082

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "root":Landroid/view/ViewGroup;
    check-cast v11, Landroid/view/ViewGroup;

    .line 282
    .restart local v11    # "root":Landroid/view/ViewGroup;
    :cond_6b
    sget-boolean v12, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v12, :cond_b5

    .line 283
    sget-object v12, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "root = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_b5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-nez v12, :cond_e9

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-static {v12, v13}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    .line 289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setClickable(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v8

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v15, v7

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    :cond_e9
    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v12, v7

    int-to-float v3, v12

    .line 296
    .local v3, "fsHeight":F
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float v13, v3, v13

    add-float v2, v12, v13

    .line 298
    .local v2, "fsCenter":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v12}, Landroid/view/View;->getScaleY()F

    move-result v5

    .line 299
    .local v5, "fsScaleY":F
    sub-float v6, v9, v2

    .line 300
    .local v6, "fsTransY":F
    move v4, v5

    .line 302
    .local v4, "fsScaleX":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 305
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setScaleX(F)V

    .line 306
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12, v5}, Landroid/view/View;->setScaleY(F)V

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 317
    if-gtz v7, :cond_15e

    if-lez v8, :cond_1e6

    .line 318
    :cond_15e
    if-lez v7, :cond_1ef

    const/4 v1, 0x1

    .line 319
    .local v1, "atBottom":Z
    :goto_161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-nez v12, :cond_1a8

    .line 320
    new-instance v12, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, -0x1000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1f2

    const/4 v12, -0x1

    move v14, v12

    :goto_187
    if-eqz v1, :cond_1f4

    move v13, v7

    :goto_18a
    if-eqz v1, :cond_1f7

    const/16 v12, 0x57

    :goto_18e
    move-object/from16 v0, v16

    invoke-direct {v0, v14, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v13, v7

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotY(F)V

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v13, v8

    invoke-virtual {v12, v13}, Landroid/view/View;->setPivotX(F)V

    .line 332
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setAlpha(F)V

    .line 333
    if-eqz v1, :cond_1fa

    .line 334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, 0x3f000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleY(F)V

    .line 338
    :goto_1bb
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/high16 v13, 0x3f800000

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 346
    .end local v1    # "atBottom":Z
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v12}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_c

    .line 318
    :cond_1ef
    const/4 v1, 0x0

    goto/16 :goto_161

    .restart local v1    # "atBottom":Z
    :cond_1f2
    move v14, v8

    .line 322
    goto :goto_187

    :cond_1f4
    const/4 v12, -0x1

    move v13, v12

    goto :goto_18a

    :cond_1f7
    const/16 v12, 0x75

    goto :goto_18e

    .line 336
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v13, 0x3f000000

    invoke-virtual {v12, v13}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1bb
.end method


# virtual methods
.method public onActive(Z)V
    .registers 3
    .param p1, "isActive"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    .line 383
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_a

    .line 384
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 388
    :goto_9
    return-void

    .line 386
    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_9
.end method

.method public onBouncerShowing(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .prologue
    .line 475
    if-eqz p1, :cond_c

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_b
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_10

    .line 368
    :cond_f
    :goto_f
    return-void

    .line 364
    :cond_10
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_f

    .line 365
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 366
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->instanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_2e
    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    .line 375
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 376
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method protected onFocusLost()V
    .registers 5

    .prologue
    .line 415
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusLost at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_20
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    .line 417
    invoke-super {p0}, Landroid/view/View;->onFocusLost()V

    .line 418
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 421
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    .line 423
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 463
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v1, "onSizeChanged new=%sx%s old=%sx%s at %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_39
    if-eq p1, p3, :cond_3d

    if-gtz p3, :cond_41

    :cond_3d
    if-eq p2, p4, :cond_4a

    if-lez p4, :cond_4a

    .line 467
    :cond_41
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 469
    :cond_4a
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    .line 471
    return-void
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    iget-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_12

    .line 393
    sget-boolean v3, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: mTransitioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_11
    :goto_11
    return v2

    .line 397
    :cond_12
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 398
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 399
    .local v1, "rawBottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_36

    .line 400
    sget-boolean v3, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction eaten: below widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 404
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 405
    .local v0, "action":I
    if-eqz v0, :cond_3f

    const/4 v4, 0x2

    if-ne v0, v4, :cond_55

    :cond_3f
    :goto_3f
    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    .line 406
    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_48

    .line 407
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    .line 409
    :cond_48
    sget-boolean v2, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v2, :cond_53

    sget-object v2, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v4, "onUserInteraction observed, not eaten"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    move v2, v3

    .line 410
    goto :goto_11

    :cond_55
    move v2, v3

    .line 405
    goto :goto_3f
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 521
    sget-boolean v0, Lcom/android/keyguard/CameraWidgetFrame;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInsets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1c
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 523
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 358
    return-void
.end method

.method public setUseFastTransition(Z)V
    .registers 2
    .param p1, "useFastTransition"    # Z

    .prologue
    .line 526
    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    .line 527
    return-void
.end method
