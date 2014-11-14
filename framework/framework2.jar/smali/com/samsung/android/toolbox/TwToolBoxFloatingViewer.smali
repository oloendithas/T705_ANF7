.class public Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.super Landroid/widget/FrameLayout;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "toolbox"


# instance fields
.field private final BLOCK_LIST:[Ljava/lang/String;

.field private final FIXED_MAIN_ITEM_GAP:I

.field private final FIXED_MAIN_ITEM_HEIGHT:I

.field private final FIXED_MAIN_ITEM_WIDTH:I

.field private final FIXED_ROUND_TAIL_SIZE:I

.field private final FIXED_SHORTCUT_ITEM_GAP:I

.field private final FIXED_SHORTCUT_ITEM_SIZE:I

.field private final FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

.field private final FIXED_START_POSITION_RIGHT_PADDING:I

.field private final FIXED_START_POSITION_TOP_PADDING:I

.field private final LONG_PRESS_PANEL_HEIGHT_PX:I

.field private final LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

.field private final MAIN_DECREASE_RATIO:F

.field private final MAIN_DIM_RATIO:F

.field private final SCALED_APPROACH_SLOP:I

.field private final SCALED_TOUCH_SLOP:I

.field private final SLEEP_TIME_OUT:I

.field private final TOOLBOX_MAX_ITEM_COUNT:I

.field private final TOTAL_HEIGHT:I

.field private mAbsX:I

.field private mAbsY:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAllPackages:[Ljava/lang/Object;

.field private final mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mBoxAnimating:Z

.field private mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

.field private mCenterX:I

.field private mCenterY:I

.field private final mCheckEnvironment:Ljava/lang/Runnable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverOpen:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentPackage:Ljava/lang/String;

.field private mDVFSCookie:I

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDVFSHelperCore:Landroid/os/DVFSHelper;

.field private mDVFSLockAcquired:Z

.field private mDeivceProvisioned:Z

.field public mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mDensity:F

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisableFloatingViewer:Z

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDownSlopArea:Landroid/graphics/Rect;

.field private final mDrawGlobalRect:Landroid/graphics/Rect;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEditAfterScreenCapture:I

.field private mEnableFloatingViewer:Z

.field private mEndFloatingBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBtnArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingMsgEdit:Ljava/lang/String;

.field private mEndFloatingMsgRemove:Ljava/lang/String;

.field private mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

.field private final mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

.field private mEnterAnimator:Landroid/animation/ValueAnimator;

.field private mEnterProgressValue:F

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandProgressValue:F

.field private mExpanded:Z

.field private mExploreByTouchMode:Z

.field private mExploreByTouchModeObserver:Landroid/database/ContentObserver;

.field private mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

.field private final mFont:Landroid/graphics/Typeface;

.field private final mGlobalRect:Landroid/graphics/Rect;

.field private final mGoToPositionAndromeda:Ljava/lang/Runnable;

.field private final mGoToPositionCallback:Ljava/lang/Runnable;

.field private mHiddenToolBox:Z

.field private mInVSync:Z

.field private final mIsTablet:Z

.field private mKeyguardShowing:Z

.field private mKidsMode:Z

.field private mKidsModeObserver:Landroid/database/ContentObserver;

.field private mLastOrientation:I

.field private mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

.field private mLongPressPanelPosition:I

.field private mLongPressPanelRemoveAnimating:Z

.field private mLongPressPanelRemoveBtnAngle:F

.field private final mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

.field private mLongPressPanelRemoveBtnPosition:I

.field private mLongPressPanelShowing:Z

.field private mLongPressed:Z

.field private mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

.field private mMainCharacterDecreaseAmount:I

.field private mMainCharacterDegree:I

.field private mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mMovingByAnimation:Z

.field private mNeedSaveCenterPosition:Z

.field private mOTAShowing:Z

.field private final mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

.field private mPositionAnimatorX:Landroid/animation/ValueAnimator;

.field private mPositionAnimatorY:Landroid/animation/ValueAnimator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Ljava/lang/Runnable;

.field private mReseting:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mScreenWriteRecovery:Ljava/lang/Runnable;

.field private final mShadowRect:Landroid/graphics/Rect;

.field private final mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mSipVisible:Z

.field private mSleepAnimator:Landroid/animation/ValueAnimator;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTargetX:I

.field private mTargetY:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTouchClickRunnable:Ljava/lang/Runnable;

.field private final mTouchLongClickRunnable:Ljava/lang/Runnable;

.field mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field private mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

.field private final mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

.field private mTracking:Z

.field private mTransparentAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffEffectRatio:F

.field private mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

.field private final mUpdateLongPressPanelRect:Ljava/lang/Runnable;

.field private final mUpdateVisibility:Ljava/lang/Runnable;

.field private mUserManager:Landroid/os/UserManager;

.field private mValidUser:Z

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mVisible:Z

.field private mVisibleFloatingStyle:Z

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private methodPauseGc:Ljava/lang/reflect/Method;

.field private methodResumeGc:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 250
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SLEEP_TIME_OUT:I

    .line 97
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOOLBOX_MAX_ITEM_COUNT:I

    .line 98
    const v0, 0x3e75c28f

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DECREASE_RATIO:F

    .line 99
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DIM_RATIO:F

    .line 126
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    .line 135
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 136
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    .line 137
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 138
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 139
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    .line 140
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    .line 141
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 142
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    .line 143
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    .line 144
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    .line 145
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    .line 146
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    .line 147
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    .line 148
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    .line 149
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    .line 150
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 151
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 152
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 153
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    .line 154
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    .line 155
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 156
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 160
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 177
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    .line 178
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    .line 179
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 180
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    .line 181
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    .line 182
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    .line 194
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    .line 196
    const-string/jumbo v0, "sec-roboto-light"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    .line 197
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 198
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 210
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    .line 214
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    .line 222
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 223
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 224
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    .line 225
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    .line 226
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 227
    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    .line 232
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    .line 240
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v3

    const-string v2, "com.sec.android.app.ma.recorder"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v4, "com.sec.android.app.simcardmanagement"

    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "com.sec.android.app.kidshome"

    aput-object v4, v0, v2

    const/4 v2, 0x4

    const-string v4, "com.sec.kidsplat.parentalcontrol"

    aput-object v4, v0, v2

    const/4 v2, 0x5

    const-string v4, "com.sec.android.app.magnifier"

    aput-object v4, v0, v2

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .line 436
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    .line 475
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    .line 485
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    .line 551
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 559
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    .line 612
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1055
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    .line 1061
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    .line 1067
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    .line 1073
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    .line 1079
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    .line 1085
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    .line 1091
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    .line 1097
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    .line 1103
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    .line 1109
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    .line 1115
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    .line 1147
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionAndromeda:Ljava/lang/Runnable;

    .line 1153
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    .line 1160
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;

    invoke-direct {v0, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    .line 252
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 256
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 257
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 259
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 260
    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 261
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    .line 262
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    .line 263
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 264
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUserManager:Landroid/os/UserManager;

    .line 266
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 267
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    const/16 v2, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x65

    const/16 v6, 0x65

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    .line 270
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v0, v2, :cond_492

    move v0, v1

    :goto_238
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    .line 272
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d10

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 273
    .local v9, "mainCharacter":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    .line 274
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    .line 275
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050100

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    .line 277
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    .line 278
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050101

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050102

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 281
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 282
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500fc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10500fd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    .line 285
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I

    .line 288
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOTAL_HEIGHT:I

    .line 290
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1050105

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v0, :cond_312

    .line 297
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050104

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 298
    .local v10, "textShadowSize":I
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v10

    int-to-float v4, v10

    int-to-float v5, v10

    const/high16 v6, -0x40000000

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 302
    .end local v10    # "textShadowSize":I
    :cond_312
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d0e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d0b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    .line 305
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d0c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    .line 306
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d0d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 307
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    .line 309
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d19

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080d1a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    .line 311
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x1040855

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v2, 0x10409ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_495

    move v0, v1

    :goto_396
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    .line 315
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "touch_exploration_enabled"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_498

    move v0, v1

    :goto_3a5
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    .line 316
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_49b

    :goto_3b2
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    .line 317
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 320
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->TOTAL_HEIGHT:I

    const/16 v5, 0x7df

    const/16 v6, 0x318

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 331
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 332
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_3ea

    .line 333
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 334
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 336
    :cond_3ea
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 337
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 338
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "TwToolBoxFloatingViewer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 341
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 342
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, -0x2710

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 344
    new-instance v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    .line 347
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_45d

    .line 351
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    .line 352
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "ListView_scroll"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 354
    sget v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v0, :cond_45d

    .line 355
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    const-string v2, "LIST_SCROLL_BOOSTER_CORE"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    .line 356
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget v2, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 361
    :cond_45d
    const-class v8, Ldalvik/system/VMRuntime;

    .line 363
    .local v8, "clazz":Ljava/lang/Class;
    :try_start_45f
    const-string/jumbo v0, "pauseGc"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    .line 364
    const-string/jumbo v0, "resumeGc"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v8, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;
    :try_end_486
    .catch Ljava/lang/NoSuchMethodException; {:try_start_45f .. :try_end_486} :catch_4a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45f .. :try_end_486} :catch_49e

    .line 370
    :goto_486
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    return-void

    .end local v8    # "clazz":Ljava/lang/Class;
    .end local v9    # "mainCharacter":Landroid/graphics/drawable/Drawable;
    :cond_492
    move v0, v3

    .line 270
    goto/16 :goto_238

    .restart local v9    # "mainCharacter":Landroid/graphics/drawable/Drawable;
    :cond_495
    move v0, v3

    .line 314
    goto/16 :goto_396

    :cond_498
    move v0, v3

    .line 315
    goto/16 :goto_3a5

    :cond_49b
    move v1, v3

    .line 316
    goto/16 :goto_3b2

    .line 366
    .restart local v8    # "clazz":Ljava/lang/Class;
    :catch_49e
    move-exception v0

    goto :goto_486

    .line 365
    :catch_4a0
    move-exception v0

    goto :goto_486
.end method

.method static synthetic access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionAndromeda:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void
.end method

.method static synthetic access$2902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolLongClick()V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolClick()V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationSleep()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationWakeup()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationExpand()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeIn()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeOut()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    return v0
.end method

.method static synthetic access$4700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return v0
.end method

.method static synthetic access$4702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return p1
.end method

.method static synthetic access$4712(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return p1
.end method

.method static synthetic access$4912(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_APPROACH_SLOP:I

    return v0
.end method

.method static synthetic access$5400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionAndromeda()V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return v0
.end method

.method static synthetic access$5702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return p1
.end method

.method static synthetic access$5800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    return v0
.end method

.method static synthetic access$6002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    return p1
.end method

.method static synthetic access$6102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    return p1
.end method

.method static synthetic access$6200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return v0
.end method

.method static synthetic access$6202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return p1
.end method

.method static synthetic access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return v0
.end method

.method static synthetic access$6302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return p1
.end method

.method static synthetic access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$6500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return v0
.end method

.method static synthetic access$6802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return p1
.end method

.method static synthetic access$6900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return v0
.end method

.method static synthetic access$6902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    return v0
.end method

.method static synthetic access$7002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    return p1
.end method

.method static synthetic access$7100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->toggleTorch()V

    return-void
.end method

.method static synthetic access$7300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V

    return-void
.end method

.method static synthetic access$7400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/util/DisplayMetrics;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    return-void
.end method

.method static synthetic access$8000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$8300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_TOP_EMPTY_SPACE_PX:I

    return v0
.end method

.method static synthetic access$8800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/animation/AnimatorSet;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private acquireDVFS()V
    .registers 2

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->releaseDVFS()V

    .line 1447
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    if-nez v0, :cond_18

    .line 1448
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1449
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_15

    .line 1450
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1452
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    .line 1454
    :cond_18
    return-void
.end method

.method private clearToolBox()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1940
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1941
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateLongPressPanelRect:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1942
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1943
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1944
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1945
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1946
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1947
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1948
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1949
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1950
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1951
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1952
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1955
    invoke-direct {p0, v7}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    .line 1957
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e5

    .line 1958
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1959
    .local v2, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1960
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1961
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1962
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    .line 1963
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_55

    .line 1964
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1965
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_55

    .line 1968
    .end local v2    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_7b
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1970
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1971
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1973
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1974
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1976
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1977
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1979
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1980
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1982
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1983
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1985
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1986
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1988
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "a":Landroid/animation/Animator;
    move-object v3, v0

    .line 1989
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 1990
    .local v3, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1991
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_c2

    .line 1993
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v3    # "va":Landroid/animation/ValueAnimator;
    :cond_d8
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1996
    const-string/jumbo v4, "toolbox"

    const-string v5, "ToolBox disposed..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_e5
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_fc

    .line 2000
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2001
    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    .line 2002
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2003
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2004
    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    .line 2007
    :cond_fc
    iput-boolean v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2008
    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    .line 2009
    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    .line 2010
    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    .line 2011
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v4, v4

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 2013
    return-void
.end method

.method private drawToolBox(Landroid/graphics/Canvas;IIZ)V
    .registers 37
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "isReCalculation"    # Z

    .prologue
    .line 849
    const/4 v10, 0x0

    .line 850
    .local v10, "halfWidth":I
    const/4 v9, 0x0

    .line 851
    .local v9, "halfHeight":I
    const/4 v7, 0x0

    .line 852
    .local v7, "boxAnimating":Z
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v26

    or-int v7, v7, v26

    .line 855
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v26

    or-int v7, v7, v26

    .line 858
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1e1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 859
    .local v13, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v26, v0

    sget-object v27, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_102

    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v26, v0

    if-nez v26, :cond_102

    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 860
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    :goto_5d
    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_106

    const/16 v26, 0xff

    :goto_65
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v5, v0

    .line 862
    .local v5, "alpha":I
    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    move/from16 v26, v0

    or-int v7, v7, v26

    .line 864
    instance-of v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v26, v0

    if-eqz v26, :cond_162

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    div-int/lit8 v10, v26, 0x2

    .line 866
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    move/from16 v26, v0

    div-int/lit8 v9, v26, 0x2

    .line 867
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    sub-int v27, p2, v10

    sub-int v28, p3, v9

    add-int v29, p2, v10

    add-int v30, p3, v9

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->set(IIII)V

    .line 871
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_10a

    .line 872
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v26, v0

    const/high16 v27, 0x3f000000

    sub-float v22, v26, v27

    .line 873
    .local v22, "progress":F
    const v26, 0x3e75c28f

    mul-float v26, v26, v22

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v22

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    .line 882
    .end local v22    # "progress":F
    :goto_d7
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->inset(II)V

    .line 883
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3d

    .line 859
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_102
    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5d

    .line 860
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_106
    const/16 v26, 0x80

    goto/16 :goto_65

    .line 876
    .restart local v5    # "alpha":I
    :cond_10a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_135

    .line 877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    goto :goto_d7

    .line 880
    :cond_135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3e75c28f

    mul-float v26, v26, v27

    const/high16 v27, 0x40000000

    div-float v26, v26, v27

    const/high16 v27, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    goto/16 :goto_d7

    .line 886
    :cond_162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_3d

    .line 889
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move/from16 v26, v0

    div-int/lit8 v10, v26, 0x2

    .line 891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move/from16 v26, v0

    div-int/lit8 v9, v26, 0x2

    .line 892
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    sub-int v27, p2, v10

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v28, v0

    iget v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v29, v0

    add-float v28, v28, v29

    int-to-float v0, v9

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v29, p2, v10

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v31, v0

    add-float v30, v30, v31

    int-to-float v0, v9

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->set(IIII)V

    .line 894
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->inset(II)V

    .line 895
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_3d

    .line 902
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v30, v0

    sub-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 908
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    .line 911
    if-eqz p4, :cond_4b3

    .line 928
    :cond_243
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updatePosition()V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    add-int v24, v26, v27

    .line 933
    .local v24, "zeroOffsetX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    add-int v25, v26, v27

    .line 934
    .local v25, "zeroOffsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 937
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-gtz v26, :cond_2ac

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2e0

    .line 938
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDrawGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    const/high16 v27, 0x437f0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 944
    :cond_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 945
    .local v19, "objectSize":I
    add-int/lit8 v12, v19, -0x1

    .local v12, "idx":I
    :goto_2ec
    if-ltz v12, :cond_522

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 947
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v26, v0

    sget-object v27, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_563

    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v26, v0

    if-nez v26, :cond_563

    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 948
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :goto_310
    iget-boolean v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_567

    const/16 v26, 0xff

    :goto_318
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v5, v0

    .line 951
    .restart local v5    # "alpha":I
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 953
    instance-of v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v26, v0

    if-eqz v26, :cond_56b

    move-object v14, v13

    .line 954
    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 957
    .local v14, "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3a0

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->offset(II)V

    .line 960
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 961
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    const/high16 v27, 0x437f0000

    const/high16 v28, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3fc999999999999aL

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 962
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 966
    :cond_3a0
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 967
    .local v17, "mainNormalBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerX()I

    move-result v15

    .line 968
    .local v15, "mainCenterX":I
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v16

    .line 969
    .local v16, "mainCenterY":I
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_3e5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 972
    :cond_3e5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    const/16 v27, 0x5a

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3fa

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 973
    :cond_3fa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_425

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 975
    :cond_425
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 976
    .local v18, "mainOpenBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_45c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x5a

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 979
    :cond_45c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42b40000

    div-float v26, v26, v27

    const/high16 v27, 0x437f0000

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 980
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 981
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    if-lez v26, :cond_4af

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x5a

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 945
    .end local v14    # "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .end local v15    # "mainCenterX":I
    .end local v16    # "mainCenterY":I
    .end local v17    # "mainNormalBg":Landroid/graphics/drawable/Drawable;
    .end local v18    # "mainOpenBg":Landroid/graphics/drawable/Drawable;
    :cond_4af
    :goto_4af
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_2ec

    .line 914
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v12    # "idx":I
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v19    # "objectSize":I
    .end local v24    # "zeroOffsetX":I
    .end local v25    # "zeroOffsetY":I
    :cond_4b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    .line 915
    .local v23, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 916
    .local v8, "h":I
    const/16 v20, 0x0

    .local v20, "offsetX":I
    const/16 v21, 0x0

    .line 917
    .local v21, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    if-gez v26, :cond_523

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v20, v0

    .line 919
    :cond_4ec
    :goto_4ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    if-gez v26, :cond_544

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v21, v0

    .line 921
    :cond_50b
    :goto_50b
    if-nez v20, :cond_50f

    if-eqz v21, :cond_243

    .line 922
    :cond_50f
    add-int v26, p2, v20

    add-int v27, p3, v21

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    .line 1001
    .end local v8    # "h":I
    .end local v20    # "offsetX":I
    .end local v21    # "offsetY":I
    .end local v23    # "w":I
    :cond_522
    return-void

    .line 918
    .restart local v8    # "h":I
    .restart local v20    # "offsetX":I
    .restart local v21    # "offsetY":I
    .restart local v23    # "w":I
    :cond_523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v23

    if-le v0, v1, :cond_4ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v20, v23, v26

    goto :goto_4ec

    .line 920
    :cond_544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v0, v8, :cond_50b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v21, v8, v26

    goto :goto_50b

    .line 947
    .end local v8    # "h":I
    .end local v20    # "offsetX":I
    .end local v21    # "offsetY":I
    .end local v23    # "w":I
    .restart local v12    # "idx":I
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v19    # "objectSize":I
    .restart local v24    # "zeroOffsetX":I
    .restart local v25    # "zeroOffsetY":I
    :cond_563
    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_310

    .line 948
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_567
    const/16 v26, 0x80

    goto/16 :goto_318

    .line 984
    .restart local v5    # "alpha":I
    :cond_56b
    if-eqz v5, :cond_4af

    iget v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v26, v0

    int-to-float v0, v9

    move/from16 v27, v0

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_4af

    .line 987
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5ca

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/graphics/Rect;->offset(II)V

    .line 990
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 991
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    int-to-double v0, v5

    move-wide/from16 v27, v0

    const-wide v29, 0x3fc999999999999aL

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 992
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 996
    :cond_5ca
    iget-object v0, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 997
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4af
.end method

.method private getSCoverState()Z
    .registers 3

    .prologue
    .line 2280
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_11

    .line 2281
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 2282
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_11

    .line 2283
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 2286
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method private getTorchStatus()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2377
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "torch_light"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private goToPosition(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1375
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    .line 1376
    iput p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    .line 1377
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    .line 1378
    return-void
.end method

.method private goToPositionAndromeda()V
    .registers 3

    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1439
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAndromedaWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1441
    :cond_d
    return-void
.end method

.method private goToPositionOneShot(II)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1381
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 1382
    .local v0, "oldCenterX":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 1385
    .local v1, "oldCenterY":I
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setEnableVSync(Z)V

    .line 1387
    if-ne p1, v0, :cond_e

    if-eq p2, v1, :cond_52

    .line 1388
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_53

    .line 1389
    new-array v2, v6, [I

    aput v0, v2, v4

    aput p1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    .line 1390
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1401
    new-array v2, v6, [I

    aput v1, v2, v4

    aput p2, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    .line 1402
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1413
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;

    invoke-direct {v3, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1431
    :goto_48
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1432
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1435
    :cond_52
    return-void

    .line 1428
    :cond_53
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-array v3, v6, [I

    aput v0, v3, v4

    aput p1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1429
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-array v3, v6, [I

    aput v1, v3, v4

    aput p2, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_48
.end method

.method private initVSync()V
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_a

    .line 1528
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    .line 1530
    :cond_a
    return-void
.end method

.method private initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    .registers 9
    .param p1, "m"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2016
    packed-switch p2, :pswitch_data_128

    .line 2159
    :goto_5
    :pswitch_5
    return v2

    .line 2019
    :pswitch_6
    :try_start_6
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.galaxyfinder"

    const-string v5, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 2021
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2022
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_26

    .end local v0    # "cm":Landroid/content/ComponentName;
    :goto_24
    move v2, v3

    .line 2159
    goto :goto_5

    .line 2033
    :catch_26
    move-exception v1

    .line 2034
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sfinder Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2042
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_41
    :try_start_41
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080d11

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2043
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 2044
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_56} :catch_57

    goto :goto_24

    .line 2056
    :catch_57
    move-exception v1

    .line 2057
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickConnect Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2065
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_72
    :try_start_72
    sget-object v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    .line 2066
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080d15

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2067
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080d14

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 2068
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v4

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    .line 2069
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 2070
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9c} :catch_9d

    goto :goto_24

    .line 2084
    :catch_9d
    move-exception v1

    .line 2085
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TorchLight Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2093
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_b9
    :try_start_b9
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080d13

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2094
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 2095
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_ce} :catch_d0

    goto/16 :goto_24

    .line 2114
    :catch_d0
    move-exception v1

    .line 2115
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenWrite Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2133
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_ec
    :try_start_ec
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.magnifier"

    const-string v5, "com.sec.android.app.magnifier.Magnifier"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    .restart local v0    # "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 2135
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2136
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_10a} :catch_10c

    goto/16 :goto_24

    .line 2148
    .end local v0    # "cm":Landroid/content/ComponentName;
    :catch_10c
    move-exception v1

    .line 2149
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Magnifier Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2016
    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_6
        :pswitch_41
        :pswitch_72
        :pswitch_b9
        :pswitch_ec
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isDisableFloatingViewer()Z
    .registers 7

    .prologue
    .line 2321
    const/4 v4, 0x0

    .line 2322
    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 2323
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2324
    const/4 v4, 0x1

    .line 2329
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_12
    if-nez v4, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_30

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-eqz v5, :cond_35

    :cond_30
    const/4 v5, 0x1

    :goto_31
    return v5

    .line 2322
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2329
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_35
    const/4 v5, 0x0

    goto :goto_31
.end method

.method private isEnableFloatingViewer()Z
    .registers 7

    .prologue
    .line 2335
    const/4 v4, 0x0

    .line 2336
    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    .line 2337
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 2338
    const/4 v4, 0x1

    .line 2343
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_12
    if-nez v4, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_35

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-nez v5, :cond_35

    const/4 v5, 0x1

    :goto_31
    return v5

    .line 2336
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2343
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_35
    const/4 v5, 0x0

    goto :goto_31
.end method

.method private isEnableOTA()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2365
    const-string v1, "KOR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2366
    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    .line 2368
    :cond_2b
    return v0
.end method

.method private isEnabledPkg(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2349
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_12

    move-result v1

    .line 2351
    .local v1, "enable":I
    const/4 v4, 0x2

    if-eq v4, v1, :cond_d

    const/4 v4, 0x3

    if-ne v4, v1, :cond_e

    .line 2360
    .end local v1    # "enable":I
    :cond_d
    :goto_d
    return v3

    .line 2355
    .restart local v1    # "enable":I
    :cond_e
    const/4 v3, 0x1

    goto :goto_d

    .line 2357
    .end local v1    # "enable":I
    :catch_10
    move-exception v2

    .line 2358
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_d

    .line 2359
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v0

    .line 2360
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_d
.end method

.method private isPointInCircle(DDDII)Z
    .registers 22
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    .line 1549
    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v11, p1, p5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_3c

    move/from16 v0, p7

    int-to-double v9, v0

    add-double v11, p1, p5

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_3c

    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v11, p3, p5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_3c

    move/from16 v0, p8

    int-to-double v9, v0

    add-double v11, p3, p5

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_3c

    .line 1551
    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v3, p1, v9

    .line 1552
    .local v3, "dx":D
    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v5, p3, v9

    .line 1553
    .local v5, "dy":D
    mul-double/2addr v3, v3

    .line 1554
    mul-double/2addr v5, v5

    .line 1555
    add-double v1, v3, v5

    .line 1556
    .local v1, "distanceSquared":D
    mul-double v7, p5, p5

    .line 1557
    .local v7, "radiusSquared":D
    cmpg-double v9, v1, v7

    if-gtz v9, :cond_3a

    const/4 v9, 0x1

    .line 1559
    .end local v1    # "distanceSquared":D
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "radiusSquared":D
    :goto_39
    return v9

    .line 1557
    .restart local v1    # "distanceSquared":D
    .restart local v3    # "dx":D
    .restart local v5    # "dy":D
    .restart local v7    # "radiusSquared":D
    :cond_3a
    const/4 v9, 0x0

    goto :goto_39

    .line 1559
    .end local v1    # "distanceSquared":D
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "radiusSquared":D
    :cond_3c
    const/4 v9, 0x0

    goto :goto_39
.end method

.method private isValidUser()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2314
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_1e

    move v0, v2

    .line 2315
    .local v0, "isKnoxUser":Z
    :goto_b
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2316
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_20

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_20

    :goto_1d
    return v2

    .end local v0    # "isKnoxUser":Z
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1e
    move v0, v3

    .line 2314
    goto :goto_b

    .restart local v0    # "isKnoxUser":Z
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_20
    move v2, v3

    .line 2316
    goto :goto_1d
.end method

.method private loadCenterPosition()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 2258
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_x_ratio"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 2259
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_y_ratio"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 2260
    return-void
.end method

.method private onToolClick()V
    .registers 10

    .prologue
    const/16 v8, 0x9

    const/4 v5, 0x0

    .line 1335
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v6, :cond_c

    .line 1372
    :cond_b
    :goto_b
    return-void

    .line 1336
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v6, v7, :cond_95

    .line 1337
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1338
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 1339
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_44

    .line 1340
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1341
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1371
    :cond_26
    :goto_26
    const-string/jumbo v5, "toolbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Click() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v7, v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1343
    :cond_44
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    if-nez v6, :cond_8b

    move v0, v5

    .line 1344
    .local v0, "allPkgCount":I
    :goto_49
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_8f

    .line 1345
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1346
    .local v3, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-eq v3, v6, :cond_57

    iget-boolean v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    if-nez v6, :cond_57

    .line 1347
    iget-object v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, "data":[Ljava/lang/String;
    aget-object v4, v1, v5

    .line 1349
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    .line 1350
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1358
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_80
    :goto_80
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1359
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_26

    .line 1343
    .end local v0    # "allPkgCount":I
    :cond_8b
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v0, v6

    goto :goto_49

    .line 1355
    .restart local v0    # "allPkgCount":I
    :cond_8f
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_80

    .line 1362
    .end local v0    # "allPkgCount":I
    :cond_95
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_26

    .line 1363
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v6, v6, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;->onAction()V

    .line 1364
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1365
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 1366
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1367
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1368
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto/16 :goto_26
.end method

.method private onToolLongClick()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1311
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-nez v0, :cond_7

    .line 1332
    :cond_6
    :goto_6
    return-void

    .line 1312
    :cond_7
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1313
    const-string/jumbo v0, "toolbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_6

    .line 1316
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1317
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1318
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1319
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(II)V

    .line 1321
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v2, v2

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1322
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1325
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_6d

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1327
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1329
    :cond_6d
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    goto :goto_6
.end method

.method private onTouchDown(II)V
    .registers 19
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1171
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v2, :cond_16

    .line 1218
    :cond_15
    :goto_15
    return-void

    .line 1172
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v9, p1, v2

    .line 1173
    .local v9, "relX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v10, p2, v2

    .line 1174
    .local v10, "relY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v2, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v2, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v11, 0x1

    .line 1175
    .local v11, "conflict":Z
    :goto_41
    const/4 v15, 0x0

    .line 1176
    .local v15, "tracking":Z
    if-eqz v11, :cond_8a

    .line 1177
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v2, :cond_61

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v2, :cond_61

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    goto :goto_15

    .line 1174
    .end local v11    # "conflict":Z
    .end local v15    # "tracking":Z
    :cond_5f
    const/4 v11, 0x0

    goto :goto_41

    .line 1182
    .restart local v11    # "conflict":Z
    .restart local v15    # "tracking":Z
    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_69
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1183
    .local v13, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v14, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 1184
    .local v14, "r":Landroid/graphics/Rect;
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isRectangleShape:Z

    if-eqz v2, :cond_11b

    invoke-virtual {v14, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1186
    :goto_81
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    if-nez v2, :cond_69

    .line 1188
    const/4 v15, 0x1

    .line 1189
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1194
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_8a
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 1195
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    .line 1197
    if-eqz v11, :cond_136

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1209
    :cond_bd
    :goto_bd
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v2, :cond_15

    .line 1210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v3, p1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v5, v5, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v6, v6, p2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v10, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    goto/16 :goto_15

    .line 1184
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v14    # "r":Landroid/graphics/Rect;
    :cond_11b
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-double v3, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v7, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isPointInCircle(DDDII)Z

    move-result v2

    if-eqz v2, :cond_69

    goto/16 :goto_81

    .line 1203
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_136
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_bd

    .line 1204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_bd
.end method

.method private onTouchMove(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_19

    .line 1223
    :cond_c
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetX:I

    .line 1224
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTargetY:I

    .line 1237
    :cond_18
    :goto_18
    return-void

    .line 1225
    :cond_19
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1226
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1228
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_18

    .line 1229
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1230
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(II)V

    .line 1231
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_18

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method private onTouchUpOrCancel(III)V
    .registers 27
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1242
    .local v12, "lastTouchMode":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1245
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move/from16 v18, v0

    if-nez v18, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v18

    if-eqz v18, :cond_5b

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1249
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 1250
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2cb

    .line 1251
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    add-int v5, v18, v19

    .line 1252
    .local v5, "absoluteMainLeft":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 1253
    .local v7, "absoluteMainTop":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    add-int v6, v18, v19

    .line 1254
    .local v6, "absoluteMainRight":I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;->mLongPressPanelRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 1255
    .local v4, "absoluteMainBottom":I
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1dc

    .line 1287
    .end local v4    # "absoluteMainBottom":I
    .end local v5    # "absoluteMainLeft":I
    .end local v6    # "absoluteMainRight":I
    .end local v7    # "absoluteMainTop":I
    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v19, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_114

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18e

    .line 1288
    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_129

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1289
    :cond_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v21, v0

    aput v21, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const/high16 v19, 0x43960000

    const/high16 v20, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v22, v0

    div-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->reverse()V

    .line 1294
    :cond_18e
    sget-object v18, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1295
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_1ab

    .line 1298
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1301
    :cond_1ab
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v18

    const/high16 v19, 0x3f800000

    cmpl-float v18, v18, v19

    if-nez v18, :cond_1d3

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0xbb8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1307
    :cond_1d3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 1308
    return-void

    .line 1258
    .restart local v4    # "absoluteMainBottom":I
    .restart local v5    # "absoluteMainLeft":I
    .restart local v6    # "absoluteMainRight":I
    .restart local v7    # "absoluteMainTop":I
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v18

    if-eqz v18, :cond_271

    .line 1259
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.settings.TOOLBOX_LIST"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v11, "intent":Landroid/content/Intent;
    const v18, 0x10008000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Landroid/os/UserHandle;

    const/16 v20, -0x2

    invoke-direct/range {v19 .. v20}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tw_tool_box_floating_x_ratio"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v15, v0

    .line 1265
    .local v15, "newCenterX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tw_tool_box_floating_y_ratio"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1266
    .local v16, "newCenterY":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionOneShot(II)V

    goto/16 :goto_f5

    .line 1268
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "newCenterX":I
    .end local v16    # "newCenterY":I
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7, v6, v4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v18

    if-eqz v18, :cond_28a

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_f5

    .line 1271
    :cond_28a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    .line 1272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    move/from16 v18, v0

    if-nez v18, :cond_f5

    .line 1273
    const/4 v14, 0x0

    .line 1274
    .local v14, "needBlock":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2a4
    if-ge v10, v13, :cond_2b7

    aget-object v9, v8, v10

    .line 1275
    .local v9, "blockPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2c8

    .line 1276
    const/4 v14, 0x1

    .line 1280
    .end local v9    # "blockPkg":Ljava/lang/String;
    :cond_2b7
    if-eqz v14, :cond_f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_f5

    .line 1274
    .restart local v9    # "blockPkg":Ljava/lang/String;
    :cond_2c8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2a4

    .line 1283
    .end local v4    # "absoluteMainBottom":I
    .end local v5    # "absoluteMainLeft":I
    .end local v6    # "absoluteMainRight":I
    .end local v7    # "absoluteMainTop":I
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "blockPkg":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "needBlock":Z
    :cond_2cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f5

    .line 1284
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mNeedSaveCenterPosition:Z

    goto/16 :goto_f5
.end method

.method private pauseGC()V
    .registers 6

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->resumeGC()V

    .line 1478
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    .line 1480
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodPauseGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AbsListScroll"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_21} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_21} :catch_22

    .line 1486
    :cond_21
    :goto_21
    return-void

    .line 1482
    :catch_22
    move-exception v0

    goto :goto_21

    .line 1481
    :catch_24
    move-exception v0

    goto :goto_21
.end method

.method private playAnimationCollapse()V
    .registers 6

    .prologue
    .line 2200
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v2, :cond_5

    .line 2210
    :goto_4
    return-void

    .line 2202
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2203
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2204
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 2205
    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_13

    .line 2208
    .end local v1    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_25
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2209
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private playAnimationEnter()V
    .registers 2

    .prologue
    .line 2163
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_5

    .line 2165
    :goto_4
    return-void

    .line 2164
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4
.end method

.method private playAnimationExpand()V
    .registers 4

    .prologue
    .line 2186
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_5

    .line 2197
    :cond_4
    return-void

    .line 2187
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2189
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2190
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2191
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 2192
    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    instance-of v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    if-eqz v2, :cond_31

    .line 2193
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    invoke-interface {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;->onUpdateToggleStatus()V

    .line 2195
    :cond_31
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_18
.end method

.method private playAnimationFadeIn()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2213
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_7

    .line 2228
    :cond_6
    :goto_6
    return-void

    .line 2215
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 2216
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-nez v0, :cond_54

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 2217
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    if-nez v0, :cond_6

    .line 2219
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2220
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2222
    :cond_25
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v3, "playAnimationFadeIn()"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 2224
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000

    aput v4, v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2225
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2226
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2227
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_54
    move v0, v2

    .line 2216
    goto :goto_12
.end method

.method private playAnimationFadeOut()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2231
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_6

    .line 2240
    :goto_5
    return-void

    .line 2232
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2233
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2235
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2236
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v1, "playAnimationFadeOut()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 2238
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2239
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5
.end method

.method private playAnimationSleep()V
    .registers 5

    .prologue
    .line 2168
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2173
    :cond_1a
    :goto_1a
    return-void

    .line 2169
    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2170
    :cond_28
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x29b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2171
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3ecccccd

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2172
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1a
.end method

.method private playAnimationWakeup()V
    .registers 6

    .prologue
    const/high16 v4, 0x3f800000

    .line 2176
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2183
    :cond_e
    :goto_e
    return-void

    .line 2177
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2178
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 2179
    .local v0, "alpha":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_e

    .line 2180
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2181
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2182
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_e
.end method

.method private prepareToolBoxLinear()V
    .registers 40

    .prologue
    .line 1563
    const-string/jumbo v3, "toolbox"

    const-string/jumbo v4, "prepareToolBoxLinear()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    new-instance v22, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .line 1567
    .local v22, "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v37

    .line 1571
    .local v37, "tools":[Ljava/lang/String;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v36, "toolArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "0"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1573
    move-object/from16 v12, v37

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_30
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_42

    aget-object v35, v12, v20

    .local v35, "t":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_30

    .line 1574
    .end local v35    # "t":Ljava/lang/String;
    :cond_42
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .line 1575
    const/16 v31, 0x0

    .line 1577
    .local v31, "priority":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .local v12, "arr$":[Ljava/lang/Object;
    array-length v0, v12

    move/from16 v24, v0

    const/16 v20, 0x0

    :goto_57
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_27d

    aget-object v27, v12, v20

    .local v27, "obj":Ljava/lang/Object;
    move-object/from16 v28, v27

    .line 1578
    check-cast v28, Ljava/lang/String;

    .line 1579
    .local v28, "pkg":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1580
    .local v16, "data":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v29, v16, v3

    .line 1581
    .local v29, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_17a

    const-string v9, "00"

    .line 1582
    .local v9, "activityName":Ljava/lang/String;
    :goto_76
    const-string v3, "0"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1583
    .local v23, "isMainCharactor":Z
    if-eqz v23, :cond_17f

    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 1584
    .local v25, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :goto_91
    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    .line 1586
    new-instance v10, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .line 1602
    .local v10, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v23, :cond_18c

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080d0f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1604
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_488

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1605
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1606
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1607
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1671
    :goto_dd
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_16b

    .line 1672
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1673
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_26e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1676
    .local v14, "bitmapMask":Landroid/graphics/Bitmap;
    :goto_fe
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1683
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/drawable/BitmapDrawable;

    .line 1686
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bitmapMask":Landroid/graphics/Bitmap;
    :cond_16b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    add-int/lit8 v31, v31, 0x1

    .line 1577
    :cond_176
    :goto_176
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_57

    .line 1581
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v23    # "isMainCharactor":Z
    .end local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_17a
    const/4 v3, 0x1

    aget-object v9, v16, v3

    goto/16 :goto_76

    .line 1583
    .restart local v9    # "activityName":Ljava/lang/String;
    .restart local v23    # "isMainCharactor":Z
    :cond_17f
    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 1620
    .restart local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .restart local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_18c
    :try_start_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    .line 1621
    .local v30, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "00"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    .line 1622
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1628
    :goto_1a6
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z
    :try_end_1ad
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18c .. :try_end_1ad} :catch_22a
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_1ad} :catch_26b

    move-result v3

    if-eqz v3, :cond_176

    .line 1651
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    :cond_1b0
    new-instance v11, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .line 1661
    .local v11, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/16 v34, 0x0

    .line 1662
    .local v34, "startY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_GAP:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v31, -0x1

    mul-int/2addr v4, v5

    add-int v19, v3, v4

    .line 1663
    .local v19, "endY":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v19, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1664
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1665
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1666
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1667
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v4, v4, v31

    mul-int/lit8 v4, v4, 0x21

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/16 :goto_dd

    .line 1624
    .end local v11    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v19    # "endY":I
    .end local v34    # "startY":I
    .restart local v30    # "pm":Landroid/content/pm/PackageManager;
    :cond_217
    :try_start_217
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, v29

    invoke-direct {v15, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    .local v15, "cm":Landroid/content/ComponentName;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;
    :try_end_228
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_217 .. :try_end_228} :catch_22a
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_228} :catch_26b

    goto/16 :goto_1a6

    .line 1632
    .end local v15    # "cm":Landroid/content/ComponentName;
    .end local v30    # "pm":Landroid/content/pm/PackageManager;
    :catch_22a
    move-exception v18

    .line 1633
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v3, "index"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_176

    .line 1637
    :try_start_24e
    const-string v3, "index"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1638
    .local v21, "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    :try_end_263
    .catch Ljava/lang/NumberFormatException; {:try_start_24e .. :try_end_263} :catch_268

    move-result v3

    if-nez v3, :cond_1b0

    goto/16 :goto_176

    .line 1641
    .end local v21    # "index":I
    :catch_268
    move-exception v26

    .line 1642
    .local v26, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_176

    .line 1647
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v26    # "nfe":Ljava/lang/NumberFormatException;
    :catch_26b
    move-exception v18

    .line 1648
    .local v18, "e":Ljava/lang/Exception;
    goto/16 :goto_176

    .line 1673
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_26e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_SHORTCUT_ITEM_SIZE:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_fe

    .line 1690
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "data":[Ljava/lang/String;
    .end local v23    # "isMainCharactor":Z
    .end local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v27    # "obj":Ljava/lang/Object;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v29    # "pkgName":Ljava/lang/String;
    :cond_27d
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_490

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 1691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1713
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_498

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    .line 1714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1749
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4a0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    .line 1750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1771
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4a8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    .line 1772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1795
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1830
    const/high16 v3, 0x40000000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v32, v0

    .line 1831
    .local v32, "removeButtonMoveAmount":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v32, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v38

    .line 1832
    .local v38, "upAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1833
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1834
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1844
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1855
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v32, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 1856
    .local v17, "downAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1857
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1858
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1868
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1879
    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_4b0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v33

    .line 1880
    .local v33, "shakeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x190

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1881
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1882
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1892
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1904
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1909
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4c0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    .line 1910
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1933
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1935
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    return-void

    .line 1604
    :array_488
    .array-data 4
        0x0
        0x5a
    .end array-data

    .line 1690
    :array_490
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 1713
    :array_498
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 1749
    :array_4a0
    .array-data 4
        0x3f800000
        0x3ecccccd
    .end array-data

    .line 1771
    :array_4a8
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 1879
    :array_4b0
    .array-data 4
        0x0
        0x41400000
        -0x3ec00000
        0x41400000
        -0x3ec00000
        0x0
    .end array-data

    .line 1909
    :array_4c0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method private releaseDVFS()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1457
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_3c

    .line 1458
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2c

    .line 1460
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_2a} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_2a} :catch_3d

    .line 1464
    :goto_2a
    iput v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    .line 1466
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1467
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3a

    .line 1468
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSHelperCore:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1470
    :cond_3a
    iput-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSLockAcquired:Z

    .line 1472
    :cond_3c
    return-void

    .line 1462
    :catch_3d
    move-exception v0

    goto :goto_2a

    .line 1461
    :catch_3f
    move-exception v0

    goto :goto_2a
.end method

.method private resumeGC()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1489
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_28

    .line 1491
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->methodResumeGc:Ljava/lang/reflect/Method;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_26} :catch_2b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_26} :catch_29

    .line 1495
    :goto_26
    iput v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDVFSCookie:I

    .line 1497
    :cond_28
    return-void

    .line 1493
    :catch_29
    move-exception v0

    goto :goto_26

    .line 1492
    :catch_2b
    move-exception v0

    goto :goto_26
.end method

.method private saveCenterPosition()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 2243
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_x_ratio"

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2244
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "tw_tool_box_floating_y_ratio"

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2245
    return-void
.end method

.method private saveDefaultCenterPosition()V
    .registers 11

    .prologue
    const/4 v9, -0x2

    .line 2248
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-nez v5, :cond_2f

    const/4 v0, 0x0

    .line 2249
    .local v0, "defaultHalfWidth":I
    :goto_6
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v5

    .line 2250
    .local v3, "screenWidth":F
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v5

    .line 2251
    .local v2, "screenHeight":F
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 2252
    .local v4, "topPadding":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 2253
    .local v1, "rightPadding":I
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_x_ratio"

    int-to-float v7, v0

    sub-float v7, v3, v7

    int-to-float v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v3

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2254
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_y_ratio"

    add-int v7, v0, v4

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2255
    return-void

    .line 2248
    .end local v0    # "defaultHalfWidth":I
    .end local v1    # "rightPadding":I
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "topPadding":I
    :cond_2f
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    goto :goto_6
.end method

.method private screenCapture()V
    .registers 3

    .prologue
    .line 2381
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$56;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2395
    return-void
.end method

.method private setEnableVSync(Z)V
    .registers 2
    .param p1, "status"    # Z

    .prologue
    .line 1505
    if-eqz p1, :cond_c

    .line 1507
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->pauseGC()V

    .line 1510
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->acquireDVFS()V

    .line 1513
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVSync()V

    .line 1524
    :goto_b
    return-void

    .line 1516
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->stopVSync()V

    .line 1519
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->releaseDVFS()V

    .line 1522
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->resumeGC()V

    goto :goto_b
.end method

.method private setInitVSync()V
    .registers 2

    .prologue
    .line 1500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 1501
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initVSync()V

    .line 1502
    return-void
.end method

.method private startActivityOrTask(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2290
    if-nez p1, :cond_3

    .line 2311
    :goto_2
    return-void

    .line 2293
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 2294
    .local v5, "targetPackageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2295
    .local v3, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_65

    .line 2296
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2297
    .local v2, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 2298
    .local v4, "runningPackageName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    iget v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-ne v6, v7, :cond_19

    .line 2299
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    iget v7, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 2300
    const-string/jumbo v6, "toolbox"

    const-string/jumbo v7, "moveTaskToFront()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4a} :catch_4b

    goto :goto_2

    .line 2305
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "runningPackageName":Ljava/lang/String;
    .end local v5    # "targetPackageName":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 2306
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "toolbox"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception startActivityOrTask() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, p1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2310
    const-string/jumbo v6, "toolbox"

    const-string/jumbo v7, "startActivityAsUser()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private stopVSync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 1542
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_12

    .line 1543
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1544
    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    .line 1546
    :cond_12
    return-void
.end method

.method private toggleTorch()V
    .registers 3

    .prologue
    .line 2372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "android.intent.action.ASSISTIVELIGHT_OFF"

    :goto_a
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2373
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2374
    return-void

    .line 2372
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_13
    const-string v1, "android.intent.action.ASSISTIVELIGHT_ON"

    goto :goto_a
.end method

.method private updatePosition()V
    .registers 4

    .prologue
    .line 700
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 701
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 702
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDecreaseAmount:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 703
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    :cond_23
    return-void
.end method

.method private updateVSync()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1533
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    if-nez v0, :cond_12

    .line 1534
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mInVSync:Z

    .line 1535
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initVSync()V

    .line 1536
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1538
    :cond_12
    return-void
.end method

.method private updateVisibility()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "toolbox_onoff"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_44

    move v1, v2

    :goto_f
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    .line 711
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 712
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isDisableFloatingViewer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 714
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisible:Z

    if-eqz v1, :cond_46

    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v1, :cond_46

    :goto_31
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    .line 717
    :try_start_33
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v1, :cond_48

    move v0, v3

    .line 718
    .local v0, "visibility":I
    :goto_38
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4b

    .line 719
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_4f

    .line 727
    .end local v0    # "visibility":I
    :goto_41
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v1

    :cond_44
    move v1, v3

    .line 708
    goto :goto_f

    :cond_46
    move v2, v3

    .line 714
    goto :goto_31

    .line 717
    :cond_48
    const/16 v0, 0x8

    goto :goto_38

    .line 721
    .restart local v0    # "visibility":I
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_41

    .line 723
    .end local v0    # "visibility":I
    :catch_4f
    move-exception v1

    goto :goto_41
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 841
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 844
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    .line 846
    return-void
.end method

.method public invalidate()V
    .registers 3

    .prologue
    .line 1005
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 1008
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_e

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1011
    :cond_e
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 9

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 732
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 734
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 735
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 737
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    .line 744
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 752
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    .line 760
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    .line 769
    const-string/jumbo v3, "toolbox_apps"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 770
    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 771
    const-string/jumbo v3, "touch_exploration_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 772
    const-string v3, "kids_home_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 774
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 775
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 780
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 781
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 782
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    .line 785
    iget-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v3, :cond_82

    .line 786
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 793
    :goto_81
    return-void

    .line 788
    :cond_82
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 789
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x2bc

    add-long/2addr v4, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_81
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 826
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 828
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040855

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v1, 0x10409ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 831
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2c

    .line 832
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 834
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    .line 835
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 837
    :cond_2c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 798
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTwToolBoxLongPressPanel:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TwToolBoxLongPressPanel;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 800
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 801
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v5, 0x0

    .line 805
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 807
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 808
    .local v0, "orientation":I
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 809
    if-lez p1, :cond_2b

    if-lez p2, :cond_2b

    .line 810
    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 811
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_x_ratio"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    .line 812
    .local v1, "ratioX":F
    cmpl-float v2, v1, v5

    if-nez v2, :cond_28

    .line 813
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveDefaultCenterPosition()V

    .line 815
    :cond_28
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 822
    .end local v1    # "ratioX":F
    :cond_2b
    :goto_2b
    return-void

    .line 817
    :cond_2c
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    if-eq v2, v0, :cond_2b

    .line 818
    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 819
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 820
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    goto :goto_2b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1018
    .local v0, "action":I
    packed-switch v0, :pswitch_data_5e

    .line 1025
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    .line 1026
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    .line 1028
    .local v2, "y":I
    if-nez v0, :cond_1d

    .line 1029
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchDown(II)V

    .line 1032
    :cond_1d
    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v5, :cond_29

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v5, :cond_29

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v5, :cond_4d

    .line 1034
    :cond_29
    if-eq v0, v4, :cond_2d

    if-ne v0, v6, :cond_4c

    .line 1036
    :cond_2d
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1037
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    if-ne v4, v5, :cond_3d

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    if-eqz v4, :cond_4c

    .line 1038
    :cond_3d
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    invoke-direct {p0, v6, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    .line 1039
    const-string/jumbo v4, "toolbox"

    const-string v5, "Recovered LongPressPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_4c
    :goto_4c
    :pswitch_4c
    return v3

    .line 1045
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_4d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_55

    .line 1046
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchMove(II)V

    :cond_53
    :goto_53
    move v3, v4

    .line 1052
    goto :goto_4c

    .line 1048
    :cond_55
    if-eq v0, v4, :cond_59

    if-ne v0, v6, :cond_53

    .line 1049
    :cond_59
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    goto :goto_53

    .line 1018
    nop

    :pswitch_data_5e
    .packed-switch 0x7
        :pswitch_4c
        :pswitch_a
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2264
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2266
    if-nez p2, :cond_1e

    .line 2267
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2268
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2269
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2270
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2277
    :goto_1d
    return-void

    .line 2272
    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2273
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2274
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2275
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionAndromeda()V

    goto :goto_1d
.end method

.method public registerCallback()V
    .registers 5

    .prologue
    .line 375
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setInitVSync()V

    .line 380
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v2, :cond_19

    .line 381
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 384
    :cond_19
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 385
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_25

    .line 386
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    .line 389
    :cond_25
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 390
    .local v1, "sipIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_3a

    .line 392
    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 416
    :cond_3a
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    .line 419
    return-void
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    .line 589
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_11

    .line 590
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 591
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 593
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1d

    const-wide/16 v0, 0x1f4

    :goto_19
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 594
    return-void

    .line 593
    :cond_1d
    const-wide/16 v0, 0xa

    goto :goto_19
.end method

.method public unregisterCallback()V
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    .line 424
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_16

    .line 425
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 428
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_21

    .line 429
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    .line 434
    return-void
.end method
