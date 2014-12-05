.class public Lcom/android/keyguard/KeyguardHostView;
.super Lcom/android/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$22;,
        Lcom/android/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUGXPORT:Z

.field protected static mBackupPINButton:Landroid/widget/Button;

.field protected static mForgotPatternButton:Landroid/widget/Button;

.field public static mHelpTextView:Landroid/widget/TextView;

.field public static mIsAutoWipe:Z

.field private static mIsBlockToResetByContextualWidgetUpdated:Z

.field public static mIsKidsMode:Z

.field public static mMessageArea:Landroid/widget/TextView;

.field public static mSwipeLockShowingBeforeTimeout:Z

.field public static mVoiceHelpTextView:Landroid/widget/TextView;

.field public static sCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field protected static sEmergencyButtonArea:Landroid/widget/LinearLayout;


# instance fields
.field private final MAX_WIDGETS:I

.field private countryCode:Ljava/lang/String;

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAddedDefaultWidget:Z

.field private mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field protected mClientGeneration:I

.field private mContextualMonitorCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field public mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDialogTheme:I

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

.field private mEnableFallback:Z

.field private mExpandChallengeView:Landroid/widget/ImageButton;

.field private mFMMPhoneNumber:Ljava/lang/String;

.field private mGuidetext:Landroid/widget/TextView;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsCarrierLockEnabled:Z

.field private mIsCarrierLockPlusEnabled:Z

.field private mIsEasyUxOn:Z

.field private mIsFMMEnabled:Z

.field private mIsMultipleLockOn:Z

.field private mIsTalkbackDrvModeOn:Z

.field private mIsVerifyUnlockOnly:Z

.field private mIsVoiceUnlockOn:Z

.field private mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field private mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

.field private mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;

.field private mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenOverlay:Landroid/view/View;

.field private mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

.field private mMaintext:Landroid/widget/TextView;

.field private mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

.field private mNeedToAddShotCutWidget:Z

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

.field private mOwnerInfo:Landroid/widget/TextView;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPostBootCompletedRunnable:Ljava/lang/Runnable;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mResetStateLockedRunnable:Ljava/lang/Runnable;

.field private mSafeModeEnabled:Z

.field private mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

.field private mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

.field private mSecTravelInfo:Lcom/android/keyguard/sec/SecTravelInfo;

.field private mSecWidgetContainer:Landroid/widget/FrameLayout;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

.field private mSecurityViewArea:Landroid/view/View;

.field private mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field protected mShowSecurityWhenReturn:Z

.field private final mSktPhoneNumber:Ljava/lang/String;

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTimeZoneAlertDialog:Landroid/app/AlertDialog;

.field private mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

