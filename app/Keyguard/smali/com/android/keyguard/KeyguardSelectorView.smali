.class public Lcom/android/keyguard/KeyguardSelectorView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSelectorView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private mFadeView:Landroid/view/View;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIsBouncing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mSearchDisabled:Z

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardSelectorView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/android/keyguard/KeyguardSelectorView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSelectorView$1;-><init>(Lcom/android/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 112
    new-instance v0, Lcom/android/keyguard/KeyguardSelectorView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSelectorView$2;-><init>(Lcom/android/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 125
    new-instance v0, Lcom/android/keyguard/KeyguardSelectorView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSelectorView$3;-><init>(Lcom/android/keyguard/KeyguardSelectorView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSelectorView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSelectorView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSelectorView;->updateTargets()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSelectorView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSelectorView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSelectorView;

    .prologue
    .line 43
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateTargets()V
    .registers 16

    .prologue
    .line 177
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    .line 178
    .local v2, "currentUserHandle":I
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    .line 179
    .local v6, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v5

    .line 180
    .local v5, "disabledFeatures":I
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-eqz v11, :cond_8a

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_8a

    const/4 v10, 0x1

    .line 182
    .local v10, "secureCameraDisabled":Z
    :goto_1e
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v11

    if-nez v11, :cond_27

    if-eqz v10, :cond_8c

    :cond_27
    const/4 v0, 0x1

    .line 184
    .local v0, "cameraDisabledByAdmin":Z
    :goto_28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 185
    .local v7, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v4

    .line 186
    .local v4, "disabledBySimState":Z
    const v11, 0x7f0200a8

    invoke-virtual {p0, v11}, Lcom/android/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v1

    .line 188
    .local v1, "cameraTargetPresent":Z
    const v11, 0x7f0200a0

    invoke-virtual {p0, v11}, Lcom/android/keyguard/KeyguardSelectorView;->isTargetPresent(I)Z

    move-result v9

    .line 191
    .local v9, "searchTargetPresent":Z
    if-eqz v0, :cond_8e

    .line 192
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Device Policy"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_4b
    :goto_4b
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "user_setup_complete"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_98

    const/4 v3, 0x1

    .line 201
    .local v3, "currentUserSetup":Z
    :goto_5b
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v12, "search"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/SearchManager;

    iget-object v12, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_9a

    const/4 v8, 0x1

    .line 204
    .local v8, "searchActionAvailable":Z
    :goto_70
    if-nez v0, :cond_78

    if-nez v4, :cond_78

    if-eqz v1, :cond_78

    if-nez v3, :cond_9c

    :cond_78
    const/4 v11, 0x1

    :goto_79
    iput-boolean v11, p0, Lcom/android/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    .line 206
    if-nez v4, :cond_83

    if-eqz v8, :cond_83

    if-eqz v9, :cond_83

    if-nez v3, :cond_9e

    :cond_83
    const/4 v11, 0x1

    :goto_84
    iput-boolean v11, p0, Lcom/android/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSelectorView;->updateResources()V

    .line 209
    return-void

    .line 180
    .end local v0    # "cameraDisabledByAdmin":Z
    .end local v1    # "cameraTargetPresent":Z
    .end local v3    # "currentUserSetup":Z
    .end local v4    # "disabledBySimState":Z
    .end local v7    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v8    # "searchActionAvailable":Z
    .end local v9    # "searchTargetPresent":Z
    .end local v10    # "secureCameraDisabled":Z
    :cond_8a
    const/4 v10, 0x0

    goto :goto_1e

    .line 182
    .restart local v10    # "secureCameraDisabled":Z
    :cond_8c
    const/4 v0, 0x0

    goto :goto_28

    .line 193
    .restart local v0    # "cameraDisabledByAdmin":Z
    .restart local v1    # "cameraTargetPresent":Z
    .restart local v4    # "disabledBySimState":Z
    .restart local v7    # "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .restart local v9    # "searchTargetPresent":Z
    :cond_8e
    if-eqz v4, :cond_4b

    .line 194
    const-string v11, "SecuritySelectorView"

    const-string v12, "Camera disabled by Sim State"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 196
    :cond_98
    const/4 v3, 0x0

    goto :goto_5b

    .line 201
    .restart local v3    # "currentUserSetup":Z
    :cond_9a
    const/4 v8, 0x0

    goto :goto_70

    .line 204
    .restart local v8    # "searchActionAvailable":Z
    :cond_9c
    const/4 v11, 0x0

    goto :goto_79

    .line 206
    :cond_9e
    const/4 v11, 0x0

    goto :goto_84
.end method


# virtual methods
.method doTransition(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # F

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :cond_9
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 241
    return-void
.end method

.method public hideBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 288
    return-void
.end method

.method public isTargetPresent(I)Z
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 153
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 154
    const v1, 0x7f0b0068

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSelectorView;->mOnTriggerListener:Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSelectorView;->updateTargets()V

    .line 158
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 159
    const v1, 0x7f0b00be

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "bouncerFrameView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 161
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 264
    return-void
.end method

.method public onResume(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 269
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 254
    return-void
.end method

.method public setCarrierArea(Landroid/view/View;)V
    .registers 2
    .param p1, "carrierArea"    # Landroid/view/View;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    .line 165
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 245
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 249
    return-void
.end method

.method public showBouncer(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mIsBouncing:Z

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSelectorView;->mFadeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSelectorView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 281
    return-void
.end method

.method public showUsabilityHint()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 174
    return-void
.end method

.method public updateResources()V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const v8, 0x7f0200a0

    const/4 v5, 0x0

    .line 213
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v3, :cond_4c

    .line 214
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "search"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-virtual {v3, v6, v5, v7}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4c

    .line 220
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 221
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v6, "com.android.systemui.action_assist_icon_google"

    invoke-virtual {v3, v0, v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    .line 224
    .local v2, "replaced":Z
    if-nez v2, :cond_4c

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v6, "com.android.systemui.action_assist_icon"

    invoke-virtual {v3, v0, v6, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 226
    const-string v3, "SecuritySelectorView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t grab icon from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "replaced":Z
    :cond_4c
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v7, 0x7f0200a8

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSelectorView;->mCameraDisabled:Z

    if-nez v3, :cond_63

    move v3, v4

    :goto_56
    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 232
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSelectorView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardSelectorView;->mSearchDisabled:Z

    if-nez v6, :cond_65

    :goto_5f
    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setEnableTarget(IZ)V

    .line 233
    return-void

    :cond_63
    move v3, v5

    .line 231
    goto :goto_56

    :cond_65
    move v4, v5

    .line 232
    goto :goto_5f
.end method