.field mtelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 164
    sput-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    .line 165
    sput-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    .line 224
    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsBlockToResetByContextualWidgetUpdated:Z

    .line 266
    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    .line 275
    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 278
    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsKidsMode:Z

    .line 280
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    iput v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 170
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    .line 181
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 203
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    .line 226
    iput-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 233
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    .line 240
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAddedDefaultWidget:Z

    .line 246
    iput-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 248
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    .line 249
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    .line 255
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    .line 262
    const-string v0, "1599-0011"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSktPhoneNumber:Ljava/lang/String;

    .line 462
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$2;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 512
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$3;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContextualMonitorCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    .line 1112
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$8;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    .line 1178
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$9;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 1774
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$12;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$12;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 2222
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$13;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    .line 2252
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$14;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$14;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 2646
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$18;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$18;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    .line 3196
    iput-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3197
    iput-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3327
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$21;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$21;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    .line 297
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_89

    const-string v0, "KeyguardHostView"

    const-string v3, "KeyguardHostView()"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_89
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 305
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    .line 307
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 309
    if-eqz v0, :cond_b0

    .line 310
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    .line 311
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    .line 314
    :cond_b0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    .line 319
    :try_start_b6
    const-string v0, "system"

    .line 320
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "system"

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_c7} :catch_1f0

    move-result-object v0

    .line 329
    :goto_c8
    new-instance v3, Landroid/appwidget/AppWidgetHost;

    const v4, 0x4b455947

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 332
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/sec/ContextualEventManager;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 334
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 336
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 338
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    .line 340
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_setup_complete"

    invoke-static {v0, v3, v2, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1f7

    move v0, v1

    :goto_106
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1fa

    move v0, v2

    :goto_115
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enabled_accessibility_services"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_136

    .line 349
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    .line 350
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-eqz v0, :cond_1fd

    .line 351
    const-string v0, "KeyguardHostView"

    const-string v3, "tb on"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_136
    :goto_136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_206

    move v0, v1

    :goto_143
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    .line 360
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_163

    const-string v0, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsMultipleLockOn is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_face_with_voice"

    invoke-static {v0, v3, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_170

    move v2, v1

    :cond_170
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    .line 366
    const-string v0, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsVoiceUnlockOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInitialTransportState()V

    .line 370
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v0, :cond_19a

    .line 371
    const-string v0, "KeyguardHostView"

    const-string v2, "Keyguard widgets disabled by safe mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_19a
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a7

    .line 374
    const-string v0, "KeyguardHostView"

    const-string v2, "Keyguard widgets disabled by DPM"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1a7
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b4

    .line 377
    const-string v0, "KeyguardHostView"

    const-string v2, "Keyguard secure camera disabled by DPM"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1b4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 380
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    .line 381
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 400
    :cond_1d4
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I

    .line 405
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 407
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 408
    return-void

    .line 323
    :catch_1f0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, p1

    .line 326
    goto/16 :goto_c8

    :cond_1f7
    move v0, v2

    .line 340
    goto/16 :goto_106

    :cond_1fa
    move v0, v1

    .line 343
    goto/16 :goto_115

    .line 353
    :cond_1fd
    const-string v0, "KeyguardHostView"

    const-string v3, "tb off"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_136

    :cond_206
    move v0, v2

    .line 358
    goto/16 :goto_143
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardHostView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/CarrierText;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSelectorView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardHostView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardHostView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->reportFailedUnlockAttempt()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityModel;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardHostView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->performWipeout(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardHostView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/keyguard/KeyguardHostView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardHostView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardHostView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 152
    invoke-static {p0}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 152
    sput-boolean p0, Lcom/android/keyguard/KeyguardHostView;->mIsBlockToResetByContextualWidgetUpdated:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    return-void
.end method

.method private addCarrierLockPlusWidgets()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2396
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2397
    const-string v1, "KeyguardHostView"

    const-string v2, "HostView addCarrierLockPlus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    const v1, 0x7f030008

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2399
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_96

    .line 2400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2401
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_30

    .line 2402
    const-string v0, "KeyguardHostView"

    const-string v2, "dismiss mSecContextualEventContainer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2409
    :cond_30
    :goto_30
    const v0, 0x7f0b0034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMaintext:Landroid/widget/TextView;

    .line 2411
    const-string v0, "kr"

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 2412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMaintext:Landroid/widget/TextView;

    const v2, 0x7f06002d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2418
    :goto_4d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->parsingCarrierLockPlusMsg()V

    .line 2419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedSKTPasswordExists()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2420
    const-string v0, "KeyguardHostView"

    const-string v2, "HostView SKTPassword NOT exist!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.FindingLostPhonePlus.SAVELOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2422
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2424
    :cond_7b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockPlusInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 2425
    const v0, 0x7f0b0035

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mOwnerInfo:Landroid/widget/TextView;

    .line 2426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2427
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 2428
    return-void

    .line 2406
    :cond_96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    goto :goto_30

    .line 2413
    :cond_9c
    const-string v0, "cn"

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2414
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMaintext:Landroid/widget/TextView;

    const v2, 0x7f06002e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4d

    .line 2416
    :cond_af
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMaintext:Landroid/widget/TextView;

    const v2, 0x7f06002f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4d
.end method

.method private addCarrierLockWidgets()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2431
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2433
    const v1, 0x7f030006

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2434
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_68

    .line 2435
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2436
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v1, :cond_29

    .line 2437
    const-string v1, "KeyguardHostView"

    const-string v2, "dismiss mSecContextualEventContainer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2444
    :cond_29
    :goto_29
    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    .line 2445
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1599-0011"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2446
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    if-eqz v1, :cond_64

    .line 2447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    if-nez v1, :cond_6e

    .line 2448
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2453
    :cond_64
    :goto_64
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 2454
    return-void

    .line 2441
    :cond_68
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    goto :goto_29

    .line 2450
    :cond_6e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mGuidetext:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_64
.end method

.method private addContextualWidgetsFromSettings()V
    .registers 6

    .prologue
    .line 2507
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreImplementationForTest()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2530
    :cond_a
    :goto_a
    return-void

    .line 2511
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 2514
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v2

    .line 2516
    if-nez v2, :cond_1f

    .line 2517
    const-string v0, "KeyguardHostView"

    const-string v1, "Problem reading widgets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 2519
    :cond_1f
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_22
    if-ltz v0, :cond_a

    .line 2520
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2f

    .line 2521
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 2519
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 2526
    :cond_2f
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2c
.end method

.method private addDefaultStatusWidget(I)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 2486
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAddedDefaultWidget:Z

    if-ne v0, v3, :cond_6

    .line 2504
    :cond_5
    :goto_5
    return-void

    .line 2489
    :cond_6
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAddedDefaultWidget:Z

    .line 2491
    const/4 v0, 0x0

    .line 2492
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 2493
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v2

    .line 2494
    if-eqz v2, :cond_17

    .line 2495
    invoke-direct {p0, v2, v1, v3}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 2498
    :cond_17
    if-nez v0, :cond_5

    .line 2499
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2500
    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2501
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    goto :goto_5
.end method

.method private addDefaultWidgets()V
    .registers 8

    .prologue
    const/4 v5, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2281
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v0, :cond_32

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2282
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2283
    const v3, 0x7f030001

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2284
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2285
    const v3, 0x7f0b0023

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2286
    new-instance v3, Lcom/android/keyguard/KeyguardHostView$15;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardHostView$15;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2299
    :cond_32
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2301
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_enable_camera_widget"

    invoke-static {v0, v3, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_ab

    move v0, v1

    .line 2302
    :goto_47
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2303
    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableCameraWidget : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cameraWidgetType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_aa

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v4, :cond_aa

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-nez v4, :cond_aa

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 2306
    if-ne v3, v1, :cond_ad

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 2307
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 2308
    if-eqz v0, :cond_aa

    .line 2309
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 2325
    :cond_aa
    :goto_aa
    return-void

    :cond_ab
    move v0, v2

    .line 2301
    goto :goto_47

    .line 2311
    :cond_ad
    if-nez v3, :cond_aa

    .line 2312
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    .line 2313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getShortcutAppWidgetId()I

    move-result v0

    .line 2315
    if-eqz v0, :cond_aa

    .line 2316
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1, v3}, Lcom/android/keyguard/sec/ShortCutWidgetFrame;->create(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetManager;)Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    move-result-object v0

    .line 2317
    if-eqz v0, :cond_aa

    .line 2318
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 2319
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    goto :goto_aa
.end method

.method private addFMMWidgets()V
    .registers 9

    .prologue
    const v5, 0x7f0b0067

    const/4 v4, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 2332
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2333
    const-string v1, "KeyguardHostView"

    const-string v2, "addFMMWidgets"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const v1, 0x7f030010

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_cf

    .line 2339
    const-string v0, "KeyguardHostView"

    const-string v2, "addFMMWidgets -- addView"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_3b

    .line 2342
    const-string v0, "KeyguardHostView"

    const-string v2, "dismiss mSecContextualEventContainer"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2345
    :cond_3b
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v2, v0

    .line 2351
    :goto_42
    const v0, 0x7f0b0064

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2352
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2353
    const v0, 0x7f0b0065

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2354
    const v5, 0x7f0b0066

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2357
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_pcw_Message"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2359
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2361
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "lock_pcw_phone"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x7f0600fc

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2365
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2367
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111003d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2371
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mFMMPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e4

    :cond_bb
    move v0, v4

    .line 2375
    :goto_bc
    if-eqz v5, :cond_dd

    if-nez v0, :cond_dd

    .line 2376
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2378
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$16;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$16;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2393
    :goto_ce
    return-void

    .line 2347
    :cond_cf
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2348
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    move-object v2, v0

    goto/16 :goto_42

    .line 2390
    :cond_dd
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2391
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ce

    :cond_e4
    move v0, v3

    goto :goto_bc
.end method

.method private addWidget(IIZ)Z
    .registers 7

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2191
    if-eqz v0, :cond_15

    .line 2192
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 2193
    invoke-virtual {p0, v0, p2}, Lcom/android/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    .line 2194
    const/4 v0, 0x1

    .line 2202
    :goto_14
    return v0

    .line 2196
    :cond_15
    if-eqz p3, :cond_4b

    .line 2197
    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  was null for user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deleting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 2200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    .line 2202
    :cond_4b
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private addWidgetsFromSettings()V
    .registers 6

    .prologue
    .line 2533
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2534
    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 2557
    :cond_16
    :goto_16
    return-void

    .line 2538
    :cond_17
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    .line 2541
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 2543
    if-nez v2, :cond_2b

    .line 2544
    const-string v0, "KeyguardHostView"

    const-string v1, "Problem reading widgets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2546
    :cond_2b
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_2e
    if-ltz v0, :cond_16

    .line 2547
    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3b

    .line 2548
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 2546
    :goto_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 2553
    :cond_3b
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_38
.end method

.method private allocateIdForDefaultAppWidget()I
    .registers 6

    .prologue
    .line 2561
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2562
    new-instance v1, Landroid/content/ComponentName;

    const v2, 0x7f06000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f060010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 2570
    :try_start_21
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_27

    .line 2576
    :goto_26
    return v0

    .line 2571
    :catch_27
    move-exception v1

    .line 2572
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when trying to bind default AppWidget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 2574
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private cameraDisabledByDpm()Z
    .registers 2

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private cleanupAppWidgetIds()V
    .registers 11

    .prologue
    .line 428
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v7, :cond_5

    .line 451
    :cond_4
    return-void

    .line 435
    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v4

    .line 436
    .local v4, "appWidgetIdsInKeyguardSettings":[I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v3

    .line 437
    .local v3, "appWidgetIdsInContextualSettings":[I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 438
    .local v1, "appWidgetIdInFallback":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v2

    .line 439
    .local v2, "appWidgetIdsBoundToHost":[I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getShortcutAppWidgetId()I

    move-result v6

    .line 440
    .local v6, "shortcutWidgetId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_24
    array-length v7, v2

    if-ge v5, v7, :cond_4

    .line 441
    aget v0, v2, v5

    .line 442
    .local v0, "appWidgetId":I
    invoke-static {v4, v0}, Lcom/android/keyguard/KeyguardHostView;->contains([II)Z

    move-result v7

    if-nez v7, :cond_56

    invoke-static {v3, v0}, Lcom/android/keyguard/KeyguardHostView;->contains([II)Z

    move-result v7

    if-nez v7, :cond_56

    if-eq v1, v0, :cond_56

    if-eq v6, v0, :cond_56

    .line 446
    const-string v7, "KeyguardHostView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 440
    :cond_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_24
.end method

.method private static contains([II)Z
    .registers 7
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget v3, v0, v1

    .line 455
    .local v3, "value":I
    if-ne v3, p1, :cond_b

    .line 456
    const/4 v4, 0x1

    .line 459
    .end local v3    # "value":I
    :goto_a
    return v4

    .line 454
    .restart local v3    # "value":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 459
    .end local v3    # "value":I
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private enableUserSelectorIfNecessary()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2983
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3095
    :cond_8
    :goto_8
    return-void

    .line 2987
    :cond_9
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsKidsMode:Z

    if-eqz v0, :cond_15

    .line 2988
    const-string v0, "KeyguardHostView"

    const-string v1, "Don\'t draw multi user selector by Kids mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2993
    :cond_15
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/multiuser/MultiUserManager;->multipleUsersAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2994
    const-string v0, "KeyguardHostView"

    const-string v1, "MDM blocks multiuser mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3000
    :cond_29
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_43

    move v0, v5

    .line 3001
    :goto_39
    if-eqz v0, :cond_45

    .line 3002
    const-string v0, "KeyguardHostView"

    const-string v1, "Emergency mode blocks multiuser mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_43
    move v0, v3

    .line 3000
    goto :goto_39

    .line 3007
    :cond_45
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3008
    if-nez v0, :cond_59

    .line 3011
    const-string v0, "KeyguardHostView"

    const-string v1, "user service is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3016
    :cond_59
    invoke-virtual {v0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 3017
    if-nez v6, :cond_6f

    .line 3018
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 3019
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3020
    const-string v1, "KeyguardHostView"

    const-string v2, "list of users is null."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 3024
    :cond_6f
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3025
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3027
    if-nez v1, :cond_89

    .line 3028
    if-nez v0, :cond_89

    .line 3031
    const-string v0, "KeyguardHostView"

    const-string v1, "can\'t find guest_selector in layout. 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3036
    :cond_89
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 3040
    const/4 v0, 0x2

    if-lt v4, v0, :cond_110

    .line 3041
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_95
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 3042
    if-eqz v0, :cond_10e

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x64

    if-lt v0, v8, :cond_10e

    .line 3043
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_ac
    move v2, v0

    goto :goto_95

    .line 3046
    :cond_ae
    sub-int v0, v4, v2

    .line 3047
    const-string v7, "KeyguardHostView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cu = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", su = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :goto_d2
    if-le v0, v5, :cond_8

    .line 3051
    instance-of v0, v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v0, :cond_f3

    move-object v0, v1

    .line 3052
    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 3053
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3054
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 3056
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$20;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$20;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 3083
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V

    goto/16 :goto_8

    .line 3085
    :cond_f3
    const-string v0, "KeyguardHostView"

    const-string v2, "KeyguardMultiUserSelectorView out"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    if-nez v1, :cond_105

    .line 3089
    const-string v0, "KeyguardHostView"

    const-string v1, "could not find the user_selector."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3091
    :cond_105
    const-string v0, "KeyguardHostView"

    const-string v1, "user_selector is the wrong type."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10e
    move v0, v2

    goto :goto_ac

    :cond_110
    move v0, v4

    goto :goto_d2
.end method

.method private ensureTransportPresentOrRemoved(I)Z
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2823
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2910
    :cond_a
    :goto_a
    return v1

    .line 2827
    :cond_b
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->isMusicShowing()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isMusicWidgetAdded()Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_23
    move v4, v2

    .line 2829
    :goto_24
    if-ne p1, v6, :cond_73

    move v3, v2

    .line 2830
    :goto_27
    if-ne p1, v2, :cond_75

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_75

    move v0, v2

    .line 2832
    :goto_30
    if-nez v4, :cond_c5

    if-nez v3, :cond_36

    if-eqz v0, :cond_c5

    .line 2834
    :cond_36
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2835
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_a

    .line 2839
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2841
    if-ltz v0, :cond_16f

    .line 2842
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 2846
    :goto_52
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v3

    .line 2847
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_a

    .line 2851
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 2852
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->setMusicWidgetAdded(Z)V

    .line 2853
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setMusicWidgetAdded(Z)V

    :cond_6f
    move v1, v2

    .line 2855
    goto :goto_a

    :cond_71
    move v4, v1

    .line 2827
    goto :goto_24

    :cond_73
    move v3, v1

    .line 2829
    goto :goto_27

    :cond_75
    move v0, v1

    .line 2830
    goto :goto_30

    .line 2842
    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 2858
    :cond_7a
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    const-string v3, "music"

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/keyguard/sec/ContextualEventManager;->setContextualMusicEvent(Ljava/lang/String;Landroid/view/View;)V

    .line 2859
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_ae

    .line 2861
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2863
    if-ltz v0, :cond_16c

    .line 2864
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 2867
    :goto_9f
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v4

    .line 2869
    if-nez v4, :cond_b4

    .line 2870
    const-string v0, "KeyguardHostView"

    const-string v1, "Problem reading widgets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    :goto_ae
    move v1, v2

    .line 2880
    goto/16 :goto_a

    .line 2864
    :cond_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    .line 2872
    :cond_b4
    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    :goto_b7
    if-ltz v3, :cond_c1

    .line 2873
    aget v5, v4, v3

    const/4 v6, -0x2

    if-eq v5, v6, :cond_a

    .line 2872
    add-int/lit8 v3, v3, -0x1

    goto :goto_b7

    .line 2877
    :cond_c1
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    goto :goto_ae

    .line 2881
    :cond_c5
    if-eqz v4, :cond_123

    if-eqz p1, :cond_cc

    const/4 v0, -0x1

    if-ne p1, v0, :cond_123

    .line 2882
    :cond_cc
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v0, :cond_d7

    const-string v0, "KeyguardHostView"

    const-string v2, "remove transport"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_d7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 2885
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_a

    .line 2888
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    .line 2889
    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 2890
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setMusicWidgetAdded(Z)V

    .line 2891
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setMusicWidgetAdded(Z)V

    .line 2892
    :cond_fa
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 2893
    sput-boolean v1, Lcom/android/keyguard/KeyguardHostView;->mIsBlockToResetByContextualWidgetUpdated:Z

    goto/16 :goto_a

    .line 2897
    :cond_109
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    const-string v2, "music"

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    .line 2898
    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 2899
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    .line 2900
    :cond_123
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_14f

    if-eq p1, v6, :cond_14f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_14f

    if-eqz v4, :cond_14f

    .line 2901
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    const-string v2, "music"

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    .line 2902
    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 2903
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a

    .line 2904
    :cond_14f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez v4, :cond_a

    if-eq p1, v6, :cond_a

    .line 2905
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsBlockToResetByContextualWidgetUpdated:Z

    if-nez v0, :cond_168

    .line 2906
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 2908
    :cond_168
    sput-boolean v1, Lcom/android/keyguard/KeyguardHostView;->mIsBlockToResetByContextualWidgetUpdated:Z

    goto/16 :goto_a

    :cond_16c
    move v0, v1

    goto/16 :goto_9f

    :cond_16f
    move v0, v1

    goto/16 :goto_52
.end method

.method private findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2915
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-nez v3, :cond_6

    .line 2925
    :cond_5
    :goto_5
    return-object v2

    .line 2918
    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_5

    .line 2919
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2920
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2921
    .local v1, "widgetFrame":Landroid/view/View;
    instance-of v3, v1, Lcom/android/keyguard/CameraWidgetFrame;

    if-eqz v3, :cond_2b

    .line 2922
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/CameraWidgetFrame;

    goto :goto_5

    .line 2918
    .end local v1    # "widgetFrame":Landroid/view/View;
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .registers 6

    .prologue
    .line 3200
    const-string v0, "KeyguardHostView"

    const-string v1, "findSDCard ()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_17

    .line 3202
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3204
    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_61

    .line 3205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 3206
    array-length v2, v1

    .line 3207
    const/4 v0, 0x0

    :goto_23
    if-ge v0, v2, :cond_61

    .line 3208
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_5e

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 3210
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSDCard ( storageVolumes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    aget-object v0, v1, v0

    .line 3216
    :goto_5d
    return-object v0

    .line 3207
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 3215
    :cond_61
    const-string v0, "KeyguardHostView"

    const-string v1, "findSDCard ( null )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method private getAppropriateWidgetPage(I)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2934
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v0, :cond_26

    .line 2935
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_7a

    .line 2936
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 2937
    :goto_10
    if-ge v0, v2, :cond_24

    .line 2938
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_21

    .line 2978
    :cond_20
    :goto_20
    return v0

    .line 2937
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2943
    :cond_24
    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 2949
    :cond_26
    const/4 v0, 0x2

    if-ne p1, v0, :cond_47

    .line 2950
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_34

    const-string v0, "KeyguardHostView"

    const-string v2, "Music playing, show transport"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_89

    .line 2952
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    .line 2954
    if-nez v2, :cond_7c

    .line 2955
    const-string v0, "KeyguardHostView"

    const-string v2, "Problem reading widgets"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    :cond_47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_8b

    .line 2971
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2972
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2973
    add-int/lit8 v0, v0, -0x1

    .line 2975
    :cond_5d
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_20

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show right-most page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_7a
    move v0, v1

    .line 2945
    goto :goto_20

    .line 2957
    :cond_7c
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_7f
    if-ltz v0, :cond_47

    .line 2958
    aget v3, v2, v0

    const/4 v4, -0x2

    if-eq v3, v4, :cond_20

    .line 2957
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    :cond_89
    move v0, v1

    .line 2965
    goto :goto_20

    :cond_8b
    move v0, v1

    .line 2978
    goto :goto_20
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .registers 5
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 946
    const/4 v1, 0x0

    .line 947
    .local v1, "disabledFeatures":I
    if-eqz p1, :cond_e

    .line 948
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    .line 949
    .local v0, "currentUser":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 951
    .end local v0    # "currentUser":I
    :cond_e
    return v1
.end method

.method private getInitialTransportState()V
    .registers 5

    .prologue
    .line 418
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    .line 420
    .local v0, "dcs":Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    :goto_f
    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 423
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_3b

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pbstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_3b
    return-void

    .line 420
    :cond_3c
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v1, 0x2

    goto :goto_f

    :cond_46
    const/4 v1, 0x1

    goto :goto_f
.end method

.method private getInsertPageIndex()I
    .registers 3

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2476
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2477
    if-gez v0, :cond_13

    .line 2478
    const/4 v0, 0x0

    .line 2482
    :goto_12
    return v0

    .line 2480
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2129
    sget-object v2, Lcom/android/keyguard/KeyguardHostView$22;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_cc

    .line 2185
    :goto_d
    return v0

    .line 2131
    :pswitch_e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2132
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2133
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    const-string v2, "com.nttdocomo.android.dhome"

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->isPreferedActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v0, :cond_28

    .line 2135
    const v0, 0x7f030029

    goto :goto_d

    .line 2138
    :cond_28
    const v0, 0x7f030036

    goto :goto_d

    .line 2141
    :pswitch_2c
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_3c

    move v0, v1

    .line 2142
    :cond_3c
    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2143
    const v0, 0x7f030021

    goto :goto_d

    .line 2145
    :cond_4a
    const v0, 0x7f030020

    goto :goto_d

    .line 2148
    :pswitch_4e
    const v0, 0x7f030023

    goto :goto_d

    .line 2149
    :pswitch_52
    const v0, 0x7f03001f

    goto :goto_d

    .line 2151
    :pswitch_56
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-eqz v0, :cond_62

    .line 2152
    :cond_5e
    const v0, 0x7f03000d

    goto :goto_d

    .line 2154
    :cond_62
    const v0, 0x7f03000e

    goto :goto_d

    .line 2156
    :pswitch_66
    const v0, 0x7f03002b

    goto :goto_d

    .line 2158
    :pswitch_6a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v0

    if-ne v0, v1, :cond_7e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_7e

    .line 2160
    const v0, 0x7f030030

    goto :goto_d

    .line 2162
    :cond_7e
    const/high16 v0, 0x7f030000

    goto :goto_d

    .line 2164
    :pswitch_81
    const v0, 0x7f030002

    goto :goto_d

    .line 2165
    :pswitch_85
    const v0, 0x7f030025

    goto :goto_d

    .line 2166
    :pswitch_89
    const v0, 0x7f03000f

    goto :goto_d

    .line 2167
    :pswitch_8d
    const v0, 0x7f030007

    goto/16 :goto_d

    .line 2168
    :pswitch_92
    const v0, 0x7f030005

    goto/16 :goto_d

    .line 2169
    :pswitch_97
    const v0, 0x7f030004

    goto/16 :goto_d

    .line 2171
    :pswitch_9c
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_a5

    .line 2172
    const v0, 0x7f03003a

    goto/16 :goto_d

    .line 2174
    :cond_a5
    const v0, 0x7f03002d

    goto/16 :goto_d

    .line 2176
    :pswitch_aa
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_b3

    .line 2177
    const v0, 0x7f03003b

    goto/16 :goto_d

    .line 2179
    :cond_b3
    const v0, 0x7f03002e

    goto/16 :goto_d

    .line 2180
    :pswitch_b8
    const v0, 0x7f03002c

    goto/16 :goto_d

    .line 2181
    :pswitch_bd
    const v0, 0x7f030032

    goto/16 :goto_d

    .line 2182
    :pswitch_c2
    const v0, 0x7f030031

    goto/16 :goto_d

    .line 2183
    :pswitch_c7
    const v0, 0x7f03002f

    goto/16 :goto_d

    .line 2129
    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_bd
        :pswitch_4e
        :pswitch_52
        :pswitch_66
        :pswitch_c7
        :pswitch_6a
        :pswitch_56
        :pswitch_81
        :pswitch_85
        :pswitch_89
        :pswitch_8d
        :pswitch_92
        :pswitch_97
        :pswitch_c2
        :pswitch_9c
        :pswitch_aa
        :pswitch_b8
        :pswitch_e
    .end packed-switch
.end method

.method private getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;
    .registers 4

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-nez v0, :cond_20

    .line 2462
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2463
    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTransportControlView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    .line 2465
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    new-instance v1, Lcom/android/keyguard/KeyguardHostView$17;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHostView$17;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->setTransportControlCallback(Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;)V

    .line 2471
    :cond_20
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    return-object v0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .registers 9

    .prologue
    const/4 v2, 0x0

    const v6, 0x7f0b002d

    .line 1828
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 1829
    const/4 v0, 0x0

    .line 1830
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v1, v2

    .line 1831
    :goto_10
    if-ge v1, v4, :cond_26

    .line 1832
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v3, :cond_9f

    .line 1833
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 1837
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v1

    .line 1838
    if-nez v0, :cond_a3

    if-eqz v1, :cond_a3

    .line 1839
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1840
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_50

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflating id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_50
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1842
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_6a

    .line 1843
    const v0, 0x7f0b0041

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    check-cast v0, Landroid/view/ViewStub;

    .line 1844
    if-eqz v0, :cond_6a

    .line 1845
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1848
    :cond_6a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1849
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    move-object v0, v1

    .line 1850
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    move-object v1, v0

    .line 1853
    :goto_76
    instance-of v0, v1, Lcom/android/keyguard/KeyguardSelectorView;

    if-eqz v0, :cond_8a

    move-object v0, v1

    .line 1854
    check-cast v0, Lcom/android/keyguard/KeyguardSelectorView;

    .line 1855
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1856
    if-nez v2, :cond_87

    .line 1857
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1858
    :cond_87
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSelectorView;->setCarrierArea(Landroid/view/View;)V

    .line 1863
    :cond_8a
    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v0, :cond_9e

    move-object v0, v1

    .line 1864
    check-cast v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    .line 1865
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1866
    if-nez v2, :cond_9b

    .line 1867
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1868
    :cond_9b
    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->setCarrierArea(Landroid/view/View;)V

    .line 1872
    :cond_9e
    return-object v1

    .line 1831
    :cond_9f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    :cond_a3
    move-object v1, v0

    goto :goto_76
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2069
    sget-object v2, Lcom/android/keyguard/KeyguardHostView$22;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ce

    .line 2124
    :goto_d
    return v0

    .line 2071
    :pswitch_e
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2072
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2073
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    const-string v2, "com.nttdocomo.android.dhome"

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->isPreferedActivity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v0, :cond_28

    .line 2075
    const v0, 0x7f0b00bd

    goto :goto_d

    .line 2078
    :cond_28
    const v0, 0x7f0b00e8

    goto :goto_d

    .line 2081
    :pswitch_2c
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand_pattern_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_3c

    move v0, v1

    .line 2082
    :cond_3c
    if-ne v0, v1, :cond_4a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 2083
    const v0, 0x7f0b00aa

    goto :goto_d

    .line 2085
    :cond_4a
    const v0, 0x7f0b00a8

    goto :goto_d

    .line 2087
    :pswitch_4e
    const v0, 0x7f0b00b0

    goto :goto_d

    .line 2088
    :pswitch_52
    const v0, 0x7f0b00a5

    goto :goto_d

    .line 2090
    :pswitch_56
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVoiceUnlockOn:Z

    if-eqz v0, :cond_5e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-eqz v0, :cond_62

    .line 2091
    :cond_5e
    const v0, 0x7f0b004b

    goto :goto_d

    .line 2093
    :cond_62
    const v0, 0x7f0b004f

    goto :goto_d

    .line 2095
    :pswitch_66
    const v0, 0x7f0b00c1

    goto :goto_d

    .line 2097
    :pswitch_6a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v0

    if-ne v0, v1, :cond_7e

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_7e

    .line 2099
    const v0, 0x7f0b00ca

    goto :goto_d

    .line 2101
    :cond_7e
    const v0, 0x7f0b001c

    goto :goto_d

    .line 2103
    :pswitch_82
    const v0, 0x7f0b0024

    goto :goto_d

    .line 2104
    :pswitch_86
    const v0, 0x7f0b00b4

    goto :goto_d

    .line 2105
    :pswitch_8a
    const v0, 0x7f0b0055

    goto :goto_d

    .line 2106
    :pswitch_8e
    const v0, 0x7f0b0030

    goto/16 :goto_d

    .line 2107
    :pswitch_93
    const v0, 0x7f0b002a

    goto/16 :goto_d

    .line 2108
    :pswitch_98
    const v0, 0x7f0b0028

    goto/16 :goto_d

    .line 2110
    :pswitch_9d
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_a6

    .line 2111
    const v0, 0x7f0b00ef

    goto/16 :goto_d

    .line 2113
    :cond_a6
    const v0, 0x7f0b00c6

    goto/16 :goto_d

    .line 2115
    :pswitch_ab
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_b4

    .line 2116
    const v0, 0x7f0b00f0

    goto/16 :goto_d

    .line 2118
    :cond_b4
    const v0, 0x7f0b00c8

    goto/16 :goto_d

    .line 2119
    :pswitch_b9
    const v0, 0x7f0b00c5

    goto/16 :goto_d

    .line 2120
    :pswitch_be
    const v0, 0x7f0b00cc

    goto/16 :goto_d

    .line 2121
    :pswitch_c3
    const v0, 0x7f0b00cb

    goto/16 :goto_d

    .line 2122
    :pswitch_c8
    const v0, 0x7f0b00c9

    goto/16 :goto_d

    .line 2069
    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_be
        :pswitch_4e
        :pswitch_52
        :pswitch_66
        :pswitch_c8
        :pswitch_6a
        :pswitch_56
        :pswitch_82
        :pswitch_86
        :pswitch_8a
        :pswitch_8e
        :pswitch_93
        :pswitch_98
        :pswitch_c3
        :pswitch_9d
        :pswitch_ab
        :pswitch_b9
        :pswitch_e
    .end packed-switch
.end method

.method private goToSimCardManagement()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_29

    .line 3358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3359
    const-string v1, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3360
    const-string v1, "PINPUKUnlock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3361
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3362
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_29

    .line 3363
    sput-boolean v2, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 3364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 3367
    :cond_29
    return-void
.end method

.method private static final isMusicPlaying(I)Z
    .registers 2
    .param p0, "playbackState"    # I

    .prologue
    .line 531
    packed-switch p0, :pswitch_data_8

    .line 540
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 538
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 531
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isSimUnlockMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .registers 3
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 1876
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isWidgetEnabled()Z
    .registers 2

    .prologue
    .line 967
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 968
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsMultipleLockOn:Z

    .line 970
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v0

    goto :goto_8
.end method

.method private maybeEnableAddButton()V
    .registers 3

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    if-nez v0, :cond_c

    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    .line 932
    :cond_c
    return-void
.end method

.method private numWidgets()I
    .registers 5

    .prologue
    .line 2270
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2271
    .local v0, "childCount":I
    const/4 v2, 0x0

    .line 2272
    .local v2, "widgetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_17

    .line 2273
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2274
    add-int/lit8 v2, v2, 0x1

    .line 2272
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2277
    :cond_17
    return v2
.end method

.method private performWipeout(I)V
    .registers 6

    .prologue
    .line 3232
    const-string v0, "KeyguardHostView"

    const-string v1, "performWipeout (  )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    const/4 v1, 0x0

    .line 3234
    const-string v0, "com.android.email"

    .line 3235
    const-string v2, "com.android.email.SecurityPolicy$PolicyAdmin"

    .line 3236
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3238
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    .line 3239
    if-eqz v0, :cond_23

    if-le v0, p1, :cond_84

    .line 3240
    :cond_23
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3242
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v0

    .line 3245
    :goto_35
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 3246
    if-eqz v1, :cond_64

    if-nez v0, :cond_64

    .line 3247
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->updateProgressDialog()V

    .line 3248
    const-string v0, "KeyguardHostView"

    const-string v2, "performWipeout ( ExternalStorageFormatter.FORMAT_AND_FACTORY_RESET )"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3250
    const-string v2, "storage_volume"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3251
    const-string v1, "always_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3252
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3253
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3261
    :goto_63
    return-void

    .line 3255
    :cond_64
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 3256
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_63

    .line 3258
    :cond_77
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_63

    :cond_84
    move v0, v1

    goto :goto_35
.end method

.method private removeSubUser(I)V
    .registers 4

    .prologue
    .line 3342
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 3344
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 3348
    :goto_15
    return-void

    .line 3345
    :catch_16
    move-exception v0

    .line 3346
    const-string v0, "KeyguardHostView"

    const-string v1, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private reportFailedUnlockAttempt()V
    .registers 14

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1391
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 1394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 1395
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v0, :cond_a4

    move v0, v1

    .line 1396
    :goto_17
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v4, :cond_a7

    move v3, v1

    .line 1398
    :goto_1c
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    .line 1400
    if-lez v5, :cond_aa

    move v6, v1

    .line 1402
    :goto_30
    if-nez v6, :cond_36

    sget-boolean v4, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v4, :cond_ac

    .line 1403
    :cond_36
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1408
    :goto_3c
    sget-boolean v8, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v8, :cond_58

    const-string v8, "KeyguardHostView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportFailedPatternAttempt: #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_58
    const-string v8, "KeyguardHostView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failedAttemptsBeforeWipe -- : #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsAutoWipe = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    sget-boolean v8, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v8, :cond_84

    if-gtz v5, :cond_84

    .line 1412
    const/16 v5, 0xa

    .line 1418
    :cond_84
    if-lez v5, :cond_b3

    sub-int/2addr v5, v4

    .line 1423
    :goto_87
    const/4 v8, 0x5

    if-lt v5, v8, :cond_8e

    sget-boolean v8, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v8, :cond_eb

    .line 1429
    :cond_8e
    if-lez v5, :cond_b7

    .line 1430
    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/KeyguardHostView;->showAlmostAtWipeDialog(II)V

    .line 1499
    :goto_93
    if-nez v6, :cond_99

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v0, :cond_174

    .line 1500
    :cond_99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 1505
    :goto_9e
    if-eqz v2, :cond_a3

    .line 1506
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showTimeoutDialog()V

    .line 1508
    :cond_a3
    return-void

    :cond_a4
    move v0, v2

    .line 1395
    goto/16 :goto_17

    :cond_a7
    move v3, v2

    .line 1396
    goto/16 :goto_1c

    :cond_aa
    move v6, v2

    .line 1400
    goto :goto_30

    .line 1405
    :cond_ac
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 1418
    :cond_b3
    const v5, 0x7fffffff

    goto :goto_87

    .line 1432
    :cond_b7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordRecoverable()Z

    move-result v0

    if-ne v1, v0, :cond_d6

    .line 1433
    const-string v0, "KeyguardHostView"

    const-string v3, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->recoverPassword()V

    .line 1435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryLock(Z)V

    .line 1436
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_93

    .line 1440
    :cond_d6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1442
    if-nez v0, :cond_e7

    .line 1444
    const-string v0, "KeyguardHostView"

    const-string v1, "Too many unlock attempts; device will be wiped!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->showWipeDialog(I)V

    goto :goto_93

    .line 1447
    :cond_e7
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->removeSubUser(I)V

    goto :goto_93

    .line 1452
    :cond_eb
    rem-int/lit8 v5, v4, 0x5

    if-nez v5, :cond_133

    move v5, v1

    .line 1454
    :goto_f0
    if-eqz v0, :cond_fc

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mEnableFallback:Z

    if-eqz v8, :cond_fc

    .line 1455
    if-ne v4, v11, :cond_135

    .line 1456
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAlmostAtAccountLoginDialog()V

    move v5, v2

    .line 1465
    :cond_fc
    :goto_fc
    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 1466
    if-eqz v4, :cond_111

    rem-int/lit8 v0, v4, 0x5

    if-nez v0, :cond_111

    .line 1468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    .line 1470
    :cond_111
    if-ne v4, v11, :cond_143

    .line 1471
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAlmostAtBackupPininDialog()V

    move v0, v2

    .line 1481
    :goto_117
    if-eqz v3, :cond_179

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedFingerprintPasswordExists()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 1482
    if-eqz v4, :cond_12c

    rem-int/lit8 v3, v4, 0x5

    if-nez v3, :cond_12c

    .line 1484
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    .line 1486
    :cond_12c
    if-ne v4, v11, :cond_15d

    .line 1487
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAlmostAtAlternativePasswordinDialog()V

    goto/16 :goto_93

    :cond_133
    move v5, v2

    .line 1452
    goto :goto_f0

    .line 1458
    :cond_135
    if-lt v4, v12, :cond_fc

    .line 1459
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 1460
    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    move v5, v2

    .line 1462
    goto :goto_fc

    .line 1473
    :cond_143
    if-lt v4, v12, :cond_17c

    .line 1474
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1476
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_15b

    sget-object v0, Lcom/android/keyguard/KeyguardHostView;->sEmergencyButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15b

    .line 1477
    sget-object v0, Lcom/android/keyguard/KeyguardHostView;->sEmergencyButtonArea:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_15b
    move v0, v2

    .line 1478
    goto :goto_117

    .line 1489
    :cond_15d
    if-lt v4, v12, :cond_179

    .line 1490
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 1491
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    .line 1492
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_93

    .line 1502
    :cond_174
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedUnlockAttempt()V

    goto/16 :goto_9e

    :cond_179
    move v2, v0

    goto/16 :goto_93

    :cond_17c
    move v0, v5

    goto :goto_117
.end method

.method private setBackButtonEnabled(Z)V
    .registers 4

    .prologue
    .line 935
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 939
    :goto_6
    return-void

    .line 936
    :cond_7
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const v1, -0x400001

    and-int/2addr v0, v1

    :goto_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_6

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    goto :goto_11
.end method

.method private setInsets(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 2726
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2727
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 2728
    :cond_10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 2730
    :cond_1b
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 2731
    .local v0, "cameraWidget":Lcom/android/keyguard/CameraWidgetFrame;
    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setInsets(Landroid/graphics/Rect;)V

    .line 2732
    :cond_26
    return-void
.end method

.method private shouldEnableAddWidget()Z
    .registers 3

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1f

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->isWidgetEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private shouldEnableMenuKey()Z
    .registers 5

    .prologue
    .line 3119
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3120
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3121
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v1

    .line 3122
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/enable_menu_key"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 3123
    if-eqz v0, :cond_20

    if-nez v1, :cond_20

    if-eqz v2, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private showAlmostAtAccountLoginDialog()V
    .registers 6

    .prologue
    .line 1362
    .line 1365
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0600b6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    return-void
.end method

.method private showAlmostAtAlternativePasswordinDialog()V
    .registers 7

    .prologue
    .line 1381
    .line 1384
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1385
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0600de

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1387
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    return-void
.end method

.method private showAlmostAtBackupPininDialog()V
    .registers 7

    .prologue
    .line 1371
    .line 1374
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1375
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f0600dd

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1320
    .line 1322
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v0, :cond_16

    if-ne p2, v4, :cond_16

    .line 1323
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1331
    :goto_11
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    return-void

    .line 1324
    :cond_16
    if-ne p1, v4, :cond_2a

    .line 1325
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0600b3

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 1328
    :cond_2a
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0600b4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private showAppropriateWidgetPage()V
    .registers 5

    .prologue
    .line 2781
    iget v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 2782
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)Z

    move-result v2

    .line 2783
    .local v2, "transportAdded":Z
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    .line 2784
    .local v0, "pageToShow":I
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2785
    const/4 v2, 0x0

    .line 2787
    :cond_11
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_1d

    if-nez v2, :cond_1d

    .line 2788
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 2799
    :cond_1c
    :goto_1c
    return-void

    .line 2789
    :cond_1d
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2792
    new-instance v3, Lcom/android/keyguard/KeyguardHostView$19;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardHostView$19;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 4

    .prologue
    .line 1556
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "KeyguardHostView"

    const-string v1, "showBackupSecurity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getBackupSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1559
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_19

    .line 1560
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1562
    :cond_19
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_1f

    .line 1563
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1565
    :cond_1f
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v1, :cond_25

    .line 1566
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1568
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1569
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2c

    .line 1278
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1280
    :cond_2c
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1281
    return-void
.end method

.method private showNextSecurityScreenOrFinish(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1584
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNextSecurityScreenOrFinish("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    :cond_25
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_6e

    .line 1588
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1590
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1591
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v0, :cond_43

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v3

    if-eqz v3, :cond_69

    :cond_43
    move v0, v2

    :goto_44
    move v3, v0

    move v0, v2

    .line 1652
    :goto_46
    if-eqz v3, :cond_101

    .line 1655
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 1660
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    if-eqz v0, :cond_10e

    .line 1661
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 1662
    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    .line 1664
    :goto_5d
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_68

    .line 1665
    if-eqz v0, :cond_f8

    .line 1666
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDonePending()V

    .line 1679
    :cond_68
    :goto_68
    return-void

    .line 1594
    :cond_69
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    move v0, v1

    goto :goto_44

    .line 1596
    :cond_6e
    if-eqz p1, :cond_f4

    .line 1597
    sget-object v0, Lcom/android/keyguard/KeyguardHostView$22;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_116

    .line 1645
    const-string v0, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad security screen "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fail safe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    :goto_a0
    move v0, v2

    move v3, v1

    goto :goto_46

    :pswitch_a3
    move v0, v2

    move v3, v2

    .line 1614
    goto :goto_46

    .line 1621
    :pswitch_a6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1622
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_f0

    .line 1623
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTabletEnabledSpass()Z

    move-result v3

    if-eqz v3, :cond_cf

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_be

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_cf

    :cond_be
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v3, :cond_cf

    .line 1626
    const-string v0, "KeyguardHostView"

    const-string v1, "reset in showNextSecurityScreenIfPresent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, v5}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->resetStateLocked(Landroid/os/Bundle;)V

    goto :goto_68

    .line 1631
    :cond_cf
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1632
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v3

    if-nez v3, :cond_de

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHKFeature()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 1633
    :cond_de
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_111

    .line 1635
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1636
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    move v3, v1

    goto/16 :goto_46

    :cond_f0
    move v0, v1

    move v3, v2

    .line 1642
    goto/16 :goto_46

    .line 1650
    :cond_f4
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto :goto_a0

    .line 1668
    :cond_f8
    sput-boolean v1, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 1669
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto/16 :goto_68

    .line 1673
    :cond_101
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1674
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    goto/16 :goto_68

    :cond_10e
    move v0, v1

    goto/16 :goto_5d

    :cond_111
    move v0, v1

    move v3, v1

    goto/16 :goto_46

    .line 1597
    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a3
        :pswitch_a6
        :pswitch_a6
        :pswitch_a6
    .end packed-switch
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 11

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1886
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showSecurityScreen("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_26
    sput-object p1, Lcom/android/keyguard/KeyguardHostView;->sCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 1890
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_2d

    .line 1975
    :goto_2c
    return-void

    .line 1892
    :cond_2d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v1

    .line 1893
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v4

    .line 1894
    iput-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 1896
    if-eqz v1, :cond_55

    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->isSimUnlockMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->isSimUnlockMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1900
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/widget/ViewAnimator;->removeView(Landroid/view/View;)V

    .line 1904
    :cond_55
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f080008

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 1905
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_7c

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_7c

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_7c

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_7c

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_7c

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_7c

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_102

    :cond_7c
    move v0, v3

    .line 1912
    :goto_7d
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v6, :cond_10b

    .line 1913
    if-eqz v0, :cond_85

    if-nez v5, :cond_89

    :cond_85
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v6, :cond_105

    .line 1914
    :cond_89
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1933
    :cond_8e
    :goto_8e
    if-eqz v0, :cond_13c

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/high16 v6, 0x2000000

    or-int/2addr v0, v6

    :goto_97
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1937
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_a6

    .line 1938
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-nez v5, :cond_146

    move v0, v3

    :goto_a3
    invoke-virtual {v6, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 1942
    :cond_a6
    if-eqz v1, :cond_b0

    .line 1943
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 1944
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1947
    :cond_b0
    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v0

    .line 1948
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_bd

    .line 1949
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 1952
    :cond_bd
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1953
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 1956
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1958
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v1

    .line 1959
    :goto_d0
    if-ge v2, v0, :cond_e3

    .line 1960
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v1, :cond_149

    .line 1961
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1966
    :cond_e3
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_eb

    .line 1968
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 1970
    :cond_eb
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_f3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_fe

    :cond_f3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_fe

    .line 1972
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 1974
    :cond_fe
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto/16 :goto_2c

    :cond_102
    move v0, v2

    .line 1905
    goto/16 :goto_7d

    .line 1916
    :cond_105
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8e

    .line 1919
    :cond_10b
    if-eqz v0, :cond_10f

    if-nez v5, :cond_11f

    :cond_10f
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v6, :cond_11f

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v6, :cond_11f

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v6, :cond_11f

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLockPlus:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v6, :cond_131

    .line 1921
    :cond_11f
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v6, :cond_8e

    .line 1922
    const-string v6, "KeyguardHostView"

    const-string v7, "dismiss mSecContextualEventContainer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8e

    .line 1926
    :cond_131
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v6, :cond_8e

    .line 1927
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8e

    .line 1933
    :cond_13c
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const v6, -0x2000001

    and-int/2addr v0, v6

    goto/16 :goto_97

    :cond_146
    move v0, v2

    .line 1938
    goto/16 :goto_a3

    .line 1959
    :cond_149
    add-int/lit8 v2, v2, 0x1

    goto :goto_d0
.end method

.method private showTimeoutDialog()V
    .registers 8

    .prologue
    const v0, 0x7f0600b0

    const/4 v1, 0x0

    .line 1284
    const/16 v2, 0x1e

    .line 1287
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    .line 1289
    sget-object v4, Lcom/android/keyguard/KeyguardHostView$22;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_54

    move v0, v1

    .line 1310
    :goto_18
    :pswitch_18
    if-eqz v0, :cond_46

    .line 1311
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x7f0600df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1312
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardHostView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_46
    return-void

    .line 1292
    :pswitch_47
    const v0, 0x7f0600b2

    .line 1293
    goto :goto_18

    .line 1298
    :pswitch_4b
    const v0, 0x7f0600b1

    .line 1299
    goto :goto_18

    .line 1301
    :pswitch_4f
    const v0, 0x7f06010e

    .line 1302
    goto :goto_18

    .line 1289
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_47
        :pswitch_47
        :pswitch_18
        :pswitch_4b
        :pswitch_4f
        :pswitch_18
    .end packed-switch
.end method

.method private showWipeDialog(I)V
    .registers 8

    .prologue
    .line 1338
    .line 1339
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10405ad

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000d

    new-instance v2, Lcom/android/keyguard/KeyguardHostView$11;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardHostView$11;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardHostView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardHostView$10;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1357
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1358
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1359
    return-void
.end method

.method private updateAndAddWidgets()V
    .registers 3

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    .line 903
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultWidgets()V

    .line 904
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addContextualWidgetsFromSettings()V

    .line 905
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    .line 906
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->maybeEnableAddButton()V

    .line 907
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 910
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_29

    .line 911
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v1

    if-nez v1, :cond_3a

    const/4 v0, 0x1

    .line 912
    .local v0, "isWidgetEnable":Z
    :goto_1d
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 913
    const/4 v0, 0x1

    .line 915
    :cond_24
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setEnableChallengeDragging(Z)V

    .line 919
    .end local v0    # "isWidgetEnable":Z
    :cond_29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 923
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->isSecure()Z

    move-result v1

    if-nez v1, :cond_39

    .line 924
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 926
    :cond_39
    return-void

    .line 911
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 991
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v0, :cond_21

    .line 992
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityView;

    .line 993
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 994
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 995
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 996
    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 1003
    :goto_1c
    return-void

    .line 998
    :cond_1d
    invoke-interface {p1, v1}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_1c

    .line 1001
    :cond_21
    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a KeyguardSecurityView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private updateSecurityViews()V
    .registers 4

    .prologue
    .line 984
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 985
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 986
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityView(Landroid/view/View;)V

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 988
    :cond_15
    return-void
.end method

.method private widgetsDisabled()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 959
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 960
    .local v1, "disabledByLowRamDevice":Z
    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_28

    move v0, v3

    .line 962
    .local v0, "disabledByDpm":Z
    :goto_d
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->isWidgetEnabled()Z

    move-result v5

    if-nez v5, :cond_2a

    move v2, v3

    .line 963
    .local v2, "disabledByUser":Z
    :goto_14
    if-nez v1, :cond_26

    if-nez v0, :cond_26

    if-nez v2, :cond_26

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v5, :cond_26

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    if-nez v5, :cond_26

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    if-eqz v5, :cond_27

    :cond_26
    move v4, v3

    :cond_27
    return v4

    .end local v0    # "disabledByDpm":Z
    .end local v2    # "disabledByUser":Z
    :cond_28
    move v0, v4

    .line 960
    goto :goto_d

    .restart local v0    # "disabledByDpm":Z
    :cond_2a
    move v2, v4

    .line 962
    goto :goto_14
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .registers 4
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "pageIndex"    # I

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 1110
    return-void
.end method

.method public announceCurrentSecurityMethod()V
    .registers 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 412
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 415
    :cond_11
    return-void
.end method

.method public checkAppWidgetConsistency()V
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2580
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2581
    .local v2, "childCount":I
    const/4 v7, 0x0

    .line 2582
    .local v7, "widgetPageExists":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_1d

    .line 2583
    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v10

    if-eqz v10, :cond_97

    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->isContextualPage(I)Z

    move-result v10

    if-nez v10, :cond_97

    .line 2584
    const/4 v7, 0x1

    .line 2588
    :cond_1d
    if-nez v7, :cond_7f

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v10, :cond_7f

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    if-nez v10, :cond_7f

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    if-nez v10, :cond_7f

    .line 2589
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    .line 2591
    .local v4, "insertPageIndex":I
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v10

    if-nez v10, :cond_9b

    move v6, v8

    .line 2593
    .local v6, "userAddedWidgetsEnabled":Z
    :goto_36
    const/4 v0, 0x0

    .line 2595
    .local v0, "addedDefaultAppWidget":Z
    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v10, :cond_47

    .line 2596
    if-eqz v6, :cond_9d

    .line 2597
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 2598
    .local v1, "appWidgetId":I
    if-eqz v1, :cond_47

    .line 2599
    invoke-direct {p0, v1, v4, v8}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 2623
    .end local v1    # "appWidgetId":I
    :cond_47
    :goto_47
    if-nez v0, :cond_58

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v8, :cond_58

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    if-nez v8, :cond_58

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    if-nez v8, :cond_58

    .line 2624
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    .line 2628
    :cond_58
    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v8, :cond_7f

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v8, :cond_7f

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->isWidgetEnabled()Z

    move-result v8

    if-eqz v8, :cond_7f

    if-eqz v6, :cond_7f

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    if-nez v8, :cond_7f

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    if-nez v8, :cond_7f

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    if-nez v8, :cond_7f

    .line 2629
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8, v10, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    .line 2636
    .end local v0    # "addedDefaultAppWidget":Z
    .end local v4    # "insertPageIndex":I
    .end local v6    # "userAddedWidgetsEnabled":Z
    :cond_7f
    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    if-eqz v8, :cond_96

    .line 2637
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v11, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v8, v10, v11}, Lcom/android/keyguard/sec/ShortCutWidgetFrame;->create(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetManager;)Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    move-result-object v5

    .line 2639
    .local v5, "shortcutWidget":Landroid/view/View;
    if-eqz v5, :cond_96

    .line 2640
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v5}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    .line 2641
    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardHostView;->mNeedToAddShotCutWidget:Z

    .line 2644
    .end local v5    # "shortcutWidget":Landroid/view/View;
    :cond_96
    return-void

    .line 2582
    :cond_97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .restart local v4    # "insertPageIndex":I
    :cond_9b
    move v6, v9

    .line 2591
    goto :goto_36

    .line 2604
    .restart local v0    # "addedDefaultAppWidget":Z
    .restart local v6    # "userAddedWidgetsEnabled":Z
    :cond_9d
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    .line 2605
    .restart local v1    # "appWidgetId":I
    if-nez v1, :cond_b0

    .line 2606
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    .line 2607
    if-eqz v1, :cond_b0

    .line 2608
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    .line 2611
    :cond_b0
    if-eqz v1, :cond_47

    .line 2612
    invoke-direct {p0, v1, v4, v9}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    .line 2613
    if-nez v0, :cond_47

    .line 2614
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v8, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 2615
    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_47
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    .line 3099
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_19

    .line 3102
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3103
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_19

    .line 3104
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 3105
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3103
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3108
    .end local v0    # "count":I
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v2    # "i":I
    :cond_19
    return-void
.end method

.method public clearAppWidgetToShow()V
    .registers 2

    .prologue
    .line 2035
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 2036
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 3166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 3167
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->handleExternalCameraEvent(Landroid/view/MotionEvent;)V

    .line 3187
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 569
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 570
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_c

    .line 571
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 573
    :cond_c
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3288
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->isWidgetEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_32

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_32

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPass:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_32

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Signature:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_32

    .line 3294
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3295
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mResetStateLockedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3297
    :cond_32
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_e2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_e2

    .line 3302
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_eb

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 3303
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3304
    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchKeyEvent : getDevice is null!! or isExternal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->isExternal()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    if-eqz v0, :cond_eb

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    if-eqz v0, :cond_eb

    .line 3306
    const-string v0, "KeyguardHostView"

    const-string v3, "dispatchKeyEvent : blueTooth"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3311
    :goto_92
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sidesync_source_connect"

    invoke-static {v3, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_e7

    move v3, v2

    .line 3312
    :goto_a1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "KMS_SERVICE_CONNECTED"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_e9

    move v4, v1

    .line 3313
    :goto_b0
    if-nez v3, :cond_b4

    if-eqz v4, :cond_d7

    .line 3314
    :cond_b4
    const-string v0, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent : isSideSync ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isKms = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3318
    :cond_d7
    if-eqz v0, :cond_e2

    .line 3319
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_e2

    .line 3320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 3324
    :cond_e2
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_e7
    move v3, v1

    .line 3311
    goto :goto_a1

    :cond_e9
    move v4, v2

    .line 3312
    goto :goto_b0

    :cond_eb
    move v0, v2

    goto :goto_92
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 2721
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 2722
    const/4 v0, 0x1

    return v0
.end method

.method public getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .registers 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method public getUserActivityTimeout()J
    .registers 3

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_b

    .line 1173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    .line 1175
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public goToWidget(I)V
    .registers 3
    .param p1, "appWidgetId"    # I

    .prologue
    .line 3127
    iput p1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 3128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3129
    return-void
.end method

.method public handleBackKey()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3141
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->isHelpOverlayVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3159
    :cond_e
    :goto_e
    return v0

    .line 3144
    :cond_f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCFeature()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3146
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->goToSimCardManagement()V

    .line 3149
    :cond_1e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_30

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_30

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_38

    .line 3151
    :cond_30
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 3152
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    move v0, v1

    .line 3153
    goto :goto_e

    .line 3155
    :cond_38
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v3, :cond_e

    .line 3156
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    move v0, v1

    .line 3157
    goto :goto_e
.end method

.method public handleMenuKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3133
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3134
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showNextSecurityScreenOrFinish(Z)V

    .line 3135
    const/4 v0, 0x1

    .line 3137
    :cond_b
    return v0
.end method

.method public initializeSwitchingUserState(Z)V
    .registers 4
    .param p1, "switching"    # Z

    .prologue
    .line 1151
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v0, :cond_c

    .line 1152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 1154
    :cond_c
    return-void
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v0, :cond_18

    :cond_c
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public launchCamera()V
    .registers 4

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 3191
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 1013
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1015
    :try_start_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_a} :catch_a7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_a} :catch_b4

    .line 1024
    :goto_a
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1025
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1026
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContextualMonitorCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->registerCallback(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V

    .line 1028
    :cond_26
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->shouldShowPopupForDualClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1029
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_6e

    .line 1031
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1032
    const v2, 0x7f060117

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1033
    const v2, 0x7f060118

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1034
    const v2, 0x1040013

    new-instance v3, Lcom/android/keyguard/KeyguardHostView$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardHostView$6;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1046
    const v2, 0x1040009

    new-instance v3, Lcom/android/keyguard/KeyguardHostView$7;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardHostView$7;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1054
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 1055
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d9

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 1058
    :cond_6e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1059
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1063
    :cond_7b
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "set_shortcuts_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_c1

    move v0, v1

    .line 1065
    :goto_8b
    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    if-eqz v0, :cond_a6

    .line 1066
    new-instance v0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    .line 1067
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {p0, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1068
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewNone;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecCameraShortcut;->setAdditionalUnlockView(Lcom/android/keyguard/sec/KeyguardEffectViewNone;)V

    .line 1070
    :cond_a6
    return-void

    .line 1016
    :catch_a7
    move-exception v0

    .line 1017
    const-string v2, "KeyguardHostView"

    const-string v3, "Catched exception when startListening()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 1019
    :catch_b4
    move-exception v0

    .line 1020
    const-string v2, "KeyguardHostView"

    const-string v3, "Catched exception when startListening()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_a

    .line 1063
    :cond_c1
    const/4 v0, 0x0

    goto :goto_8b
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1074
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1076
    :try_start_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_9} :catch_5f

    .line 1085
    :goto_9
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1086
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1087
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeCallback()V

    .line 1089
    :cond_23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_46

    .line 1090
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1091
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1098
    :cond_34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const-string v2, " "

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1099
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const-string v2, " "

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1101
    iput-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 1103
    :cond_46
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_52

    .line 1104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mtelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1106
    :cond_52
    return-void

    .line 1077
    :catch_53
    move-exception v0

    .line 1078
    const-string v1, "KeyguardHostView"

    const-string v2, "Catched exception when stopListening()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 1080
    :catch_5f
    move-exception v0

    .line 1081
    const-string v1, "KeyguardHostView"

    const-string v2, "Catched exception when stopListening()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const v8, 0x7f0b0026

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 628
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 633
    :cond_15
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_3de

    move v0, v1

    :goto_25
    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsKidsMode:Z

    .line 638
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 639
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetPager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 640
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_63

    .line 641
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V

    .line 643
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/PagedView;->setDeleteDropTarget(Landroid/view/View;)V

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f000000

    invoke-virtual {v0, v3}, Lcom/android/keyguard/PagedView;->setMinScale(F)V

    .line 645
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 648
    :cond_63
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    .line 649
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_8b

    .line 650
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    .line 651
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setIsSecured(Z)V

    .line 655
    :cond_8b
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MultiPaneChallengeLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    .line 656
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    if-eqz v0, :cond_b4

    .line 657
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_3e1

    :cond_b0
    move v0, v1

    :goto_b1
    invoke-virtual {v3, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setIsSecured(Z)V

    .line 659
    :cond_b4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_3e4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    :goto_ba
    check-cast v0, Lcom/android/keyguard/ChallengeLayout;

    .line 660
    if-eqz v0, :cond_c3

    .line 661
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v3}, Lcom/android/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    .line 662
    :cond_c3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_d0

    .line 663
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    .line 664
    :cond_d0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V

    .line 665
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V

    .line 666
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 667
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSelectorView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSelectorView:Lcom/android/keyguard/KeyguardSelectorView;

    .line 668
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V

    .line 671
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 672
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 674
    if-eqz v0, :cond_11c

    instance-of v3, v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    if-eqz v3, :cond_11c

    .line 675
    check-cast v0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 677
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->setKeyguardHostView(Lcom/android/keyguard/KeyguardHostView;)V

    .line 679
    :cond_11c
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsKidsMode:Z

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    if-eqz v0, :cond_130

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 681
    const-string v0, "KeyguardHostView"

    const-string v3, "mMagazineCardView state is GONE by Kids mode"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_130
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_152

    .line 688
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isWidgetNavDisabled()Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 689
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 691
    :cond_14b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V

    .line 694
    :cond_152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V

    .line 695
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_164

    .line 696
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setKeyguardWidgetNavigation(Lcom/android/keyguard/sec/KeyguardWidgetNavigation;)V

    .line 700
    :cond_164
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mExpandChallengeView:Landroid/widget/ImageButton;

    .line 701
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mExpandChallengeView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_17a

    .line 702
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mExpandChallengeView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setExpandChallengeView(Landroid/widget/ImageButton;)V

    .line 705
    :cond_17a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 706
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->mForgotPatternButton:Landroid/widget/Button;

    .line 707
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->mBackupPINButton:Landroid/widget/Button;

    .line 708
    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->sEmergencyButtonArea:Landroid/widget/LinearLayout;

    .line 709
    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->mHelpTextView:Landroid/widget/TextView;

    .line 710
    const v0, 0x7f0b0048

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->mVoiceHelpTextView:Landroid/widget/TextView;

    .line 711
    const v0, 0x7f0b00a1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/keyguard/KeyguardHostView;->mMessageArea:Landroid/widget/TextView;

    .line 712
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecTravelInfo;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecTravelInfo:Lcom/android/keyguard/sec/SecTravelInfo;

    .line 715
    :cond_1cd
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->setBackButtonEnabled(Z)V

    .line 716
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecWidgetContainer:Landroid/widget/FrameLayout;

    .line 717
    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_1f5

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/ContextualEventContainer;->setIsSecured(Z)V

    .line 721
    :cond_1f5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    .line 722
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLockPlus:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v0, :cond_3e8

    .line 723
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->countryCode:Ljava/lang/String;

    .line 724
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    .line 725
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addCarrierLockPlusWidgets()V

    .line 738
    :cond_20c
    :goto_20c
    const-string v0, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsFMMEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsCarrierLockEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsCarrierLockPlusEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_418

    .line 741
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_40f

    .line 742
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    .line 758
    :goto_251
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v0

    if-eqz v0, :cond_41f

    .line 759
    invoke-virtual {p0, v2, v5}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(ZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 762
    :goto_25a
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 763
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    .line 765
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    .line 766
    const-string v0, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyguardHelpOverlay : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    if-eqz v0, :cond_293

    .line 768
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->setCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->updateHelpOverlay()V

    .line 775
    :cond_293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v4

    .line 777
    if-lez v4, :cond_424

    move v0, v1

    .line 779
    :goto_2a7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAutoWipeFeature()Z

    move-result v3

    if-eqz v3, :cond_42a

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_42a

    if-nez v0, :cond_42a

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    if-nez v3, :cond_42a

    .line 783
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "auto_swipe_main_user"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_427

    move v3, v1

    :goto_2ce
    sput-boolean v3, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    .line 789
    :goto_2d0
    if-eqz v0, :cond_42e

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v3, :cond_2e2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v3, :cond_2e2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v3, :cond_2e2

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SPassPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v3, :cond_42e

    .line 798
    :cond_2e2
    :goto_2e2
    const-string v3, "KeyguardHostView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTO_WIPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , IT Policy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    if-nez v1, :cond_30c

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v0, :cond_436

    .line 802
    :cond_30c
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy()I

    move-result v1

    .line 803
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_332

    .line 804
    const-string v0, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportFailedPatternAttempt: #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_332
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    if-eqz v0, :cond_467

    if-gtz v4, :cond_467

    .line 807
    const/16 v0, 0xa

    .line 810
    :goto_33a
    if-lez v0, :cond_431

    sub-int/2addr v0, v1

    .line 814
    :goto_33d
    if-gtz v0, :cond_349

    .line 816
    const-string v0, "KeyguardHostView"

    const-string v3, "Too many unlock attempts; device will be wiped!"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->showWipeDialog(I)V

    .line 823
    :cond_349
    :goto_349
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/ContextualEventManager;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 825
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v0, :cond_441

    .line 826
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 833
    :goto_35b
    :try_start_35b
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/lso/LockscreenOverlay;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/lso/LockscreenOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/lso/LockscreenOverlay;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_391

    .line 834
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    if-nez v0, :cond_37f

    .line 835
    new-instance v0, Lcom/sec/widget/lso/LockscreenOverlayView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/widget/lso/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    .line 836
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_37f

    const-string v0, "KeyguardHostView"

    const-string v1, "Creating Lockscreen overlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_37f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockScreenOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_391} :catch_448

    .line 848
    :cond_391
    :goto_391
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewArea:Landroid/view/View;

    .line 849
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 850
    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 851
    const v0, 0x7f0b00d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 852
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 853
    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    if-eqz v0, :cond_3d5

    move-object v0, v1

    .line 854
    check-cast v0, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    .line 856
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$5;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/keyguard/KeyguardHostView$5;-><init>(Lcom/android/keyguard/KeyguardHostView;Landroid/view/View;Landroid/view/View;)V

    .line 893
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->setCallback(Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;)V

    .line 894
    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    .line 897
    :cond_3d5
    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecCameraShortcut;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecCameraShortcut:Lcom/android/keyguard/sec/SecCameraShortcut;

    .line 898
    return-void

    :cond_3de
    move v0, v2

    .line 633
    goto/16 :goto_25

    :cond_3e1
    move v0, v2

    .line 657
    goto/16 :goto_b1

    .line 659
    :cond_3e4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    goto/16 :goto_ba

    .line 726
    :cond_3e8
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v0, :cond_3f3

    .line 727
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    .line 728
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addCarrierLockWidgets()V

    goto/16 :goto_20c

    .line 729
    :cond_3f3
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v0, :cond_3fe

    .line 730
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    .line 731
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addFMMWidgets()V

    goto/16 :goto_20c

    .line 733
    :cond_3fe
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsFMMEnabled:Z

    .line 734
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockPlusEnabled:Z

    .line 735
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mIsCarrierLockEnabled:Z

    .line 736
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_20c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_20c

    .line 746
    :cond_40f
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$4;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    goto/16 :goto_251

    .line 755
    :cond_418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_251

    .line 761
    :cond_41f
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    goto/16 :goto_25a

    :cond_424
    move v0, v2

    .line 777
    goto/16 :goto_2a7

    :cond_427
    move v3, v2

    .line 783
    goto/16 :goto_2ce

    .line 786
    :cond_42a
    sput-boolean v2, Lcom/android/keyguard/KeyguardHostView;->mIsAutoWipe:Z

    goto/16 :goto_2d0

    :cond_42e
    move v1, v2

    .line 796
    goto/16 :goto_2e2

    .line 810
    :cond_431
    const v0, 0x7fffffff

    goto/16 :goto_33d

    .line 820
    :cond_436
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    goto/16 :goto_349

    .line 828
    :cond_441
    const/high16 v0, 0x19000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_35b

    .line 841
    :catch_448
    move-exception v0

    .line 843
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_391

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lockscren Overlay creation fails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_391

    :cond_467
    move v0, v4

    goto/16 :goto_33a
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .prologue
    .line 2706
    instance-of v0, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    if-nez v0, :cond_8

    .line 2707
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2717
    :goto_7
    return-void

    .line 2710
    :cond_8
    check-cast p1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    .line 2711
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2712
    iget v0, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    .line 2713
    iget v0, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    .line 2714
    iget-object v0, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    .line 2715
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_3c

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState, transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    :cond_3c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 2691
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState, tstate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :cond_1e
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2693
    new-instance v1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2695
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->isMusicShowing()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isMusicWidgetAdded()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_43
    const/4 v0, 0x1

    .line 2698
    :goto_44
    if-eqz v0, :cond_57

    const/4 v0, 0x2

    :goto_47
    iput v0, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    .line 2699
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v0, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    .line 2700
    iget-object v0, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2701
    return-object v1

    .line 2695
    :cond_55
    const/4 v0, 0x0

    goto :goto_44

    .line 2698
    :cond_57
    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_47
.end method

.method public onScreenTurnedOff()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2005
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "KeyguardHostView"

    const-string v1, "screen off, instance %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_28
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 2011
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_47

    .line 2014
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 2015
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2016
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    .line 2020
    :cond_47
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 2021
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 2022
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    .line 2023
    if-eqz v0, :cond_5c

    .line 2024
    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    .line 2027
    :cond_5c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    if-eqz v0, :cond_65

    .line 2028
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->onScreenTurnedOff()V

    .line 2031
    :cond_65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 2032
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 4

    .prologue
    .line 1983
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 1985
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 1990
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1992
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_3e

    .line 1993
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    .line 1996
    :cond_3e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    if-eqz v0, :cond_47

    .line 1997
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardSecurityViewOverlay:Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSecurityViewOverlay;->onScreenTurnedOn()V

    .line 2000
    :cond_47
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 2001
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 558
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 559
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 560
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 561
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 562
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz v0, :cond_39

    :cond_28
    const/4 v0, 0x1

    .line 563
    :goto_29
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 564
    return v0

    :cond_39
    move v0, v1

    .line 562
    goto :goto_29
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_9

    .line 1164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 1166
    :cond_9
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2736
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2737
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v3, "KeyguardHostView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_a5

    const-string v0, "focused"

    :goto_1a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_25
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2740
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2741
    if-eqz p1, :cond_48

    .line 2742
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2743
    const-string v3, "com.sec.android.widgetapp.KeyguardClock_Start"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2744
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2750
    :cond_48
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_wallpaper_transparent"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_a9

    move v0, v1

    .line 2752
    :goto_57
    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPreloadedWallpaper="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    if-eqz p1, :cond_bc

    .line 2754
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v1}, Landroid/app/StatusBarManager;->setUseWindowTransGradation(Z)V

    .line 2755
    if-eqz v0, :cond_b1

    .line 2756
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_LockScreen_DisableStatusBarTransparent"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 2757
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->setTransGradationModeWindow(Z)V

    .line 2769
    :goto_89
    if-eqz p1, :cond_a4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v0, :cond_a4

    .line 2770
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 2772
    if-eqz v0, :cond_a2

    .line 2773
    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    .line 2774
    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 2776
    :cond_a2
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    .line 2778
    :cond_a4
    return-void

    .line 2737
    :cond_a5
    const-string v0, "unfocused"

    goto/16 :goto_1a

    :cond_a9
    move v0, v2

    .line 2750
    goto :goto_57

    .line 2759
    :cond_ab
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationModeWindow(Z)V

    goto :goto_89

    .line 2762
    :cond_b1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->setTransGradationModeColorWindow(Z)V

    .line 2763
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->setTransGradationModeWindow(Z)V

    goto :goto_89

    .line 2766
    :cond_bc
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->setUseWindowTransGradation(Z)V

    goto :goto_89
.end method

.method public resetFocusedMagazineCardState()V
    .registers 2

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    if-eqz v0, :cond_9

    .line 1697
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMagazineCardView:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->resetFocusedMagazineCardState()V

    .line 1699
    :cond_9
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 1007
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1008
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateSecurityViews()V

    .line 1009
    return-void
.end method

.method protected setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
    .registers 2
    .param p1, "action"    # Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    .prologue
    .line 1824
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    .line 1825
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 2040
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showPrimarySecurityScreen(Z)V

    .line 2042
    return-void
.end method

.method public showAssistant()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 3170
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 3173
    if-nez v1, :cond_16

    .line 3183
    :goto_15
    return-void

    .line 3175
    :cond_16
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    const v3, 0x7f040001

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v0, v2, v3, v5, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 3179
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3181
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchActivityWithAnimation(Landroid/content/Intent;ZLandroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method public showBouncer(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    .line 1683
    return-void
.end method

.method public showBouncerFrameOnly(ZI)V
    .registers 4
    .param p1, "show"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1693
    :goto_6
    return-void

    .line 1689
    :cond_7
    if-eqz p1, :cond_f

    .line 1690
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    goto :goto_6

    .line 1692
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityViewContainer:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    goto :goto_6
.end method

.method showPrimarySecurityScreen(Z)V
    .registers 6

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1517
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_28
    if-nez p1, :cond_3c

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1522
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 1525
    :cond_3c
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1529
    :cond_42
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1530
    return-void
.end method

.method showPrimarySecurityScreen(ZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 6

    .prologue
    .line 1534
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_22
    if-nez p1, :cond_36

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1539
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p2

    .line 1542
    :cond_36
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1546
    :cond_3c
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1547
    return-void
.end method

.method public showUnlockAffordance()V
    .registers 3

    .prologue
    .line 3370
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-nez v0, :cond_14

    .line 3371
    const-string v0, "KeyguardHostView"

    const-string v1, "showUnlockAffordance() return because boot is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_13
    :goto_13
    return-void

    .line 3375
    :cond_14
    const-string v0, "KeyguardHostView"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    instance-of v0, v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    if-eqz v0, :cond_13

    .line 3377
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardUnlockView;->showUnlockAffordance()V

    goto :goto_13
.end method

.method updateHelpOverlay()V
    .registers 3

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    if-eqz v0, :cond_21

    .line 3265
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsEasyUxOn:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mIsTalkbackDrvModeOn:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardHelpOverlay;->checkOverlayCondition()Z

    move-result v0

    if-nez v0, :cond_22

    .line 3268
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3273
    :cond_21
    :goto_21
    return-void

    .line 3270
    :cond_22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardHelpOverlay:Lcom/android/keyguard/sec/KeyguardHelpOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_21
.end method

.method public updateProgressDialog()V
    .registers 4

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_34

    .line 3221
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardHostView;->mDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10407fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3227
    :cond_34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3228
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_9

    .line 1158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity()V

    .line 1160
    :cond_9
    return-void
.end method

.method public verifyUnlock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2046
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 2047
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_18

    .line 2048
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_17

    .line 2049
    sput-boolean v2, Lcom/android/keyguard/KeyguardHostView;->mSwipeLockShowingBeforeTimeout:Z

    .line 2050
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 2065
    :cond_17
    :goto_17
    return-void

    .line 2052
    :cond_18
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_32

    .line 2057
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_17

    .line 2058
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_17

    .line 2062
    :cond_32
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardHostView;->mIsVerifyUnlockOnly:Z

    .line 2063
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_17
.end method
