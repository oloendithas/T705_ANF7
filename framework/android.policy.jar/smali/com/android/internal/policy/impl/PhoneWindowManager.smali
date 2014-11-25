.class public Lcom/android/internal/policy/impl/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;,
        Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_MIRRORLINK_DOCK_HOME_CAPTURE:Z = true

.field private static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field private static final HIDE_SVIEW_COVER_ALWAYS:I = 0x1

.field private static final HIDE_SVIEW_COVER_NONE:I = 0x0

.field private static final HIDE_SVIEW_COVER_ONCE:I = 0x2

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISABLE_SIDE_KEY_PANEL:I = 0xa

.field private static final MSG_DISABLE_TOOL_BOX:I = 0x8

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_ENABLE_SIDE_KEY_PANEL:I = 0x9

.field private static final MSG_ENABLE_SPEN_GESTURE:I = 0x5

.field private static final MSG_ENABLE_TOOL_BOX:I = 0x7

.field private static final MSG_SSRM_NOTIFICATION:I = 0x6

.field static final PRINT_ANIM:Z = false

.field static final RECENT_APPS_BEHAVIOR_DISMISS:I = 0x2

.field static final RECENT_APPS_BEHAVIOR_DISMISS_AND_SWITCH:I = 0x3

.field static final RECENT_APPS_BEHAVIOR_EXIT_TOUCH_MODE_AND_SHOW:I = 0x1

.field static final RECENT_APPS_BEHAVIOR_SHOW_OR_DISMISS:I = 0x0

.field static final SAFE_DEBUG:Z

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_COVER:Ljava/lang/String; = "cover"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3ffffffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field public static isContainerOnlyMode:Z

.field public static isKnoxActivated:Z

.field static final localLOGV:Z

.field private static mCurrentUser:I

.field static final mTmpCocktailFrame:Landroid/graphics/Rect;

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static wasTopFullscreen:Z


# instance fields
.field public final ALARM_STARTED:[Ljava/lang/String;

.field public final ALARM_STOPPED:[Ljava/lang/String;

.field mAccelerometerDefault:Z

.field mAlarmReceivedFlag:Z

.field mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAppSwitchLongpressed:Z

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mButtonLightEnabled:Z

.field private mCanBeForceHide:Z

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private mCockBarServiceIntent:Landroid/content/Intent;

.field private mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

.field private mCocktailExtent:I

.field private mConsumeBackKeyUp:Z

.field mConsumeMenuKeyUp:Z

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mCoverCloseRotation:I

.field mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field mCoverState:Lcom/samsung/android/cover/CoverState;

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCurrentUserId:I

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasyOneHandEnabled:I

.field private mEnableMultiWindowUISetting:I

.field mEnableShiftMenuBugReports:Z

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field private mForceHideCenterbar:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field mForceTransientBars:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field private mHasCocktailBar:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHasSpcNavigationBar:Z

.field mHasSystemNavBar:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiPlugged:Z

.field mHeadless:Z

.field mHideLockScreen:Z

.field mHideLockScreenByCover:Z

.field mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHideSViewCover:I

.field mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field private mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mIsCoverManagerDisabled:Z

.field private mIsIsolatedSplitUsed:Z

.field private mIsKidsLauncherEnabled:Z

.field private mIsMWTrayOpen:Z

.field private mIsMultiWindowEnabled:Z

.field mIsSupportFlipCover:Z

.field mIsSupportSViewCover:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyboardTapVibePattern:[J

.field mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKidsModeReceiver:Landroid/content/BroadcastReceiver;

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLastTopIsRemoveNavigation:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field mLight:Landroid/os/IHardwareService;

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field private mMinimizeSize:I

.field mMirrorLinkDockEnablesAccelerometer:Z

.field mMirrorLinkDockIntent:Landroid/content/Intent;

.field mMirrorlinkDockRotation:I

.field mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

.field mMouseConnectedDock:I

.field mMouseDockedFlag:Z

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOldMouseDockedValue:Z

.field mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPanelOrientation:I

.field mPendingPowerKeyUpCanceled:Z

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPm:Landroid/os/PersonaManager;

.field mPointerLocationMode:I

.field mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPolicyKeyHandler:Landroid/os/Handler;

.field mPolicyKeyThread:Landroid/os/HandlerThread;

.field mPortraitRotation:I

.field mPowerConsumed:Z

.field mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field volatile mPowerKeyHandled:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field private final mPowerLongPress:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPreloadedRecentApps:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

.field mRecentAppsDialogHeldModifiers:I

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field private mScaleWindowResizableSize:I

.field mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field private mScreenshotChordEnabled:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotForLog:Ljava/lang/Runnable;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private mSealedModeReEnableVolumeUpKey:Z

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

.field mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field private mSideKeyPanelEnabled:I

.field final mSpcNaviBarHandleHeight:I

.field mSpcNaviBarVisibility:I

.field mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field final mSpecialKeysLock:Ljava/lang/Object;

.field mSpecialKeysMessenger:Landroid/os/Messenger;

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/internal/policy/impl/BarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStatusBarTransient:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTabletUXConcept:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mToolBoxMode:I

.field mToolBoxPackageList:Ljava/lang/String;

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTouchExplorationEnabled:Z

.field mTranslucentDecorEnabled:Z

.field mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

.field mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

.field mUiMode:I

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field private mVolumeDownKeyConsumedByScreenshotChord:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field mWifiDisplayConnected:Z

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    .line 264
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 265
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x40

    const-string v3, "android.intent.category.APP_BROWSER"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0x41

    const-string v3, "android.intent.category.APP_EMAIL"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xcf

    const-string v3, "android.intent.category.APP_CONTACTS"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd0

    const-string v3, "android.intent.category.APP_CALENDAR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd1

    const-string v3, "android.intent.category.APP_MUSIC"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const/16 v2, 0xd2

    const-string v3, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 365
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    .line 366
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKnoxActivated:Z

    .line 477
    sput v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    .line 610
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 611
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 612
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 613
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 614
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 615
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 616
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 618
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    .line 3204
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 6312
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    .line 8026
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    return-void

    .line 3204
    :array_94
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .registers 16

    .prologue
    const/high16 v2, 0x4000000

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    .line 284
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 294
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 315
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 319
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 321
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 325
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNaviBarVisibility:I

    .line 326
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNaviBarHandleHeight:I

    .line 327
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 329
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 330
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 331
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 332
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 333
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 334
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 337
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 338
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    .line 339
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    .line 340
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCockBarServiceIntent:Landroid/content/Intent;

    .line 343
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTabletUXConcept:Z

    .line 346
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    .line 347
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    .line 348
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScaleWindowResizableSize:I

    .line 350
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 351
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 352
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 353
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 354
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    .line 364
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    .line 371
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 373
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    .line 374
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    .line 375
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    .line 379
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    .line 383
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSideKeyPanelEnabled:I

    .line 390
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    .line 393
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 399
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 400
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 413
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 420
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 426
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 427
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v1, v0, v13

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    .line 432
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v1, v0, v13

    const-string v1, "com.android.deskclock.ALARM_DONE"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v3, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    .line 438
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 439
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 440
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 447
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 449
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 450
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 453
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 460
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 461
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 462
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 463
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 464
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 465
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 466
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 467
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 469
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 472
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 475
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 481
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 482
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    .line 505
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    .line 506
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    .line 507
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    .line 512
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 514
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 519
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 520
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    .line 523
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    .line 553
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxMode:I

    .line 554
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxPackageList:Ljava/lang/String;

    .line 601
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 603
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 606
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 608
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 622
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 634
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 654
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    .line 658
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 662
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    .line 663
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    .line 680
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 681
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 682
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 683
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 685
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 686
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 687
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 688
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 691
    iput v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .line 728
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 799
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 904
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    .line 911
    new-instance v6, Lcom/android/internal/policy/impl/BarController;

    const-string v7, "NavigationBar"

    const/high16 v8, 0x8000000

    const/high16 v9, 0x20000000

    const/high16 v10, -0x80000000

    const/4 v11, 0x2

    const/high16 v12, 0x8000000

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    .line 919
    new-instance v0, Lcom/android/internal/policy/impl/BarController;

    const-string v1, "CocktailBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    .line 1097
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    .line 1170
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1177
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    .line 1364
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1386
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1402
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 4372
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$15;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 4445
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$16;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 5790
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    .line 6507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 6508
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 6510
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$20;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 7249
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$23;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 7272
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$24;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 7306
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$25;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 7365
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$26;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 7380
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$27;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 7459
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    .line 7498
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$28;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    .line 7514
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$29;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    .line 7534
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$30;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$30;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    .line 8170
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 8275
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    .line 9710
    iput-object v14, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setStatusBarExpandable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyToSSRM(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$2502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 195
    sput p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->refreshKnoxInfo()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableToolBox()V

    return-void
.end method

.method static synthetic access$3000()Landroid/os/DVFSHelper;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .registers 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 195
    sput-object p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->cpuBooster:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCockBarServiceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->disableToolBox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSideKeyPanelState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method private applyLidSwitchState()V
    .registers 4

    .prologue
    .line 8318
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_11

    .line 8319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 8321
    :cond_11
    return-void
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "of"    # Landroid/graphics/Rect;
    .param p5, "cf"    # Landroid/graphics/Rect;
    .param p6, "vf"    # Landroid/graphics/Rect;
    .param p7, "dcf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    .line 5815
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5816
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .line 5817
    .local v0, "height":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    .line 5818
    .local v3, "width":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 5820
    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_26

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2e

    :cond_26
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_67

    if-ne v1, v6, :cond_67

    .line 5822
    :cond_2e
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 5823
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 5828
    :goto_38
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_66

    .line 5829
    const/16 v4, -0x2710

    iput v4, p6, Landroid/graphics/Rect;->top:I

    iput v4, p6, Landroid/graphics/Rect;->left:I

    iput v4, p5, Landroid/graphics/Rect;->top:I

    iput v4, p5, Landroid/graphics/Rect;->left:I

    iput v4, p4, Landroid/graphics/Rect;->top:I

    iput v4, p4, Landroid/graphics/Rect;->left:I

    iput v4, p3, Landroid/graphics/Rect;->top:I

    iput v4, p3, Landroid/graphics/Rect;->left:I

    .line 5830
    const/16 v4, 0x2710

    iput v4, p6, Landroid/graphics/Rect;->bottom:I

    iput v4, p6, Landroid/graphics/Rect;->right:I

    iput v4, p5, Landroid/graphics/Rect;->bottom:I

    iput v4, p5, Landroid/graphics/Rect;->right:I

    iput v4, p4, Landroid/graphics/Rect;->bottom:I

    iput v4, p4, Landroid/graphics/Rect;->right:I

    iput v4, p3, Landroid/graphics/Rect;->bottom:I

    iput v4, p3, Landroid/graphics/Rect;->right:I

    .line 5832
    :cond_66
    return-void

    .line 5825
    :cond_67
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 5826
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_38
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 5036
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_30

    .line 5039
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_31

    .line 5040
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 5041
    :cond_12
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1c

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 5042
    :cond_1c
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 5043
    :cond_26
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 5051
    :cond_30
    :goto_30
    return-void

    .line 5045
    :cond_31
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_3b

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 5046
    :cond_3b
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_45

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 5047
    :cond_45
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_4f

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 5048
    :cond_4f
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_30

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_30
.end method

.method private areTranslucentBarsAllowed()Z
    .registers 2

    .prologue
    .line 9011
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static awakenDreams()V
    .registers 2

    .prologue
    .line 3127
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 3128
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_9

    .line 3130
    :try_start_6
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3135
    :cond_9
    :goto_9
    return-void

    .line 3131
    :catch_a
    move-exception v1

    goto :goto_9
.end method

.method private canBeGetSViewCoverSize()Z
    .registers 2

    .prologue
    .line 9167
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_12

    .line 9168
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    if-eqz v0, :cond_12

    .line 9169
    const/4 v0, 0x1

    .line 9172
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .prologue
    .line 1910
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private cancelPendingPowerKeyAction()V
    .registers 3

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_b

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1047
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_12

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 1050
    :cond_12
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 3

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1095
    return-void
.end method

.method private cancelPendingScreenshotForLog()V
    .registers 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1082
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 5

    .prologue
    .line 4286
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_10

    .line 4287
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4289
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4290
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_10

    .line 4291
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 4299
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_10
    :goto_10
    return-void

    .line 4293
    :catch_11
    move-exception v0

    .line 4294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4296
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_10
.end method

.method private clearClearableFlagsLw()V
    .registers 3

    .prologue
    .line 8989
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 8990
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_f

    .line 8991
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 8992
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 8994
    :cond_f
    return-void
.end method

.method private disablePointerLocation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2123
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    if-eqz v1, :cond_e

    .line 2124
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2126
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 2129
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_23

    .line 2130
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2132
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2133
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2135
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_23
    return-void
.end method

.method private disableToolBox()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2157
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    if-eqz v1, :cond_e

    .line 2158
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2159
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    .line 2162
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    if-eqz v1, :cond_28

    .line 2163
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->unregisterCallback()V

    .line 2164
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2165
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2166
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .line 2168
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_28
    return-void
.end method

.method private enablePointerLocation()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 2093
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_60

    .line 2094
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2095
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 2097
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2100
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2101
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2105
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2106
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2107
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2110
    :cond_34
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2111
    const-string v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2112
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2114
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2115
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2117
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    .line 2118
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$PointerLocationPointerEventListener;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2120
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_60
    return-void
.end method

.method private enableToolBox()V
    .registers 4

    .prologue
    .line 2138
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    if-nez v1, :cond_3d

    .line 2139
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .line 2140
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2141
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2143
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    .line 2144
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxPointerEventListener:Lcom/android/internal/policy/impl/PhoneWindowManager$TwToolBoxPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2145
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->registerCallback()V

    .line 2146
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    .line 2153
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_3d
    return-void
.end method

.method private finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 7681
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7682
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7683
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    .line 7686
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_16

    .line 7690
    :goto_d
    if-eqz p1, :cond_12

    .line 7691
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 7693
    :cond_12
    return-void

    .line 7683
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 7687
    :catch_16
    move-exception v0

    goto :goto_d
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    .prologue
    .line 3192
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 3194
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_13

    .line 3195
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :cond_13
    return-object v0
.end method

.method private declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 9119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 9120
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 9121
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 9122
    const-string v0, "WindowManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9125
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 9119
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    .prologue
    .line 3138
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    .line 8103
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 8104
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 8105
    const/4 v2, 0x0

    .line 8111
    :cond_7
    return-object v2

    .line 8107
    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    .line 8108
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 8109
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 8108
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 4

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1087
    const/high16 v0, 0x40200000

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1090
    :goto_11
    return-wide v0

    :cond_12
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    goto :goto_11
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .prologue
    .line 4265
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_10

    .line 4266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 4268
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method static getTelephonyExtService()Lcom/android/internal/telephony/ITelephonyExt;
    .registers 3

    .prologue
    .line 3158
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v0

    .line 3160
    .local v0, "telephonyExtService":Lcom/android/internal/telephony/ITelephonyExt;
    if-nez v0, :cond_13

    .line 3161
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_13
    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 3143
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 3148
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3150
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 3151
    const-string v1, "WindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_13
    return-object v0
.end method

.method static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 3167
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3169
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 3170
    const-string v1, "WindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :cond_13
    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .registers 3

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1354
    :goto_c
    return-void

    .line 1322
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1323
    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block in kidsmode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1325
    :cond_1d
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1326
    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block in is not UserSetupComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1332
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1333
    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block in access control"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1339
    :cond_41
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVzwSetupRunning()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1340
    const-string v0, "WindowManager"

    const-string v1, "Home doubletap block when Verizon Setup Wizard Running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1346
    :cond_4f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1347
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    goto :goto_c
.end method

.method private handleDoubleTapOnPower()V
    .registers 4

    .prologue
    .line 1358
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoubleTapOnPower() / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    .line 1360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    .line 1362
    return-void
.end method

.method private handleLongPressOnHome()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1250
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1312
    :cond_e
    :goto_e
    return-void

    .line 1256
    :cond_f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1257
    const-string v3, "WindowManager"

    const-string v4, "Home longpress block in kidsmode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1262
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1263
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1264
    const-string v3, "WindowManager"

    const-string v4, "Home longpress block in emergency & upsm mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1270
    :cond_35
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1271
    const-string v3, "WindowManager"

    const-string v4, "Home longpress blocked by Interaction control"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1277
    :cond_45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1278
    const-string v3, "WindowManager"

    const-string v4, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1288
    :cond_53
    :try_start_53
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1289
    .local v2, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_5f

    .line 1290
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5c} :catch_77

    move-result v3

    if-nez v3, :cond_e

    .line 1298
    .end local v2    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1301
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v3, :cond_e

    .line 1302
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1303
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1305
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v3, v6, :cond_80

    .line 1306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_e

    .line 1294
    :catch_77
    move-exception v1

    .line 1295
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getTelephonyService()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .line 1307
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_80
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 1308
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_e
.end method

.method private handleLongPressOnMenu()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    .line 1217
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCameraOnTop()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1a

    .line 1218
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1220
    :cond_1a
    return-void
.end method

.method private handleTripleTapOnHome()V
    .registers 3

    .prologue
    .line 1376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 1377
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1378
    const-string v0, "WindowManager"

    const-string v1, "Home tripleTap : DeviceProvisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    .line 1384
    :goto_15
    return-void

    .line 1381
    :cond_16
    const-string v0, "WindowManager"

    const-string v1, "Home tripleTap : notDeviceProvisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_15
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 9712
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 9713
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9715
    :cond_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$43;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$43;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 9724
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9725
    return-void
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x1

    .line 4208
    invoke-virtual {p0, p2, p3, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    .line 4209
    .local v0, "actions":I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_14

    .line 4210
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    .line 4212
    .local v1, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_14

    .line 4216
    .end local v1    # "delayMillis":J
    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method private interceptPowerKeyDown(Z)V
    .registers 8
    .param p1, "handled"    # Z

    .prologue
    .line 1019
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1020
    if-nez p1, :cond_25

    .line 1022
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDisablePopupUI()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1033
    :goto_18
    return-void

    .line 1025
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 1030
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_18
.end method

.method private interceptPowerKeyUp(Z)Z
    .registers 5
    .param p1, "canceled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1036
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v1, :cond_f

    .line 1037
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    if-nez p1, :cond_f

    const/4 v0, 0x1

    .line 1040
    :cond_f
    return v0
.end method

.method private interceptScreenshotChord()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x96

    .line 1053
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_35

    .line 1055
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1056
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    .line 1058
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyConsumedByScreenshotChord:Z

    .line 1059
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1061
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    .end local v0    # "now":J
    :cond_35
    return-void
.end method

.method private interceptScreenshotLog()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x96

    .line 1067
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_35

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_35

    .line 1069
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1070
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_35

    .line 1072
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 1073
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotForLog()V

    .line 1075
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotForLog:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1078
    .end local v0    # "now":J
    :cond_35
    return-void
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 8063
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isCoverManagerDisabled()Z
    .registers 2

    .prologue
    .line 9151
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    return v0
.end method

.method private isEnabledTalkback()Z
    .registers 9

    .prologue
    .line 8497
    const/16 v1, 0x3a

    .line 8498
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 8499
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 8501
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8504
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 8505
    const-string v4, ""

    .line 8508
    :cond_1b
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 8510
    :cond_1e
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 8511
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 8512
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 8514
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1e

    .line 8515
    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 8516
    const/4 v6, 0x1

    .line 8519
    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_3b
    return v6

    :cond_3c
    const/4 v6, 0x0

    goto :goto_3b
.end method

.method private isFilteredByMvp(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 3212
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3213
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_25

    if-eqz v4, :cond_23

    .line 3216
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3217
    .local v1, "keyMessage":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3219
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    invoke-virtual {v4, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_25

    .line 3220
    const/4 v2, 0x1

    :try_start_16
    monitor-exit v3

    .line 3227
    .end local v1    # "keyMessage":Landroid/os/Message;
    :goto_17
    return v2

    .line 3221
    :catch_18
    move-exception v0

    .line 3222
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Cannot acknowledge the request"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 3227
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    monitor-exit v3

    goto :goto_17

    .line 3228
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v2
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 8745
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .registers 10
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 6583
    sget v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    .line 6584
    .local v4, "userId":I
    const/4 v0, 0x1

    .line 6586
    .local v0, "allowed":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_38

    .line 6587
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 6588
    const/4 v0, 0x0

    .line 6592
    :cond_38
    if-eqz p2, :cond_5f

    if-nez v0, :cond_5f

    .line 6593
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040295

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6597
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 6599
    .local v3, "user":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "edm.intent.action.ACTION_EDM_RESTRICTION_TOAST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6600
    .local v2, "toastIntent":Landroid/content/Intent;
    const-string v5, "message"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6601
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6604
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "toastIntent":Landroid/content/Intent;
    .end local v3    # "user":Landroid/os/UserHandle;
    :cond_5f
    return v0
.end method

.method private isHidden(I)Z
    .registers 5
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2369
    packed-switch p1, :pswitch_data_14

    move v0, v1

    .line 2375
    :cond_6
    :goto_6
    return v0

    .line 2371
    :pswitch_7
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6

    .line 2373
    :pswitch_d
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v2, v0, :cond_6

    move v0, v1

    goto :goto_6

    .line 2369
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .registers 4
    .param p1, "vis"    # I

    .prologue
    .line 8997
    const/16 v0, 0x1800

    .line 8998
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_16

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_16

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 8059
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isSupportAndAttachedSViewCover()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 9155
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v1, :cond_1f

    .line 9156
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    if-eq v1, v0, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_1f

    .line 9163
    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private isVzwSetupRunning()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1227
    const-string v2, "VZW"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1229
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1230
    :cond_19
    const-string v2, "WindowManager"

    const-string v3, "Device is in Factory Mode : Verizon Setup running false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_20
    :goto_20
    return v1

    .line 1233
    :cond_21
    const-string v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, "vzwSetupRunning":Ljava/lang/String;
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "FINISH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 1235
    const-string v1, "WindowManager"

    const-string v2, " Verizon Setup Wizard Running "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v1, 0x1

    goto :goto_20

    .line 1238
    :cond_40
    const-string v2, "WindowManager"

    const-string v3, " Verizon Setup Wizard Finished "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7152
    sparse-switch p1, :sswitch_data_e

    .line 7176
    :cond_5
    :goto_5
    return v0

    .line 7157
    :sswitch_6
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_5

    :sswitch_c
    move v0, v1

    .line 7174
    goto :goto_5

    .line 7152
    :sswitch_data_e
    .sparse-switch
        0x18 -> :sswitch_6
        0x19 -> :sswitch_6
        0x1b -> :sswitch_c
        0x4f -> :sswitch_c
        0x50 -> :sswitch_c
        0x55 -> :sswitch_c
        0x56 -> :sswitch_c
        0x57 -> :sswitch_c
        0x58 -> :sswitch_c
        0x59 -> :sswitch_c
        0x5a -> :sswitch_c
        0x5b -> :sswitch_c
        0x7e -> :sswitch_c
        0x7f -> :sswitch_c
        0x82 -> :sswitch_c
        0xa4 -> :sswitch_6
        0xde -> :sswitch_c
    .end sparse-switch
.end method

.method private keyguardIsShowingTq()Z
    .registers 6

    .prologue
    .line 7720
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 7735
    :goto_5
    return v2

    .line 7723
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v2, :cond_36

    .line 7724
    sget v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    .line 7725
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v0

    .line 7726
    .local v0, "exists":Z
    if-eqz v0, :cond_36

    .line 7727
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 7728
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Keyguard Showing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7729
    const/4 v2, 0x1

    goto :goto_5

    .line 7735
    .end local v0    # "exists":Z
    .end local v1    # "userId":I
    :cond_36
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    goto :goto_5
.end method

.method private launchAssistAction()V
    .registers 9

    .prologue
    const/4 v6, -0x2

    .line 4240
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4241
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 4243
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_58

    .line 4244
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4247
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launchAssistAction() is called. intent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4250
    :cond_3a
    :try_start_3a
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a0086

    const v5, 0x10a0087

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 4254
    .local v2, "opts":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_58
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3a .. :try_end_58} :catch_59

    .line 4262
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_58
    :goto_58
    return-void

    .line 4258
    :catch_59
    move-exception v0

    .line 4259
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private launchAssistLongPressAction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4220
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4221
    const-string v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4224
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4225
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4229
    :try_start_16
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 4230
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_1f

    .line 4231
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 4233
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_16 .. :try_end_26} :catch_27

    .line 4237
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_26
    return-void

    .line 4234
    :catch_27
    move-exception v0

    .line 4235
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    const-string v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private notifySystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 8618
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_e

    .line 8619
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$41;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$41;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8626
    :cond_e
    return-void
.end method

.method private notifyToSSRM(Z)V
    .registers 5
    .param p1, "isTopFullscreen"    # Z

    .prologue
    .line 6314
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    if-ne v1, p1, :cond_5

    .line 6324
    :goto_4
    return-void

    .line 6317
    :cond_5
    sput-boolean p1, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    .line 6319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6320
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6321
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "FullScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6322
    const-string v1, "SSRM_STATUS_VALUE"

    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->wasTopFullscreen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6323
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5836
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5837
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5838
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_13

    .line 5839
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 5841
    :cond_13
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 5842
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 5843
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_26

    .line 5844
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    .line 5849
    :cond_26
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .registers 5

    .prologue
    .line 8730
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 8742
    :cond_6
    :goto_6
    return-void

    .line 8733
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8735
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_6

    .line 8738
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 8740
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 8741
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_6
.end method

.method private preloadRecentApps()V
    .registers 5

    .prologue
    .line 4272
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4274
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4275
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_c

    .line 4276
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    .line 4283
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_c
    :goto_c
    return-void

    .line 4278
    :catch_d
    move-exception v0

    .line 4279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4281
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_c
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1772
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1774
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-le v0, v4, :cond_1c

    .line 1776
    :cond_1a
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1779
    :cond_1c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v0, v3, :cond_31

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1781
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1784
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1786
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_48

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v0, v3, :cond_4a

    .line 1788
    :cond_48
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1790
    :cond_4a
    return-void
.end method

.method private readRotation(I)I
    .registers 4
    .param p1, "resID"    # I

    .prologue
    .line 2172
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_17

    move-result v0

    .line 2173
    .local v0, "rotation":I
    sparse-switch v0, :sswitch_data_1a

    .line 2186
    .end local v0    # "rotation":I
    :goto_d
    const/4 v1, -0x1

    :goto_e
    return v1

    .line 2175
    .restart local v0    # "rotation":I
    :sswitch_f
    const/4 v1, 0x0

    goto :goto_e

    .line 2177
    :sswitch_11
    const/4 v1, 0x1

    goto :goto_e

    .line 2179
    :sswitch_13
    const/4 v1, 0x2

    goto :goto_e

    .line 2181
    :sswitch_15
    const/4 v1, 0x3

    goto :goto_e

    .line 2183
    .end local v0    # "rotation":I
    :catch_17
    move-exception v1

    goto :goto_d

    .line 2173
    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_f
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_15
    .end sparse-switch
.end method

.method private refreshKnoxInfo()V
    .registers 4

    .prologue
    .line 7421
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v1, :cond_1e

    .line 7422
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v0

    .line 7423
    .local v0, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 7424
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKnoxActivated:Z

    .line 7425
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    .line 7428
    .end local v0    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1e
    return-void
.end method

.method private requestKidsQuickPanelOpen()V
    .registers 4

    .prologue
    .line 7433
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 7434
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7435
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.kidsplat.quickpanel.PANEL_OPEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7436
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7457
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    .line 7458
    return-void
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V
    .registers 10
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "force"    # Z

    .prologue
    .line 7464
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 7465
    :cond_14
    const-string v4, "WindowManager"

    const-string v5, "Not showing transient bar, becuase Factory mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7496
    :goto_1b
    return-void

    .line 7469
    :cond_1c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 7470
    :try_start_23
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v3

    .line 7471
    .local v3, "sb":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v2

    .line 7473
    .local v2, "nb":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 7476
    .local v1, "cb":Z
    if-eqz p2, :cond_55

    .line 7477
    const-string v4, "WindowManager"

    const-string v6, "Force showing transient bar"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7478
    const/4 v3, 0x1

    .line 7479
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    .line 7484
    :goto_42
    if-nez v3, :cond_46

    if-eqz v2, :cond_72

    .line 7485
    :cond_46
    if-eqz v3, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7486
    .local v0, "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_4a
    xor-int v4, v3, v2

    if-eqz v4, :cond_5c

    if-eq v0, p1, :cond_5c

    .line 7488
    monitor-exit v5

    goto :goto_1b

    .line 7495
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v1    # "cb":Z
    .end local v2    # "nb":Z
    .end local v3    # "sb":Z
    :catchall_52
    move-exception v4

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_23 .. :try_end_54} :catchall_52

    throw v4

    .line 7481
    .restart local v1    # "cb":Z
    .restart local v2    # "nb":Z
    .restart local v3    # "sb":Z
    :cond_55
    const/4 v4, 0x0

    :try_start_56
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    goto :goto_42

    .line 7485
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_4a

    .line 7490
    .restart local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_5c
    if-eqz v3, :cond_63

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 7491
    :cond_63
    if-eqz v2, :cond_6a

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/BarController;->showTransient()V

    .line 7492
    :cond_6a
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 7493
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 7495
    .end local v0    # "barTarget":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_56 .. :try_end_73} :catchall_52

    goto :goto_1b
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7793
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7795
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_e

    .line 7799
    :cond_d
    :goto_d
    return-void

    .line 7796
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private setStatusBarExpandable(Z)V
    .registers 4
    .param p1, "isKidsMode"    # Z

    .prologue
    .line 7441
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_10

    .line 7442
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 7446
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1d

    .line 7447
    if-eqz p1, :cond_1e

    .line 7448
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 7452
    :cond_1d
    :goto_1d
    return-void

    .line 7450
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1d
.end method

.method private shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z
    .registers 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "isPortrait"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 8630
    if-nez p1, :cond_6

    .line 8661
    :cond_5
    :goto_5
    return v4

    .line 8632
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_5

    .line 8635
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 8636
    .local v1, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_56

    if-eqz v1, :cond_56

    .line 8637
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 8638
    .local v2, "winHeight":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v0, v5, v6

    .line 8641
    .local v0, "heightUpperInputMethod":I
    if-eqz p2, :cond_5c

    .line 8642
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_56

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 8654
    .end local v0    # "heightUpperInputMethod":I
    .end local v2    # "winHeight":I
    :cond_56
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v5, :cond_77

    move v4, v3

    .line 8655
    goto :goto_5

    .line 8646
    .restart local v0    # "heightUpperInputMethod":I
    .restart local v2    # "winHeight":I
    :cond_5c
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v3, :cond_56

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    if-eq v5, v7, :cond_56

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_56

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_5

    .line 8656
    .end local v0    # "heightUpperInputMethod":I
    .end local v2    # "winHeight":I
    :cond_77
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v7, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v5

    if-nez v5, :cond_5

    .line 8658
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v6

    if-ne v5, v6, :cond_98

    :goto_95
    move v4, v3

    goto/16 :goto_5

    :cond_98
    move v3, v4

    goto :goto_95
.end method

.method private takeScreenshot()V
    .registers 9

    .prologue
    .line 6523
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 6524
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_9

    .line 6525
    monitor-exit v4

    .line 6579
    :goto_8
    return-void

    .line 6527
    :cond_9
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6529
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6530
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6531
    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$21;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 6573
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 6575
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 6576
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6578
    :cond_35
    monitor-exit v4

    goto :goto_8

    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_37
    move-exception v3

    monitor-exit v4
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v3
.end method

.method private toggleRecentApps()V
    .registers 5

    .prologue
    .line 4307
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 4308
    const-string v2, "recentapps"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4310
    :try_start_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 4311
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_11

    .line 4312
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 4319
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_11
    :goto_11
    return-void

    .line 4314
    :catch_12
    move-exception v0

    .line 4315
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4317
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_11
.end method

.method private updateEasyOneHandState(ZZ)V
    .registers 10
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z

    .prologue
    .line 9664
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v3

    .line 9665
    .local v3, "isCoverOpen":Z
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9666
    if-nez v3, :cond_33

    .line 9683
    :goto_32
    return-void

    .line 9671
    :cond_33
    :try_start_33
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easyonehand"

    const-string v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9672
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 9674
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_5d

    .line 9675
    const-string v4, "LeftHandMode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9679
    :goto_4e
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_53} :catch_54

    goto :goto_32

    .line 9680
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_54
    move-exception v1

    .line 9681
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception updateEasyOneHandService: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 9677
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_5d
    :try_start_5d
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_63} :catch_54

    goto :goto_4e
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    .prologue
    .line 8289
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 8290
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    .line 8292
    .local v0, "enable":Z
    :goto_18
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_2a

    .line 8293
    if-eqz v0, :cond_2e

    .line 8295
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8300
    :goto_28
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    .line 8302
    :cond_2a
    monitor-exit v2

    .line 8303
    return-void

    .line 8290
    .end local v0    # "enable":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_18

    .line 8298
    .restart local v0    # "enable":Z
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_28

    .line 8302
    .end local v0    # "enable":Z
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private updateSideKeyPanelState(Z)V
    .registers 9
    .param p1, "isShow"    # Z

    .prologue
    .line 9688
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverOpen()Z

    move-result v3

    .line 9689
    .local v3, "isCoverOpen":Z
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEasySidePanelState() isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9690
    if-nez v3, :cond_29

    .line 9707
    :goto_28
    return-void

    .line 9695
    :cond_29
    :try_start_29
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easysidepanel"

    const-string v5, "com.sec.android.easysidepanel.EasySidePanelService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9696
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYSIDEPANEL_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 9698
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_54

    .line 9699
    const-string v4, "Softkey"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9703
    :goto_45
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4a} :catch_4b

    goto :goto_28

    .line 9704
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_4b
    move-exception v1

    .line 9705
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception updateEasySidePanelState: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 9701
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_54
    :try_start_54
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_4b

    goto :goto_45
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 24
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 8905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_187

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_187

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v18, v0

    if-nez v18, :cond_187

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8909
    .local v15, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v18

    if-eqz v18, :cond_48

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    move/from16 v18, v0

    if-nez v18, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-nez v18, :cond_48

    .line 8911
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8914
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 8915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/policy/impl/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 8918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_88

    .line 8920
    or-int/lit8 p3, p3, 0x4

    .line 8925
    :cond_88
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v18, v0

    const/16 v19, 0x7d0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18d

    const/4 v14, 0x1

    .line 8926
    .local v14, "statusBarHasFocus":Z
    :goto_9b
    if-eqz v14, :cond_a9

    .line 8927
    const v6, -0x3fffe7fa

    .line 8933
    .local v6, "flags":I
    const v18, 0x3fffe7f9

    and-int v18, v18, p3

    and-int v19, p2, v6

    or-int p3, v18, v19

    .line 8936
    .end local v6    # "flags":I
    :cond_a9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v18

    if-nez v18, :cond_b4

    .line 8937
    const v18, 0x3fffffff

    and-int p3, p3, v18

    .line 8941
    :cond_b4
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v18, v0

    if-eqz v18, :cond_190

    const/4 v10, 0x1

    .line 8943
    .local v10, "immersiveSticky":Z
    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_193

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-eqz v18, :cond_193

    const/4 v9, 0x1

    .line 8947
    .local v9, "hideStatusBarWM":Z
    :goto_de
    and-int/lit8 v18, p3, 0x4

    if-eqz v18, :cond_196

    const/4 v8, 0x1

    .line 8949
    .local v8, "hideStatusBarSysui":Z
    :goto_e3
    and-int/lit8 v18, p3, 0x2

    if-eqz v18, :cond_199

    const/4 v7, 0x1

    .line 8952
    .local v7, "hideNavBarSysui":Z
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19c

    if-nez v9, :cond_108

    if-eqz v8, :cond_f6

    if-nez v10, :cond_108

    :cond_f6
    if-nez v14, :cond_108

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    move/from16 v18, v0

    if-nez v18, :cond_108

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19c

    :cond_108
    const/16 v17, 0x1

    .line 8960
    .local v17, "transientStatusBarAllowed":Z
    :goto_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a0

    if-eqz v7, :cond_1a0

    if-eqz v10, :cond_1a0

    const/16 v16, 0x1

    .line 8964
    .local v16, "transientNavBarAllowed":Z
    :goto_118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_1a4

    if-nez v17, :cond_1a4

    if-eqz v8, :cond_1a4

    const/4 v5, 0x1

    .line 8966
    .local v5, "denyTransientStatus":Z
    :goto_129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/policy/impl/BarController;->isTransientShowRequested()Z

    move-result v18

    if-eqz v18, :cond_1a6

    if-nez v16, :cond_1a6

    const/4 v4, 0x1

    .line 8968
    .local v4, "denyTransientNav":Z
    :goto_138
    if-nez v5, :cond_13c

    if-eqz v4, :cond_13f

    .line 8970
    :cond_13c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 8973
    :cond_13f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 8976
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v12

    .line 8977
    .local v12, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v11

    .line 8978
    .local v11, "newImmersiveMode":Z
    if-eqz p1, :cond_174

    if-eq v12, v11, :cond_174

    .line 8979
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v13

    .line 8980
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v11}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;Z)V

    .line 8983
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 8985
    return p3

    .line 8905
    .end local v4    # "denyTransientNav":Z
    .end local v5    # "denyTransientStatus":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersiveSticky":Z
    .end local v11    # "newImmersiveMode":Z
    .end local v12    # "oldImmersiveMode":Z
    .end local v14    # "statusBarHasFocus":Z
    .end local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v16    # "transientNavBarAllowed":Z
    .end local v17    # "transientStatusBarAllowed":Z
    :cond_187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_20

    .line 8925
    .restart local v15    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_18d
    const/4 v14, 0x0

    goto/16 :goto_9b

    .line 8941
    .restart local v14    # "statusBarHasFocus":Z
    :cond_190
    const/4 v10, 0x0

    goto/16 :goto_bd

    .line 8943
    .restart local v10    # "immersiveSticky":Z
    :cond_193
    const/4 v9, 0x0

    goto/16 :goto_de

    .line 8947
    .restart local v9    # "hideStatusBarWM":Z
    :cond_196
    const/4 v8, 0x0

    goto/16 :goto_e3

    .line 8949
    .restart local v8    # "hideStatusBarSysui":Z
    :cond_199
    const/4 v7, 0x0

    goto/16 :goto_e8

    .line 8952
    .restart local v7    # "hideNavBarSysui":Z
    :cond_19c
    const/16 v17, 0x0

    goto/16 :goto_10a

    .line 8960
    .restart local v17    # "transientStatusBarAllowed":Z
    :cond_1a0
    const/16 v16, 0x0

    goto/16 :goto_118

    .line 8964
    .restart local v16    # "transientNavBarAllowed":Z
    :cond_1a4
    const/4 v5, 0x0

    goto :goto_129

    .line 8966
    .restart local v5    # "denyTransientStatus":Z
    :cond_1a6
    const/4 v4, 0x0

    goto :goto_138
.end method

.method private updateSystemUiVisibilityLw()I
    .registers 13

    .prologue
    const/16 v11, 0x7d4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8818
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_d

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8819
    .local v6, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_a
    if-nez v6, :cond_10

    .line 8900
    :cond_c
    :goto_c
    return v7

    .line 8818
    .end local v6    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_a

    .line 8822
    .restart local v6    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_10
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v9, v11, :cond_1c

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eq v9, v8, :cond_c

    .line 8832
    :cond_1c
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v10, v10, -0x1

    and-int v3, v9, v10

    .line 8835
    .local v3, "tmpVisibility":I
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v9, :cond_39

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v9, v10, :cond_39

    .line 8836
    and-int/lit8 v3, v3, -0x8

    .line 8838
    :cond_39
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v6, v9, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v5

    .line 8839
    .local v5, "visibility":I
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v5, v9

    .line 8842
    .local v0, "diff":I
    const/4 v4, 0x0

    .line 8843
    .local v4, "topIsRemoveNav":Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v9

    if-eqz v9, :cond_6e

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_6e

    .line 8845
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8846
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_60

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_a1

    :cond_60
    move v4, v8

    .line 8848
    :goto_61
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7db

    if-ne v8, v9, :cond_a3

    .line 8849
    const/4 v4, 0x0

    .line 8858
    :cond_68
    :goto_68
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eq v4, v8, :cond_6e

    .line 8859
    or-int/lit8 v0, v0, 0x8

    .line 8870
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6e
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    .line 8871
    .local v2, "needsMenu":Z
    if-nez v0, :cond_82

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v8, v2, :cond_82

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v9

    if-eq v8, v9, :cond_c

    .line 8877
    :cond_82
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 8878
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    .line 8882
    :cond_8a
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 8883
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 8884
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 8885
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$42;

    invoke-direct {v8, p0, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$42;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;IZ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v7, v0

    .line 8900
    goto/16 :goto_c

    .end local v2    # "needsMenu":Z
    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_a1
    move v4, v7

    .line 8846
    goto :goto_61

    .line 8851
    :cond_a3
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v11, :cond_68

    .line 8852
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v8, :cond_af

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v8, :cond_68

    .line 8853
    :cond_af
    const/4 v4, 0x0

    goto :goto_68
.end method

.method private waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 7637
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1b

    .line 7638
    if-eqz p1, :cond_11

    .line 7639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$32;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$32;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 7653
    :goto_10
    return-void

    .line 7647
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V

    .line 7652
    :goto_17
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_10

    .line 7650
    :cond_1b
    const-string v0, "WindowManager"

    const-string v1, "No keyguard interface!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private waitForKeyguardWindowDrawn(Landroid/os/IBinder;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    .line 7657
    if-eqz p1, :cond_1b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_1b

    .line 7659
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$33;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager$33;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7678
    :goto_13
    return-void

    .line 7669
    :cond_14
    const-string v0, "WindowManager"

    const-string v1, "No lock screen! waitForWindowDrawn false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_37

    .line 7676
    :cond_1b
    :goto_1b
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No lock screen! windowToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7677
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->finishScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_13

    .line 7671
    :catch_37
    move-exception v0

    goto :goto_1b
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;)Landroid/view/View;
    .registers 24
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "mwStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 2677
    if-nez p2, :cond_4

    .line 2678
    const/4 v10, 0x0

    .line 2790
    :cond_3
    :goto_3
    return-object v10

    .line 2681
    :cond_4
    const/4 v9, 0x0

    .line 2682
    .local v9, "wm":Landroid/view/WindowManager;
    const/4 v7, 0x0

    .line 2685
    .local v7, "view":Landroid/view/View;
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2689
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_b} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_b} :catch_153
    .catchall {:try_start_6 .. :try_end_b} :catchall_17f

    move-result v10

    move/from16 v0, p3

    if-ne v0, v10, :cond_12

    if-eqz p6, :cond_1c

    .line 2691
    :cond_12
    const/4 v10, 0x0

    :try_start_13
    invoke-virtual {v2, p2, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2692
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_1c} :catch_193
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_13 .. :try_end_1c} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1c} :catch_153
    .catchall {:try_start_13 .. :try_end_1c} :catchall_17f

    .line 2698
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v8

    .line 2699
    .local v8, "win":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2700
    .local v6, "ta":Landroid/content/res/TypedArray;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_36

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_33
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1c .. :try_end_33} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_33} :catch_153
    .catchall {:try_start_1c .. :try_end_33} :catchall_17f

    move-result v10

    if-eqz v10, :cond_4a

    .line 2704
    :cond_36
    const/4 v10, 0x0

    .line 2784
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2785
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_3

    .line 2707
    :cond_4a
    :try_start_4a
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2708
    .local v5, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 2710
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/view/Window;->setType(I)V

    .line 2716
    or-int/lit8 v10, p9, 0x10

    or-int/lit8 v10, v10, 0x8

    const/high16 v11, 0x20000

    or-int/2addr v10, v11

    or-int/lit8 v11, p9, 0x10

    or-int/lit8 v11, v11, 0x8

    const/high16 v12, 0x20000

    or-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 2726
    move/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2727
    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2729
    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v10, v11}, Landroid/view/Window;->setLayout(II)V

    .line 2732
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 2733
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2734
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2735
    invoke-virtual {v8}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2737
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2739
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2741
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v10

    if-nez v10, :cond_aa

    .line 2742
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2745
    :cond_aa
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2748
    invoke-virtual/range {p10 .. p10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I
    :try_end_c3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4a .. :try_end_c3} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_c3} :catch_153
    .catchall {:try_start_4a .. :try_end_c3} :catchall_17f

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_dc

    .line 2749
    const/4 v10, 0x0

    .line 2784
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2785
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2752
    :cond_dc
    :try_start_dc
    const-string v10, "window"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/view/WindowManager;

    move-object v9, v0

    .line 2753
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 2755
    invoke-virtual {v8}, Landroid/view/Window;->isFloating()Z
    :try_end_ed
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_dc .. :try_end_ed} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_ed} :catch_153
    .catchall {:try_start_dc .. :try_end_ed} :catchall_17f

    move-result v10

    if-eqz v10, :cond_105

    .line 2762
    const/4 v10, 0x0

    .line 2784
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2785
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2770
    :cond_105
    :try_start_105
    invoke-interface {v9, v7, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2774
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_10b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_105 .. :try_end_10b} :catch_125
    .catch Ljava/lang/RuntimeException; {:try_start_105 .. :try_end_10b} :catch_153
    .catchall {:try_start_105 .. :try_end_10b} :catchall_17f

    move-result-object v10

    if-eqz v10, :cond_123

    move-object v10, v7

    .line 2784
    :goto_10f
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 2785
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_3

    .line 2774
    :cond_123
    const/4 v10, 0x0

    goto :goto_10f

    .line 2775
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "ta":Landroid/content/res/TypedArray;
    .end local v8    # "win":Landroid/view/Window;
    :catch_125
    move-exception v3

    .line 2777
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_126
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " already running, starting window not displayed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catchall {:try_start_126 .. :try_end_13e} :catchall_17f

    .line 2784
    if-eqz v7, :cond_150

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_150

    .line 2785
    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2790
    .end local v3    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_150
    :goto_150
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2778
    :catch_153
    move-exception v3

    .line 2782
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_154
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " failed creating starting window"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16c
    .catchall {:try_start_154 .. :try_end_16c} :catchall_17f

    .line 2784
    if-eqz v7, :cond_150

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_150

    .line 2785
    const-string v10, "WindowManager"

    const-string v11, "view not successfully added to wm, removing view"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_150

    .line 2784
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catchall_17f
    move-exception v10

    if-eqz v7, :cond_192

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_192

    .line 2785
    const-string v11, "WindowManager"

    const-string v12, "view not successfully added to wm, removing view"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    invoke-interface {v9, v7}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_192
    throw v10

    .line 2693
    .restart local v2    # "context":Landroid/content/Context;
    :catch_193
    move-exception v10

    goto/16 :goto_1c
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2403
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_39

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2405
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2406
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 2407
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 2409
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_20

    if-ne p2, v1, :cond_28

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2412
    :cond_20
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2413
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_28

    .line 2414
    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2418
    :cond_28
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_36

    if-ne p3, v1, :cond_38

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2421
    :cond_36
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2423
    :cond_38
    return-void

    .line 2403
    :cond_39
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 4456
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 4457
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 4461
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 4464
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2349
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_1e

    .line 2362
    :goto_5
    return-void

    .line 2353
    :sswitch_6
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2355
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 2358
    :sswitch_15
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x10100

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5

    .line 2349
    :sswitch_data_1e
    .sparse-switch
        0x7d6 -> :sswitch_6
        0x7df -> :sswitch_6
        0x832 -> :sswitch_15
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .registers 2

    .prologue
    .line 6328
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_1a

    .line 6331
    :cond_18
    const/4 v0, 0x0

    .line 6333
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public applyCoverSwitchState(ZZ)Z
    .registers 10
    .param p1, "coverOpen"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9243
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v5, :cond_7

    .line 9278
    :cond_6
    :goto_6
    return v3

    .line 9247
    :cond_7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v5, :cond_6

    .line 9251
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 9252
    if-eqz p1, :cond_1c

    .line 9253
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->dismissCoverUIOnNextActivity()V

    .line 9258
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 9259
    .local v0, "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_33

    .line 9260
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->updateCoverSwitchState(ZZ)V

    .line 9261
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 9262
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    iget-boolean v5, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v6, v6, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eq v5, v6, :cond_6

    .line 9263
    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_33} :catch_44

    .line 9272
    .end local v0    # "cm":Lcom/samsung/android/cover/ICoverManager;
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v3, :cond_42

    .line 9273
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_42

    .line 9274
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    :cond_42
    move v3, v4

    .line 9278
    goto :goto_6

    .line 9268
    :catch_44
    move-exception v2

    .line 9269
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException in applyCoverSwitchState: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public applyCoverVerifiedState(ZZ)Z
    .registers 7
    .param p1, "verified"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v2, 0x0

    .line 9223
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-nez v3, :cond_6

    .line 9239
    :cond_5
    :goto_5
    return v2

    .line 9227
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v3, :cond_5

    .line 9232
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 9233
    .local v0, "cm":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v0, :cond_17

    .line 9234
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->updateCoverVerfiedState(ZZ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_19

    .line 9239
    .end local v0    # "cm":Lcom/samsung/android/cover/ICoverManager;
    :cond_17
    :goto_17
    const/4 v2, 0x1

    goto :goto_5

    .line 9236
    :catch_19
    move-exception v1

    .line 9237
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException in applyCoverVerifedState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 5890
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_1a

    :cond_e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_27

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-ne v5, v6, :cond_27

    .line 5893
    :cond_1a
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-gez v5, :cond_27

    .line 5894
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5895
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5898
    :cond_27
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_10f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    if-eqz v5, :cond_10f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-nez v5, :cond_10f

    .line 5900
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_46

    .line 5901
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-ne v5, v6, :cond_19f

    .line 5902
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5911
    :cond_46
    :goto_46
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d4

    if-ne v5, v6, :cond_4f

    .line 5912
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 5914
    :cond_4f
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5a

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-le v5, v6, :cond_66

    :cond_5a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v5

    if-eqz v5, :cond_1a8

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7ef

    if-ne v5, v6, :cond_1a8

    :cond_66
    const/4 v0, 0x1

    .line 5917
    .local v0, "appWindow":Z
    :goto_67
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v5, v6, :cond_81

    .line 5920
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_7d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_81

    .line 5922
    :cond_7d
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 5923
    const/4 v0, 0x1

    .line 5927
    :cond_81
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1ab

    const/4 v4, 0x1

    .line 5928
    .local v4, "showWhenLocked":Z
    :goto_89
    if-eqz v0, :cond_10f

    .line 5929
    if-eqz v4, :cond_1ae

    .line 5930
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5934
    :goto_96
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_10f

    .line 5940
    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v5, v6, :cond_b6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-nez v5, :cond_b4

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v5, v6, :cond_b6

    .line 5941
    :cond_b4
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5943
    :cond_b6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 5944
    if-eqz v4, :cond_e5

    .line 5946
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5947
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5949
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x200000

    and-int/2addr v5, v6

    if-eqz v5, :cond_e5

    iget-wide v5, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_e5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 5956
    const-wide/16 v5, 0x146a

    iput-wide v5, p2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 5957
    const-wide/16 v5, 0x0

    iput-wide v5, p2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 5962
    :cond_e5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x400000

    and-int/2addr v5, v6

    if-eqz v5, :cond_106

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v5, :cond_106

    .line 5965
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, p1, :cond_1b9

    const/4 v5, 0x2

    :goto_f5
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 5967
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5968
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v5, :cond_1bc

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_1bc

    const/4 v5, 0x1

    :goto_104
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5970
    :cond_106
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_10f

    .line 5971
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5978
    .end local v0    # "appWindow":Z
    .end local v4    # "showWhenLocked":Z
    :cond_10f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v5

    if-eqz v5, :cond_16c

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v5, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v5, :cond_16c

    .line 5979
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    .line 5980
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_165

    .line 5981
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1bf

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x63

    if-gt v5, v6, :cond_1bf

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1bf

    const/4 v1, 0x1

    .line 5984
    .local v1, "applyWindow":Z
    :goto_135
    if-eqz v1, :cond_165

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-nez v5, :cond_165

    .line 5985
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c2

    .line 5986
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 5987
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5988
    sget-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_165

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hide sview cover always : SViewCoverWindow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5998
    .end local v1    # "applyWindow":Z
    :cond_165
    :goto_165
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    if-eqz v5, :cond_16c

    .line 5999
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 6005
    :cond_16c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    .line 6006
    .local v3, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_17f

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_17f

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f2

    :cond_17f
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1f2

    const/4 v2, 0x1

    .line 6009
    .local v2, "isMultiWindowTarget":Z
    :goto_187
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_191

    .line 6010
    if-eqz v2, :cond_191

    .line 6011
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6012
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 6016
    :cond_191
    if-eqz v2, :cond_19e

    .line 6017
    const/high16 v5, 0x200000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1f4

    .line 6018
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    .line 6032
    :cond_19e
    :goto_19e
    return-void

    .line 5905
    .end local v2    # "isMultiWindowTarget":Z
    .end local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_19f
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    if-nez v5, :cond_46

    .line 5907
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_46

    .line 5914
    :cond_1a8
    const/4 v0, 0x0

    goto/16 :goto_67

    .line 5927
    .restart local v0    # "appWindow":Z
    :cond_1ab
    const/4 v4, 0x0

    goto/16 :goto_89

    .line 5932
    .restart local v4    # "showWhenLocked":Z
    :cond_1ae
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_96

    .line 5965
    :cond_1b9
    const/4 v5, 0x1

    goto/16 :goto_f5

    .line 5968
    :cond_1bc
    const/4 v5, 0x0

    goto/16 :goto_104

    .line 5981
    .end local v0    # "appWindow":Z
    .end local v4    # "showWhenLocked":Z
    :cond_1bf
    const/4 v1, 0x0

    goto/16 :goto_135

    .line 5989
    .restart local v1    # "applyWindow":Z
    :cond_1c2
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_165

    .line 5990
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v5

    if-eqz v5, :cond_165

    .line 5991
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 5992
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5993
    sget-boolean v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_165

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hide sview cover once : SViewCoverWindow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_165

    .line 6006
    .end local v1    # "applyWindow":Z
    .restart local v3    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1f2
    const/4 v2, 0x0

    goto :goto_187

    .line 6019
    .restart local v2    # "isMultiWindowTarget":Z
    :cond_1f4
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_210

    .line 6020
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_205

    .line 6021
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_19e

    .line 6023
    :cond_205
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_19e

    .line 6024
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_19e

    .line 6026
    :cond_210
    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-nez v5, :cond_19e

    .line 6027
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6028
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_19e
.end method

.method public beginLayoutLw(ZIII)V
    .registers 50
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 4513
    if-eqz p1, :cond_6e0

    .line 4514
    packed-switch p4, :pswitch_data_8e2

    .line 4534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v32, v0

    .line 4535
    .local v32, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v34, v0

    .line 4536
    .local v34, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v33, v0

    .line 4537
    .local v33, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v31, v0

    .line 4546
    .local v31, "overscanBottom":I
    :goto_1d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4547
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4548
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4549
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4550
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 4551
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4552
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 4553
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 4554
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4555
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4556
    sub-int v2, p2, v32

    sub-int v2, v2, v33

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4557
    sub-int v2, p3, v34

    sub-int v2, v2, v31

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v3, v2, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4562
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 4564
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4566
    sub-int v2, p2, v33

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4568
    sub-int v2, p3, v31

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4570
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 4571
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    .line 4575
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    .line 4579
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_1f1

    if-eqz p1, :cond_1f1

    .line 4580
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canBeGetSViewCoverSize()Z

    move-result v2

    if-eqz v2, :cond_1f1

    .line 4582
    packed-switch p4, :pswitch_data_8ec

    .line 4599
    const/16 v20, 0x0

    .local v20, "coverRight":I
    move/from16 v19, v20

    .line 4600
    .local v19, "coverLeft":I
    const/16 v21, 0x0

    .line 4601
    .local v21, "coverTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v18, p3, v2

    .line 4604
    .local v18, "coverBottom":I
    :goto_135
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 4605
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4606
    sub-int v2, p2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 4607
    sub-int v2, p3, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 4608
    add-int v2, v32, v19

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4609
    add-int v2, v34, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4610
    sub-int v2, p2, v32

    sub-int v2, v2, v33

    sub-int v2, v2, v19

    sub-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4611
    sub-int v2, p3, v34

    sub-int v2, v2, v31

    sub-int v2, v2, v21

    sub-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4612
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4613
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4614
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 4618
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4620
    sub-int v2, p2, v33

    sub-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4622
    sub-int v2, p3, v31

    sub-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4629
    .end local v18    # "coverBottom":I
    .end local v19    # "coverLeft":I
    .end local v20    # "coverRight":I
    .end local v21    # "coverTop":I
    :cond_1f1
    sget-object v35, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4630
    .local v35, "pf":Landroid/graphics/Rect;
    sget-object v23, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4631
    .local v23, "df":Landroid/graphics/Rect;
    sget-object v30, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4632
    .local v30, "of":Landroid/graphics/Rect;
    sget-object v44, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4633
    .local v44, "vf":Landroid/graphics/Rect;
    sget-object v22, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4634
    .local v22, "dcf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4635
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4636
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4638
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->setEmpty()V

    .line 4640
    if-eqz p1, :cond_687

    .line 4643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v38, v0

    .line 4644
    .local v38, "sysui":I
    and-int/lit8 v2, v38, 0x2

    if-nez v2, :cond_71a

    const/16 v29, 0x1

    .line 4645
    .local v29, "navVisible":Z
    :goto_25c
    const/high16 v2, -0x80000000

    and-int v2, v2, v38

    if-eqz v2, :cond_71e

    const/16 v28, 0x1

    .line 4646
    .local v28, "navTranslucent":Z
    :goto_264
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_722

    const/16 v24, 0x1

    .line 4647
    .local v24, "immersive":Z
    :goto_26c
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_726

    const/16 v25, 0x1

    .line 4648
    .local v25, "immersiveSticky":Z
    :goto_274
    if-nez v24, :cond_278

    if-eqz v25, :cond_72a

    :cond_278
    const/16 v27, 0x1

    .line 4649
    .local v27, "navAllowedHidden":Z
    :goto_27a
    if-nez v25, :cond_72e

    const/4 v2, 0x1

    :goto_27d
    and-int v28, v28, v2

    .line 4650
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v28, v28, v2

    .line 4657
    if-nez v29, :cond_289

    if-eqz v27, :cond_731

    .line 4658
    :cond_289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_29b

    .line 4659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4660
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    .line 4678
    :cond_29b
    :goto_29b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_2a9

    .line 4683
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_776

    .line 4684
    const/16 v29, 0x0

    .line 4694
    :cond_2a9
    :goto_2a9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-nez v2, :cond_78e

    const/4 v2, 0x1

    :goto_2b0
    or-int v29, v29, v2

    .line 4696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_331

    .line 4697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v2, v2, p4

    sub-int v41, p3, v2

    .line 4698
    .local v41, "topOnShow":I
    move/from16 v13, p3

    .line 4699
    .local v13, "bottomOnShow":I
    add-int/lit8 v40, p3, 0x0

    .line 4700
    .local v40, "topOnHide":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v2, v2, p4

    add-int v2, v2, p3

    add-int/lit8 v12, v2, 0x0

    .line 4702
    .local v12, "bottomOnHide":I
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topOnShow= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bottomOnShow= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  topOnHide= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  bottomOnHide= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNaviBarVisibility:I

    if-nez v4, :cond_791

    .end local v41    # "topOnShow":I
    :goto_311
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNaviBarVisibility:I

    if-nez v4, :cond_795

    .end local v13    # "bottomOnShow":I
    :goto_317
    move/from16 v0, v41

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 4707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4711
    .end local v12    # "bottomOnHide":I
    .end local v40    # "topOnHide":I
    :cond_331
    const/16 v43, 0x0

    .line 4712
    .local v43, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_40b

    .line 4713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v42

    .line 4718
    .local v42, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_34d

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_798

    :cond_34d
    const/4 v2, 0x1

    :goto_34e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 4719
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_7eb

    .line 4721
    sub-int v2, p3, v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    sub-int v39, v2, v3

    .line 4723
    .local v39, "top":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p3, v31

    move/from16 v0, v39

    move/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4724
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    .line 4725
    if-eqz v42, :cond_79b

    .line 4726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 4741
    :cond_384
    :goto_384
    if-eqz v29, :cond_3aa

    if-nez v28, :cond_3aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_3aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_3aa

    .line 4746
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 4780
    .end local v39    # "top":I
    :cond_3aa
    :goto_3aa
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4781
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4782
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3ff

    .line 4786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    move-object/from16 v8, v22

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4792
    :cond_3ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_40b

    .line 4793
    const/16 v43, 0x1

    .line 4800
    .end local v42    # "transientNavBarShowing":Z
    :cond_40b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v2, :cond_52e

    .line 4802
    packed-switch p4, :pswitch_data_8f6

    .line 4819
    const/4 v14, 0x0

    .local v14, "cocktailBottom":I
    move/from16 v17, v14

    .local v17, "cocktailTop":I
    move v15, v14

    .line 4820
    .local v15, "cocktailLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    move/from16 v16, v0

    .line 4821
    .local v16, "cocktailRight":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    sub-int v3, p2, v3

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4825
    :goto_42e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_52e

    .line 4826
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    .line 4827
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4828
    sub-int v2, p2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    .line 4829
    sub-int v2, p3, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    .line 4830
    add-int v2, v32, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4831
    add-int v2, v34, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4832
    sub-int v2, p2, v32

    sub-int v2, v2, v33

    sub-int/2addr v2, v15

    sub-int v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4833
    sub-int v2, p3, v34

    sub-int v2, v2, v31

    sub-int v2, v2, v17

    sub-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4834
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4835
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4836
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4838
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    .line 4840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4842
    sub-int v2, p2, v33

    sub-int v2, v2, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4844
    sub-int v2, p3, v31

    sub-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4847
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    .line 4848
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 4850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_52e

    .line 4851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v8, v22

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_52e

    .line 4855
    const/16 v43, 0x1

    .line 4863
    .end local v14    # "cocktailBottom":I
    .end local v15    # "cocktailLeft":I
    .end local v16    # "cocktailRight":I
    .end local v17    # "cocktailTop":I
    :cond_52e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_682

    .line 4865
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4866
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4868
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    move-object/from16 v0, v30

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4870
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4871
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4872
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4873
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    .line 4878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v35

    move-object/from16 v4, v23

    move-object/from16 v5, v44

    move-object/from16 v6, v44

    move-object/from16 v7, v44

    move-object/from16 v8, v22

    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    .line 4883
    const/high16 v2, 0x4000000

    and-int v2, v2, v38

    if-eqz v2, :cond_8da

    const/16 v36, 0x1

    .line 4884
    .local v36, "statusBarTransient":Z
    :goto_5d2
    const/high16 v2, 0x40000000

    and-int v2, v2, v38

    if-eqz v2, :cond_8de

    const/16 v37, 0x1

    .line 4885
    .local v37, "statusBarTranslucent":Z
    :goto_5da
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v37, v37, v2

    .line 4889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_647

    if-nez v36, :cond_647

    .line 4893
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_617

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_617

    .line 4897
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    .line 4901
    :cond_617
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 4902
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    .line 4903
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    .line 4904
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    .line 4913
    :cond_647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_676

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_676

    if-nez v36, :cond_676

    if-nez v37, :cond_676

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_676

    .line 4919
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 4921
    :cond_676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_682

    .line 4922
    const/16 v43, 0x1

    .line 4925
    .end local v36    # "statusBarTransient":Z
    .end local v37    # "statusBarTranslucent":Z
    :cond_682
    if-eqz v43, :cond_687

    .line 4926
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 4931
    .end local v24    # "immersive":Z
    .end local v25    # "immersiveSticky":Z
    .end local v27    # "navAllowedHidden":Z
    .end local v28    # "navTranslucent":Z
    .end local v29    # "navVisible":Z
    .end local v38    # "sysui":I
    .end local v43    # "updateSysUiVisibility":Z
    :cond_687
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    .line 4932
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 4934
    return-void

    .line 4516
    .end local v22    # "dcf":Landroid/graphics/Rect;
    .end local v23    # "df":Landroid/graphics/Rect;
    .end local v30    # "of":Landroid/graphics/Rect;
    .end local v31    # "overscanBottom":I
    .end local v32    # "overscanLeft":I
    .end local v33    # "overscanRight":I
    .end local v34    # "overscanTop":I
    .end local v35    # "pf":Landroid/graphics/Rect;
    .end local v44    # "vf":Landroid/graphics/Rect;
    :pswitch_692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v32, v0

    .line 4517
    .restart local v32    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v34, v0

    .line 4518
    .restart local v34    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v33, v0

    .line 4519
    .restart local v33    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v31, v0

    .line 4520
    .restart local v31    # "overscanBottom":I
    goto/16 :goto_1d

    .line 4522
    .end local v31    # "overscanBottom":I
    .end local v32    # "overscanLeft":I
    .end local v33    # "overscanRight":I
    .end local v34    # "overscanTop":I
    :pswitch_6ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v32, v0

    .line 4523
    .restart local v32    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v34, v0

    .line 4524
    .restart local v34    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v33, v0

    .line 4525
    .restart local v33    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v31, v0

    .line 4526
    .restart local v31    # "overscanBottom":I
    goto/16 :goto_1d

    .line 4528
    .end local v31    # "overscanBottom":I
    .end local v32    # "overscanLeft":I
    .end local v33    # "overscanRight":I
    .end local v34    # "overscanTop":I
    :pswitch_6c6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v32, v0

    .line 4529
    .restart local v32    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v34, v0

    .line 4530
    .restart local v34    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    move/from16 v33, v0

    .line 4531
    .restart local v33    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    move/from16 v31, v0

    .line 4532
    .restart local v31    # "overscanBottom":I
    goto/16 :goto_1d

    .line 4541
    .end local v31    # "overscanBottom":I
    .end local v32    # "overscanLeft":I
    .end local v33    # "overscanRight":I
    .end local v34    # "overscanTop":I
    :cond_6e0
    const/16 v32, 0x0

    .line 4542
    .restart local v32    # "overscanLeft":I
    const/16 v34, 0x0

    .line 4543
    .restart local v34    # "overscanTop":I
    const/16 v33, 0x0

    .line 4544
    .restart local v33    # "overscanRight":I
    const/16 v31, 0x0

    .restart local v31    # "overscanBottom":I
    goto/16 :goto_1d

    .line 4584
    :pswitch_6ea
    const/16 v19, 0x0

    .line 4585
    .restart local v19    # "coverLeft":I
    const/16 v18, 0x0

    .restart local v18    # "coverBottom":I
    move/from16 v21, v18

    .line 4586
    .restart local v21    # "coverTop":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v20, p2, v2

    .line 4587
    .restart local v20    # "coverRight":I
    goto/16 :goto_135

    .line 4589
    .end local v18    # "coverBottom":I
    .end local v19    # "coverLeft":I
    .end local v20    # "coverRight":I
    .end local v21    # "coverTop":I
    :pswitch_6fa
    const/16 v20, 0x0

    .restart local v20    # "coverRight":I
    move/from16 v19, v20

    .line 4590
    .restart local v19    # "coverLeft":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v21, p3, v2

    .line 4591
    .restart local v21    # "coverTop":I
    const/16 v18, 0x0

    .line 4592
    .restart local v18    # "coverBottom":I
    goto/16 :goto_135

    .line 4594
    .end local v18    # "coverBottom":I
    .end local v19    # "coverLeft":I
    .end local v20    # "coverRight":I
    .end local v21    # "coverTop":I
    :pswitch_70a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v2, v2, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    sub-int v19, p2, v2

    .line 4595
    .restart local v19    # "coverLeft":I
    const/16 v18, 0x0

    .restart local v18    # "coverBottom":I
    move/from16 v21, v18

    .line 4596
    .restart local v21    # "coverTop":I
    const/16 v20, 0x0

    .line 4597
    .restart local v20    # "coverRight":I
    goto/16 :goto_135

    .line 4644
    .end local v18    # "coverBottom":I
    .end local v19    # "coverLeft":I
    .end local v20    # "coverRight":I
    .end local v21    # "coverTop":I
    .restart local v22    # "dcf":Landroid/graphics/Rect;
    .restart local v23    # "df":Landroid/graphics/Rect;
    .restart local v30    # "of":Landroid/graphics/Rect;
    .restart local v35    # "pf":Landroid/graphics/Rect;
    .restart local v38    # "sysui":I
    .restart local v44    # "vf":Landroid/graphics/Rect;
    :cond_71a
    const/16 v29, 0x0

    goto/16 :goto_25c

    .line 4645
    .restart local v29    # "navVisible":Z
    :cond_71e
    const/16 v28, 0x0

    goto/16 :goto_264

    .line 4646
    .restart local v28    # "navTranslucent":Z
    :cond_722
    const/16 v24, 0x0

    goto/16 :goto_26c

    .line 4647
    .restart local v24    # "immersive":Z
    :cond_726
    const/16 v25, 0x0

    goto/16 :goto_274

    .line 4648
    .restart local v25    # "immersiveSticky":Z
    :cond_72a
    const/16 v27, 0x0

    goto/16 :goto_27a

    .line 4649
    .restart local v27    # "navAllowedHidden":Z
    :cond_72e
    const/4 v2, 0x0

    goto/16 :goto_27d

    .line 4663
    :cond_731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_74d

    .line 4664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-eqz v2, :cond_29b

    .line 4665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$FakeWindow;->dismiss()V

    .line 4666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_29b

    .line 4670
    :cond_74d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    if-nez v2, :cond_29b

    .line 4671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    const-string v5, "hidden nav"

    const/16 v6, 0x7e6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v2 .. v11}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addFakeWindow(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;Ljava/lang/String;IIIZZZ)Landroid/view/WindowManagerPolicy$FakeWindow;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideNavFakeWindow:Landroid/view/WindowManagerPolicy$FakeWindow;

    goto/16 :goto_29b

    .line 4685
    :cond_776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2a9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopMaintainSystemUIAppWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_2a9

    .line 4687
    const/16 v29, 0x1

    goto/16 :goto_2a9

    .line 4694
    :cond_78e
    const/4 v2, 0x0

    goto/16 :goto_2b0

    .restart local v12    # "bottomOnHide":I
    .restart local v13    # "bottomOnShow":I
    .restart local v40    # "topOnHide":I
    .restart local v41    # "topOnShow":I
    :cond_791
    move/from16 v41, v40

    .line 4704
    goto/16 :goto_311

    .end local v41    # "topOnShow":I
    :cond_795
    move v13, v12

    goto/16 :goto_317

    .line 4718
    .end local v12    # "bottomOnHide":I
    .end local v13    # "bottomOnShow":I
    .end local v40    # "topOnHide":I
    .restart local v42    # "transientNavBarShowing":Z
    .restart local v43    # "updateSysUiVisibility":Z
    :cond_798
    const/4 v2, 0x0

    goto/16 :goto_34e

    .line 4727
    .restart local v39    # "top":I
    :cond_79b
    if-eqz v29, :cond_7c9

    .line 4728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 4729
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    .line 4730
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_384

    .line 4734
    :cond_7c9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 4736
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_384

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_384

    .line 4737
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    goto/16 :goto_384

    .line 4750
    .end local v39    # "top":I
    :cond_7eb
    sub-int v2, p2, v33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    sub-int v26, v2, v3

    .line 4752
    .local v26, "left":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    sub-int v4, p2, v33

    move/from16 v0, v26

    move/from16 v1, p3

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4753
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    .line 4754
    if-eqz v42, :cond_83f

    .line 4755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 4770
    :cond_817
    :goto_817
    if-eqz v29, :cond_3aa

    if-nez v28, :cond_3aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_3aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_3aa

    .line 4775
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_3aa

    .line 4756
    :cond_83f
    if-eqz v29, :cond_86c

    .line 4757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 4758
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    .line 4759
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4760
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_817

    .line 4763
    :cond_86c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    .line 4765
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v2

    if-eqz v2, :cond_817

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastTopIsRemoveNavigation:Z

    if-eqz v2, :cond_817

    .line 4766
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    goto :goto_817

    .line 4804
    .end local v26    # "left":I
    .end local v42    # "transientNavBarShowing":Z
    :pswitch_88d
    const/4 v14, 0x0

    .restart local v14    # "cocktailBottom":I
    move/from16 v16, v14

    .restart local v16    # "cocktailRight":I
    move v15, v14

    .line 4805
    .restart local v15    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    move/from16 v17, v0

    .line 4806
    .restart local v17    # "cocktailTop":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_42e

    .line 4809
    .end local v14    # "cocktailBottom":I
    .end local v15    # "cocktailLeft":I
    .end local v16    # "cocktailRight":I
    .end local v17    # "cocktailTop":I
    :pswitch_8a6
    const/4 v14, 0x0

    .restart local v14    # "cocktailBottom":I
    move/from16 v17, v14

    .restart local v17    # "cocktailTop":I
    move/from16 v16, v14

    .line 4810
    .restart local v16    # "cocktailRight":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    .line 4811
    .restart local v15    # "cocktailLeft":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    move/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_42e

    .line 4814
    .end local v14    # "cocktailBottom":I
    .end local v15    # "cocktailLeft":I
    .end local v16    # "cocktailRight":I
    .end local v17    # "cocktailTop":I
    :pswitch_8be
    const/16 v17, 0x0

    .restart local v17    # "cocktailTop":I
    move/from16 v16, v17

    .restart local v16    # "cocktailRight":I
    move/from16 v15, v17

    .line 4815
    .restart local v15    # "cocktailLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    .line 4816
    .restart local v14    # "cocktailBottom":I
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    sub-int v4, p3, v4

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_42e

    .line 4883
    .end local v14    # "cocktailBottom":I
    .end local v15    # "cocktailLeft":I
    .end local v16    # "cocktailRight":I
    .end local v17    # "cocktailTop":I
    :cond_8da
    const/16 v36, 0x0

    goto/16 :goto_5d2

    .line 4884
    .restart local v36    # "statusBarTransient":Z
    :cond_8de
    const/16 v37, 0x0

    goto/16 :goto_5da

    .line 4514
    :pswitch_data_8e2
    .packed-switch 0x1
        :pswitch_692
        :pswitch_6ac
        :pswitch_6c6
    .end packed-switch

    .line 4582
    :pswitch_data_8ec
    .packed-switch 0x1
        :pswitch_6ea
        :pswitch_6fa
        :pswitch_70a
    .end packed-switch

    .line 4802
    :pswitch_data_8f6
    .packed-switch 0x1
        :pswitch_88d
        :pswitch_8a6
        :pswitch_8be
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .registers 6
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5860
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5861
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 5862
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    .line 5863
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5864
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 5865
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 5867
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    .line 5868
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5869
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    .line 5870
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    .line 5871
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    .line 5874
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5875
    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    .line 5876
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    .line 5880
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5882
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 2642
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x898

    if-eq v1, v2, :cond_d

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x899

    if-ne v1, v2, :cond_e

    .line 2665
    :cond_d
    :goto_d
    :sswitch_d
    return v0

    .line 2648
    :cond_e
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_16

    .line 2665
    const/4 v0, 0x1

    goto :goto_d

    .line 2648
    nop

    :sswitch_data_16
    .sparse-switch
        0x7d0 -> :sswitch_d
        0x7d4 -> :sswitch_d
        0x7dd -> :sswitch_d
        0x7e3 -> :sswitch_d
        0x7e7 -> :sswitch_d
        0x7e9 -> :sswitch_d
        0x7ed -> :sswitch_d
        0x832 -> :sswitch_d
        0x833 -> :sswitch_d
        0x8ac -> :sswitch_d
    .end sparse-switch
.end method

.method public canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9185
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    .line 9186
    .local v0, "coverMode":I
    if-nez v0, :cond_f

    .line 9187
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v3, :sswitch_data_1c

    :cond_d
    move v1, v2

    .line 9204
    :goto_e
    :sswitch_e
    return v1

    .line 9197
    :cond_f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_19

    .line 9198
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_e

    .line 9201
    :cond_19
    if-ne v0, v2, :cond_d

    goto :goto_e

    .line 9187
    :sswitch_data_1c
    .sparse-switch
        0x7d0 -> :sswitch_e
        0x7d4 -> :sswitch_e
        0x7dd -> :sswitch_e
        0x7e3 -> :sswitch_e
        0x7e4 -> :sswitch_e
        0x832 -> :sswitch_e
        0x833 -> :sswitch_e
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .registers 5
    .param p1, "windowType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9078
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9079
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    if-lez v2, :cond_11

    .line 9080
    sparse-switch p1, :sswitch_data_16

    move v0, v1

    .line 9100
    :goto_10
    :sswitch_10
    return v0

    .line 9092
    :cond_11
    sparse-switch p1, :sswitch_data_24

    move v0, v1

    .line 9100
    goto :goto_10

    .line 9080
    :sswitch_data_16
    .sparse-switch
        0x7e9 -> :sswitch_10
        0x7eb -> :sswitch_10
        0x8ca -> :sswitch_10
    .end sparse-switch

    .line 9092
    :sswitch_data_24
    .sparse-switch
        0x7db -> :sswitch_10
        0x7dc -> :sswitch_10
        0x7e3 -> :sswitch_10
        0x7eb -> :sswitch_10
    .end sparse-switch
.end method

.method public cancelPendingPowerKey()V
    .registers 1

    .prologue
    .line 9341
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 9342
    return-void
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .registers 7
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/4 v2, 0x0

    .line 2192
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2194
    .local v1, "type":I
    const/4 v3, -0x1

    aput v3, p2, v2

    .line 2196
    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_e

    const/16 v3, 0xbb7

    if-le v1, v3, :cond_f

    .line 2263
    :cond_e
    :goto_e
    return v2

    .line 2202
    :cond_f
    const/16 v3, 0xbb6

    if-eq v1, v3, :cond_e

    .line 2208
    const/16 v3, 0x8fc

    if-eq v1, v3, :cond_e

    .line 2213
    const/4 v0, 0x0

    .line 2214
    .local v0, "permission":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_3a

    .line 2255
    :cond_1b
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2257
    :goto_1d
    :sswitch_1d
    if-eqz v0, :cond_e

    .line 2258
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e

    .line 2260
    const/4 v2, -0x8

    goto :goto_e

    .line 2243
    :sswitch_29
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2244
    const/16 v3, 0x18

    aput v3, p2, v2

    goto :goto_1d

    .line 2247
    :sswitch_30
    const-string v0, "com.samsung.android.permission.BIND_KMS"

    .line 2248
    goto :goto_1d

    .line 2251
    :sswitch_33
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1d

    .line 2214
    :sswitch_data_3a
    .sparse-switch
        0x7d2 -> :sswitch_29
        0x7d3 -> :sswitch_29
        0x7d5 -> :sswitch_1d
        0x7d6 -> :sswitch_29
        0x7d7 -> :sswitch_29
        0x7da -> :sswitch_29
        0x7db -> :sswitch_1d
        0x7dd -> :sswitch_1d
        0x7e7 -> :sswitch_1d
        0x7ee -> :sswitch_1d
        0x7ef -> :sswitch_33
        0x7f0 -> :sswitch_33
        0x830 -> :sswitch_1d
        0x831 -> :sswitch_1d
        0x833 -> :sswitch_29
        0x834 -> :sswitch_1d
        0x835 -> :sswitch_1d
        0x8cb -> :sswitch_30
    .end sparse-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 2271
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_1a

    .line 2278
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_d

    .line 2316
    :cond_c
    :goto_c
    return v0

    :cond_d
    :sswitch_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    .line 2271
    nop

    :sswitch_data_1a
    .sparse-switch
        0x3 -> :sswitch_d
        0x7d0 -> :sswitch_d
        0x7d1 -> :sswitch_d
        0x7d2 -> :sswitch_d
        0x7d4 -> :sswitch_d
        0x7d5 -> :sswitch_d
        0x7d7 -> :sswitch_d
        0x7d8 -> :sswitch_d
        0x7d9 -> :sswitch_d
        0x7de -> :sswitch_d
        0x7e1 -> :sswitch_d
        0x7e2 -> :sswitch_d
        0x7e3 -> :sswitch_d
        0x7e4 -> :sswitch_d
        0x7e5 -> :sswitch_d
        0x7e6 -> :sswitch_d
        0x7e8 -> :sswitch_d
        0x7e9 -> :sswitch_d
        0x7ea -> :sswitch_d
        0x7eb -> :sswitch_d
        0x7ec -> :sswitch_d
        0x7ed -> :sswitch_d
        0x7ee -> :sswitch_d
        0x832 -> :sswitch_d
        0x833 -> :sswitch_d
    .end sparse-switch
.end method

.method public checkTopFullscreenOpaqueWindowState(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 2322
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTabletUXConcept:Z

    if-eqz v1, :cond_19

    .line 2323
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    .line 2324
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v4, :cond_19

    .line 2344
    :cond_18
    :goto_18
    return v0

    .line 2330
    :cond_19
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v1, :cond_39

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v1, :cond_39

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_39

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v3, :cond_39

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-eq v1, v4, :cond_39

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_18

    .line 2339
    :cond_39
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x30000

    and-int/2addr v1, v2

    if-nez v1, :cond_18

    .line 2344
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .registers 5
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    .line 8448
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_a

    .line 8473
    :cond_9
    :goto_9
    return v0

    .line 8451
    :cond_a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8455
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    if-eqz v1, :cond_9

    .line 8456
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$39;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$39;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8468
    if-eqz p1, :cond_24

    .line 8469
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    .line 8471
    :cond_24
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 9337
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 9338
    return-void
.end method

.method public createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;
    .registers 3
    .param p1, "onWallpaper"    # Z

    .prologue
    .line 3123
    const/4 v0, 0x0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 8355
    const/4 v2, 0x0

    .line 8360
    .local v2, "intent":Landroid/content/Intent;
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    .line 8362
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 8370
    :cond_9
    :goto_9
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_52

    .line 8372
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockIntent:Landroid/content/Intent;

    move-object v3, v2

    .line 8376
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_12
    if-nez v3, :cond_1e

    move-object v2, v3

    .line 8396
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_15
    return-object v4

    .line 8364
    :cond_16
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 8366
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_9

    .line 8380
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1e
    const/4 v0, 0x0

    .line 8381
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x10080

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 8385
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_32

    .line 8386
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8388
    :cond_32
    if-eqz v0, :cond_50

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_50

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "android.dock_home"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 8391
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 8392
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v2

    .line 8393
    goto :goto_15

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_50
    move-object v2, v3

    .line 8396
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_15

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_52
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_12
.end method

.method public dismissKeyguardLw()V
    .registers 3

    .prologue
    .line 7763
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7764
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$34;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$34;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7776
    :cond_16
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7224
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    invoke-static {p1, v1, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 7232
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7233
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7234
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 7198
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_13

    .line 7203
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7204
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7205
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7208
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 7210
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_38

    .line 7212
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 7214
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7216
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7217
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7221
    .end local v0    # "msg":Landroid/os/Message;
    :goto_37
    return-void

    .line 7219
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_37
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7237
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 7238
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 7239
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_f

    .line 7241
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 7247
    .end local v0    # "audioService":Landroid/media/IAudioService;
    :cond_f
    :goto_f
    return-void

    .line 7242
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    :catch_10
    move-exception v1

    .line 7243
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 4153
    const/16 v19, 0x0

    .line 4154
    .local v19, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_80

    .line 4155
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v21

    .line 4156
    .local v21, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 4157
    .local v22, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v23

    .line 4158
    .local v23, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_81

    const/16 v20, 0x1

    .line 4163
    .local v20, "initialDown":Z
    :goto_24
    if-eqz v20, :cond_84

    .line 4164
    invoke-virtual/range {v21 .. v23}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v18

    .line 4169
    .local v18, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_2a
    if-eqz v18, :cond_80

    .line 4175
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 4176
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v18

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v18

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v4 .. v17}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v19

    .line 4183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_73

    .line 4184
    invoke-virtual/range {v19 .. v19}, Landroid/view/KeyEvent;->recycle()V

    .line 4185
    const/16 v19, 0x0

    .line 4188
    :cond_73
    if-eqz v20, :cond_91

    .line 4189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4204
    .end local v14    # "flags":I
    .end local v18    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v20    # "initialDown":Z
    .end local v21    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v22    # "keyCode":I
    .end local v23    # "metaState":I
    :cond_80
    :goto_80
    return-object v19

    .line 4158
    .restart local v21    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v22    # "keyCode":I
    .restart local v23    # "metaState":I
    :cond_81
    const/16 v20, 0x0

    goto :goto_24

    .line 4166
    .restart local v20    # "initialDown":Z
    :cond_84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v18    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_2a

    .line 4190
    .restart local v14    # "flags":I
    :cond_91
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_80

    .line 4191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 4192
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_80
.end method

.method public doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2636
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public doesForceHideBySViewCover()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 9177
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->canGlobalActionsShow()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 9178
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_16

    const/4 v0, 0x1

    .line 9180
    :cond_16
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 9398
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9399
    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9400
    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9401
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9402
    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9403
    const-string v0, " mCoverCloseRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9404
    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9405
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_58

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_85

    .line 9407
    :cond_58
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9408
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9409
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9410
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9411
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9412
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9414
    :cond_85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_96

    .line 9415
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9416
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9418
    :cond_96
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9419
    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9420
    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9421
    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9422
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9423
    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9424
    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9425
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9426
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9427
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9428
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9429
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9430
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9431
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9432
    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9433
    const-string v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9434
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9435
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9436
    const-string v0, " mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9437
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9438
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9439
    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9440
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9441
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9442
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9443
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9444
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_19a

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_1c5

    .line 9446
    :cond_19a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9447
    const-string v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9448
    const-string v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9449
    const-string v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9451
    :cond_1c5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9452
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9453
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9454
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9455
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9456
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9457
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9458
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9459
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9460
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9461
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9462
    const-string v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9463
    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9464
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9465
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9466
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9467
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9468
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9469
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9470
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9471
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9472
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9473
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9474
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9475
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9476
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9477
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9478
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9479
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9480
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9481
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9482
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9483
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9484
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9485
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9486
    const-string v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9487
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9488
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9489
    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9490
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9491
    const-string v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9492
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3af

    .line 9494
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9495
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9497
    :cond_3af
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3c0

    .line 9498
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9499
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9501
    :cond_3c0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3d1

    .line 9502
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9503
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9505
    :cond_3d1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3e2

    .line 9506
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9507
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9509
    :cond_3e2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3f3

    .line 9510
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9511
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9513
    :cond_3f3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_404

    .line 9514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9515
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9517
    :cond_404
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_415

    .line 9518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9519
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9521
    :cond_415
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_426

    .line 9522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9525
    :cond_426
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_437

    .line 9526
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9527
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9529
    :cond_437
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_452

    .line 9530
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9531
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9532
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9534
    :cond_452
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9535
    const-string v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9536
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9537
    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9538
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9539
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9540
    const-string v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 9541
    const-string v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9542
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 9543
    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9544
    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9545
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9546
    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9547
    const-string v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9548
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9549
    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9550
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9551
    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9552
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9553
    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9554
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9556
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/policy/impl/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 9558
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mForceTransientBars="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9559
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 9560
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 9563
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9564
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9565
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideSViewCoverWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9566
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsCoverManagerDisabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9569
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEasyOneHandEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9571
    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 7707
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 7708
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 7710
    :cond_9
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8308
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readLidState()V

    .line 8309
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 8311
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverVerifyState()I

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_11
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverVerifiedState(ZZ)Z

    .line 8312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v0

    if-nez v0, :cond_25

    :goto_1c
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    .line 8314
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 8315
    return-void

    :cond_23
    move v0, v2

    .line 8311
    goto :goto_11

    :cond_25
    move v1, v2

    .line 8312
    goto :goto_1c
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 7714
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 7715
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 7717
    :cond_9
    return-void
.end method

.method public finishLayoutLw()V
    .registers 1

    .prologue
    .line 5854
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6037
    const/4 v0, 0x0

    .line 6038
    .local v0, "changes":I
    const/4 v5, 0x0

    .line 6039
    .local v5, "topIsFullscreen":Z
    const/4 v2, 0x0

    .line 6041
    .local v2, "openByNotification":Z
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_187

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 6049
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    :goto_10
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v9, :cond_18

    .line 6050
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 6053
    :cond_18
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_53

    .line 6057
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v9, :cond_24

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v9, :cond_18d

    .line 6059
    :cond_24
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 6060
    or-int/lit8 v0, v0, 0x1

    .line 6062
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 6066
    :cond_31
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v9, :cond_18a

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v9

    if-eqz v9, :cond_18a

    move v5, v7

    .line 6068
    :goto_3e
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v9, :cond_53

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 6069
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/internal/policy/impl/BarController;->updateVisibilityLw(ZII)I

    .line 6137
    :cond_53
    :goto_53
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v9, v5, :cond_5d

    .line 6138
    if-nez v5, :cond_5b

    .line 6140
    or-int/lit8 v0, v0, 0x1

    .line 6142
    :cond_5b
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 6146
    :cond_5d
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v9, v5, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setOpenByNotification(ZZ)V

    .line 6151
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_8c

    .line 6154
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v9, :cond_1f0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v9

    if-nez v9, :cond_1f0

    .line 6155
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 6156
    or-int/lit8 v0, v0, 0x7

    .line 6160
    :cond_7a
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 6161
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$18;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$18;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6219
    :cond_8c
    :goto_8c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v6

    const v9, -0x3ffffffa

    and-int/2addr v6, v9

    if-eqz v6, :cond_98

    .line 6222
    or-int/lit8 v0, v0, 0x1

    .line 6226
    :cond_98
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v6

    if-eqz v6, :cond_d8

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v6, v6, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v6, :cond_d8

    .line 6227
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_d8

    .line 6229
    const-string v6, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "finishPostLayoutPolicyLw: mHideSViewCover="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6232
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCover:I

    if-nez v6, :cond_ce

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isRingingOrOffhook()Z

    move-result v6

    if-eqz v6, :cond_25c

    .line 6233
    :cond_ce
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 6234
    or-int/lit8 v0, v0, 0x1

    .line 6246
    :cond_d8
    :goto_d8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v6

    if-eqz v6, :cond_268

    .line 6247
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_10c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 6248
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_f6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_10c

    .line 6249
    :cond_f6
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7, v7, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 6250
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_10c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 6251
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7, v7, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 6261
    :cond_10c
    :goto_10c
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_160

    .line 6262
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_28e

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v6, v7, :cond_28e

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-nez v6, :cond_28e

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    if-nez v6, :cond_28e

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v6

    if-nez v6, :cond_28e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v6

    if-nez v6, :cond_28e

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceHideCenterbar:Z

    if-nez v6, :cond_28e

    .line 6271
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    .line 6272
    .local v4, "topFullAppZone":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_27b

    move v3, v8

    .line 6275
    .local v3, "topAppZone":I
    :goto_14d
    if-ne v4, v3, :cond_287

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_287

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-eqz v6, :cond_287

    .line 6278
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v7, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 6289
    .end local v3    # "topAppZone":I
    .end local v4    # "topFullAppZone":I
    :cond_160
    :goto_160
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_17d

    .line 6290
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    if-nez v6, :cond_295

    if-eqz v1, :cond_295

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v8, 0x1000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_295

    .line 6291
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 6292
    or-int/lit8 v0, v0, 0x1

    .line 6303
    :cond_17d
    :goto_17d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 6308
    return v0

    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_187
    move-object v1, v6

    .line 6041
    goto/16 :goto_10

    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_18a
    move v5, v8

    .line 6066
    goto/16 :goto_3e

    .line 6072
    :cond_18d
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_53

    .line 6079
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_19d

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1c1

    :cond_19d
    move v5, v7

    .line 6082
    :goto_19e
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x2000

    if-nez v9, :cond_1a8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    if-eqz v9, :cond_1c3

    :cond_1a8
    move v2, v7

    .line 6089
    :goto_1a9
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_1c5

    .line 6090
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_1bb

    .line 6091
    or-int/lit8 v0, v0, 0x1

    .line 6098
    :cond_1bb
    if-nez v5, :cond_53

    .line 6099
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceTransientBars:Z

    goto/16 :goto_53

    :cond_1c1
    move v5, v8

    .line 6079
    goto :goto_19e

    :cond_1c3
    move v2, v8

    .line 6082
    goto :goto_1a9

    .line 6102
    :cond_1c5
    if-eqz v5, :cond_1e1

    .line 6104
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v8}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 6105
    or-int/lit8 v0, v0, 0x1

    .line 6107
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 6109
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindowManager$17;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$17;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_53

    .line 6127
    :cond_1e1
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/BarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_53

    .line 6128
    or-int/lit8 v0, v0, 0x1

    .line 6130
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    goto/16 :goto_53

    .line 6168
    :cond_1f0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v9, :cond_210

    .line 6169
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreenByCover:Z

    if-eqz v6, :cond_20e

    move v6, v8

    :goto_1fb
    invoke-interface {v9, v6}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v6

    if-eqz v6, :cond_203

    .line 6173
    or-int/lit8 v0, v0, 0x7

    .line 6177
    :cond_203
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingDream:Z

    if-nez v6, :cond_8c

    .line 6178
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_8c

    :cond_20e
    move v6, v7

    .line 6169
    goto :goto_1fb

    .line 6180
    :cond_210
    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v9, :cond_249

    .line 6182
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v6, v7, :cond_233

    .line 6184
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v6

    if-eqz v6, :cond_222

    .line 6185
    or-int/lit8 v0, v0, 0x7

    .line 6189
    :cond_222
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    .line 6190
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$19;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8c

    .line 6199
    :cond_233
    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDismissKeyguard:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_8c

    .line 6200
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v6

    if-eqz v6, :cond_242

    .line 6201
    or-int/lit8 v0, v0, 0x7

    .line 6205
    :cond_242
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_8c

    .line 6209
    :cond_249
    iput-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6210
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v6

    if-eqz v6, :cond_255

    .line 6211
    or-int/lit8 v0, v0, 0x7

    .line 6215
    :cond_255
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setHidden(Z)V

    goto/16 :goto_8c

    .line 6237
    :cond_25c
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 6238
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_d8

    .line 6256
    :cond_268
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_10c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_10c

    .line 6257
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_10c

    .line 6272
    .restart local v4    # "topFullAppZone":I
    :cond_27b
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    goto/16 :goto_14d

    .line 6280
    .restart local v3    # "topAppZone":I
    :cond_287
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_160

    .line 6283
    .end local v3    # "topAppZone":I
    .end local v4    # "topFullAppZone":I
    :cond_28e
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v7, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto/16 :goto_160

    .line 6295
    :cond_295
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v6

    if-eqz v6, :cond_17d

    .line 6296
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_17d
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 5
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 6337
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6339
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 6341
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3ffffffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 6344
    const/4 v0, 0x1

    .line 6346
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAboveUniverseLayer()I
    .registers 2

    .prologue
    .line 2590
    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getConfigDisplayHeight(III)I
    .registers 6
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2631
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2623
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "contentInset"    # Landroid/graphics/Rect;

    .prologue
    const v6, 0x10100

    .line 4470
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4471
    .local v2, "fl":I
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v4, v5

    .line 4473
    .local v3, "systemUiVisibility":I
    and-int v4, v2, v6

    if-ne v4, v6, :cond_8b

    .line 4476
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_3d

    and-int/lit16 v4, v3, 0x200

    if-eqz v4, :cond_3d

    .line 4478
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 4479
    .local v1, "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v0, v4, v5

    .line 4484
    .local v0, "availBottom":I
    :goto_25
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_5a

    .line 4485
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_4a

    .line 4486
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4506
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :goto_3c
    return-void

    .line 4481
    :cond_3d
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v1, v4, v5

    .line 4482
    .restart local v1    # "availRight":I
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v0, v4, v5

    .restart local v0    # "availBottom":I
    goto :goto_25

    .line 4490
    :cond_4a
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c

    .line 4493
    :cond_5a
    and-int/lit16 v4, v2, 0x400

    if-nez v4, :cond_63

    const/high16 v4, 0x2000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_67

    .line 4494
    :cond_63
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3c

    .line 4495
    :cond_67
    and-int/lit16 v4, v3, 0x404

    if-nez v4, :cond_7b

    .line 4497
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c

    .line 4500
    :cond_7b
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    sub-int v7, v0, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3c

    .line 4505
    .end local v0    # "availBottom":I
    .end local v1    # "availRight":I
    :cond_8b
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3c
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4947
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4948
    return-void
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5792
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5793
    if-eqz p1, :cond_29

    .line 5794
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5795
    .local v0, "fl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v1

    .line 5796
    .local v1, "sysUiFl":I
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_29

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_29

    const/high16 v2, 0x4000000

    and-int/2addr v2, v0

    if-nez v2, :cond_29

    .line 5799
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 5802
    .end local v0    # "fl":I
    .end local v1    # "sysUiFl":I
    :cond_29
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v2
.end method

.method public getFocusedWindow()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 7780
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .registers 6

    .prologue
    .line 9611
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 9612
    const/4 v2, 0x4

    .line 9613
    .local v2, "visibility":I
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_33

    .line 9614
    const/4 v1, 0x0

    .line 9615
    .local v1, "topIsFullscreen":Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_20

    .line 9616
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 9617
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1f

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_38

    :cond_1f
    const/4 v1, 0x1

    .line 9620
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_20
    :goto_20
    if-nez v1, :cond_33

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_33

    .line 9621
    const/4 v2, 0x0

    .line 9623
    .end local v1    # "topIsFullscreen":Z
    :cond_33
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifySystemUiVisibility(I)V

    .line 9625
    monitor-exit v4

    return v2

    .line 9617
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "topIsFullscreen":Z
    :cond_38
    const/4 v1, 0x0

    goto :goto_20

    .line 9626
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "topIsFullscreen":Z
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public getMaxWallpaperLayer()I
    .registers 2

    .prologue
    .line 2585
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getMinimizeSize()I
    .registers 2

    .prologue
    .line 5806
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2612
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2615
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_10

    if-ge p1, p2, :cond_15

    .line 2616
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p2, v0

    .line 2619
    .end local p2    # "fullHeight":I
    :cond_15
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .registers 5
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2601
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_f

    .line 2604
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_f

    if-le p1, p2, :cond_f

    .line 2605
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int/2addr p1, v0

    .line 2608
    .end local p1    # "fullWidth":I
    :cond_f
    return p1
.end method

.method public getSViewCoverHeight(Landroid/view/DisplayInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 9291
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_9

    .line 9292
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 9294
    :goto_8
    return v0

    :cond_9
    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    goto :goto_8
.end method

.method public getSViewCoverWidth(Landroid/view/DisplayInfo;)I
    .registers 3
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 9283
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_9

    .line 9284
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 9286
    :goto_8
    return v0

    :cond_9
    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    goto :goto_8
.end method

.method public getScaleWindowResizableSize()I
    .registers 2

    .prologue
    .line 5810
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScaleWindowResizableSize:I

    return v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 934
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 937
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 938
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .registers 2

    .prologue
    .line 4939
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    .line 4942
    :goto_a
    return v0

    .line 4940
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_a

    .line 4941
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    goto :goto_a

    .line 4942
    :cond_21
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUserRotationMode()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 8067
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method goHome()Z
    .registers 20

    .prologue
    .line 8683
    :try_start_0
    const-string v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_40

    .line 8685
    const-string v1, "WindowManager"

    const-string v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8702
    :cond_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v18

    .line 8708
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_76

    .line 8709
    const/4 v1, 0x0

    .line 8715
    .end local v18    # "result":I
    :goto_3f
    return v1

    .line 8687
    :cond_40
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 8688
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 8689
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 8690
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_11

    .line 8691
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6d} :catch_75

    move-result v18

    .line 8697
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_11

    .line 8698
    const/4 v1, 0x0

    goto :goto_3f

    .line 8711
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_75
    move-exception v1

    .line 8715
    :cond_76
    const/4 v1, 0x1

    goto :goto_3f
.end method

.method handleVolumeKey(II)V
    .registers 9
    .param p1, "stream"    # I
    .param p2, "keycode"    # I

    .prologue
    const/16 v5, 0x18

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 6475
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6476
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_b

    .line 6505
    :goto_a
    return-void

    .line 6485
    :cond_b
    :try_start_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6486
    const/4 v4, 0x3

    if-ne p1, v4, :cond_26

    .line 6487
    if-ne p2, v5, :cond_24

    :goto_15
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Landroid/media/IAudioService;->adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1e} :catch_33
    .catchall {:try_start_b .. :try_end_1e} :catchall_54

    .line 6503
    :goto_1e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    :cond_24
    move v2, v3

    .line 6487
    goto :goto_15

    .line 6493
    :cond_26
    if-ne p2, v5, :cond_52

    :goto_28
    const/4 v3, 0x0

    :try_start_29
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v2, v3, v4}, Landroid/media/IAudioService;->adjustStreamVolume(IIILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_33
    .catchall {:try_start_29 .. :try_end_32} :catchall_54

    goto :goto_1e

    .line 6500
    :catch_33
    move-exception v1

    .line 6501
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IAudioService.adjust*StreamVolume() threw RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_54

    .line 6503
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_52
    move v2, v3

    .line 6493
    goto :goto_28

    .line 6503
    :catchall_54
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2
.end method

.method public hasCocktailBar()Z
    .registers 2

    .prologue
    .line 9049
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .prologue
    .line 9018
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hasSystemNavBar()Z
    .registers 3

    .prologue
    .line 2595
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSystemNavBar:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSpcNavigationBar:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    .prologue
    .line 8223
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$38;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$38;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8231
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 7752
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 7753
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1484
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1485
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1486
    const-string v8, "1"

    const-string v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    .line 1487
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1488
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9, v10}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    .line 1490
    :try_start_29
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-interface {p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_3d1

    .line 1494
    :goto_32
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    .line 1495
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    .line 1496
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v9, "com.sec.android.app.FlashBarService"

    const-string v10, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCockBarServiceIntent:Landroid/content/Intent;

    .line 1501
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCockBarServiceIntent:Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.cocktailbarservice"

    const-string v10, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p0, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    .line 1505
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1506
    new-instance v8, Lcom/android/internal/policy/impl/ShortcutManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/ShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    .line 1507
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/ShortcutManager;->observe()V

    .line 1508
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I

    .line 1510
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1511
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1514
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1515
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.CAR_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1518
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1519
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v9, "android.intent.category.DESK_DOCK"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1520
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1524
    const-string v8, "phone"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1527
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1528
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "PhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1530
    const-string v8, "1"

    const-string v9, "ro.debuggable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1531
    const v8, 0x10e0014

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .line 1534
    const v8, 0x10e0075

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 1537
    const v8, 0x10e0016

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    .line 1539
    const v8, 0x10e0015

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    .line 1541
    const v8, 0x10e0017

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1543
    const v8, 0x10e0046

    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readRotation(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    .line 1545
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110023

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1547
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110022

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1549
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    .line 1551
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1553
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1555
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1557
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111002d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1559
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110066

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    .line 1562
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    if-eqz v8, :cond_1c7

    .line 1563
    const-string v8, "hardware"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    .line 1566
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLight:Landroid/os/IHardwareService;

    if-nez v8, :cond_1c7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mButtonLightEnabled:Z

    .line 1569
    :cond_1c7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1572
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1573
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1574
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1575
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1576
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1578
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1579
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_1f9

    .line 1581
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 1584
    :cond_1f9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1fa
    const/4 v8, 0x3

    if-ge v1, v8, :cond_207

    .line 1585
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fa

    .line 1587
    :cond_207
    const/4 v1, 0x0

    :goto_208
    const/4 v8, 0x3

    if-ge v1, v8, :cond_215

    .line 1588
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_208

    .line 1590
    :cond_215
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1593
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1594
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1595
    const-string v8, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1596
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1599
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1600
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1603
    new-instance v8, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$9;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v8, p1, v9}, Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    .line 1662
    new-instance v8, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .line 1663
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemGestures:Lcom/android/internal/policy/impl/SystemGesturesPointerEventListener;

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1666
    new-instance v4, Landroid/content/IntentFilter;

    const-string v8, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v4, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v4, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1671
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1672
    .local v3, "kidsModeFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1675
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKidsModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1678
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 1681
    const-string v8, "vibrator"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1684
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v6, "wifiDisplayFilter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 1689
    .local v7, "wifidisplayIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001c

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1691
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001d

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1693
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001e

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1695
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001f

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1697
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070020

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1700
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1703
    new-instance v8, Lcom/android/internal/policy/impl/GlobalKeyManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/policy/impl/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    .line 1706
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cover.flip"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    .line 1708
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cover.sview"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    .line 1710
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportFlipCover:Z

    if-nez v8, :cond_315

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsSupportSViewCover:Z

    if-eqz v8, :cond_322

    .line 1711
    :cond_315
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 1712
    new-instance v8, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v8}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 1717
    :cond_322
    new-instance v8, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {v8}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;-><init>()V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 1718
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual {v8, v9, p0, v10, v11}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 1719
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "PolicyKey"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyThread:Landroid/os/HandlerThread;

    .line 1720
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 1721
    new-instance v8, Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    .line 1722
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindowManager$10;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1733
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->initializeHdmiState()V

    .line 1735
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1736
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1737
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v8, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 1738
    if-eqz v2, :cond_39d

    .line 1739
    const-string v8, "android.intent.extra.device_state"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    .line 1741
    const/4 v8, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseConnectedDock:I

    if-ne v8, v9, :cond_3c8

    .line 1742
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 1746
    :goto_37f
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 1747
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmartDock Connected  :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_39d
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_3cc

    .line 1752
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 1758
    :goto_3a9
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 1759
    .local v5, "versionInfo":Landroid/os/Bundle;
    const-string v8, "2.0"

    const-string v9, "version"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c7

    .line 1760
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v9, "persona"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PersonaManager;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    .line 1764
    :cond_3c7
    return-void

    .line 1744
    .end local v5    # "versionInfo":Landroid/os/Bundle;
    :cond_3c8
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    goto :goto_37f

    .line 1754
    :cond_3cc
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManager;->screenTurnedOff(I)V

    goto :goto_3a9

    .line 1491
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "kidsModeFilter":Landroid/content/IntentFilter;
    .end local v4    # "kioskFilter":Landroid/content/IntentFilter;
    .end local v6    # "wifiDisplayFilter":Landroid/content/IntentFilter;
    .end local v7    # "wifidisplayIntent":Landroid/content/Intent;
    :catch_3d1
    move-exception v8

    goto/16 :goto_32
.end method

.method initializeHdmiState()V
    .registers 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6423
    const/4 v4, 0x0

    .line 6425
    .local v4, "plugged":Z
    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 6426
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v10, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v9, v10}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 6428
    const-string v2, "/sys/class/switch/hdmi/state"

    .line 6429
    .local v2, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6431
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_1a
    new-instance v6, Ljava/io/FileReader;

    const-string v9, "/sys/class/switch/hdmi/state"

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_6f
    .catchall {:try_start_1a .. :try_end_21} :catchall_90

    .line 6432
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    const/16 v9, 0xf

    :try_start_23
    new-array v0, v9, [C

    .line 6433
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 6434
    .local v3, "n":I
    if-le v3, v7, :cond_3a

    .line 6435
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v3, -0x1

    invoke-direct {v9, v0, v10, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_36} :catch_a2
    .catchall {:try_start_23 .. :try_end_36} :catchall_9f

    move-result v9

    if-eqz v9, :cond_4c

    move v4, v7

    .line 6442
    :cond_3a
    :goto_3a
    if-eqz v6, :cond_3f

    .line 6444
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_9b

    .line 6452
    .end local v0    # "buf":[C
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    :cond_3f
    :goto_3f
    if-nez v4, :cond_97

    move v9, v7

    :goto_42
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6453
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v9, :cond_99

    :goto_48
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 6454
    return-void

    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :cond_4c
    move v4, v8

    .line 6435
    goto :goto_3a

    .line 6437
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_4e
    move-exception v1

    .line 6438
    .local v1, "ex":Ljava/io/IOException;
    :goto_4f
    :try_start_4f
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_90

    .line 6442
    if-eqz v5, :cond_3f

    .line 6444
    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_3f

    .line 6445
    :catch_6d
    move-exception v9

    goto :goto_3f

    .line 6439
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_6f
    move-exception v1

    .line 6440
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_70
    :try_start_70
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_70 .. :try_end_88} :catchall_90

    .line 6442
    if-eqz v5, :cond_3f

    .line 6444
    :try_start_8a
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_3f

    .line 6445
    :catch_8e
    move-exception v9

    goto :goto_3f

    .line 6442
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_90
    move-exception v7

    :goto_91
    if-eqz v5, :cond_96

    .line 6444
    :try_start_93
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9d

    .line 6446
    :cond_96
    :goto_96
    throw v7

    .end local v2    # "filename":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_97
    move v9, v8

    .line 6452
    goto :goto_42

    :cond_99
    move v7, v8

    .line 6453
    goto :goto_48

    .line 6445
    .restart local v0    # "buf":[C
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v3    # "n":I
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_9b
    move-exception v9

    goto :goto_3f

    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_9d
    move-exception v8

    goto :goto_96

    .line 6442
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_9f
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_91

    .line 6439
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_a2
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_70

    .line 6437
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_a5
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_4f
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 59
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3235
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v30

    .line 3236
    .local v30, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v29

    .line 3237
    .local v29, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v41

    .line 3238
    .local v41, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v35

    .line 3239
    .local v35, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    .line 3240
    .local v21, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_64

    const/16 v18, 0x1

    .line 3241
    .local v18, "down":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    .line 3262
    .local v13, "canceled":Z
    const/16 v3, 0x19

    move/from16 v0, v29

    if-eq v0, v3, :cond_2c

    const/16 v3, 0x18

    move/from16 v0, v29

    if-ne v0, v3, :cond_67

    :cond_2c
    if-eqz v41, :cond_67

    .line 3264
    const/16 v54, 0x0

    .line 3265
    .local v54, "volumeKeyEnabled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v19

    .line 3266
    .local v19, "edmKioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v19, :cond_43

    .line 3267
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isHardwareKeyAllowed(IZ)Z

    move-result v54

    .line 3269
    :cond_43
    if-nez v54, :cond_67

    .line 3270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v5, 0x1

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleSamsungVolumeControl(IZZ)V

    .line 3276
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeDownKeyTriggered:Z

    .line 3277
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeUpKeyTriggered:Z

    .line 3278
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 3279
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 3280
    const-wide/16 v5, -0x1

    .line 4136
    .end local v19    # "edmKioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v54    # "volumeKeyEnabled":Z
    :goto_63
    return-wide v5

    .line 3240
    .end local v13    # "canceled":Z
    .end local v18    # "down":Z
    :cond_64
    const/16 v18, 0x0

    goto :goto_1c

    .line 3287
    .restart local v13    # "canceled":Z
    .restart local v18    # "down":Z
    :cond_67
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-eqz v3, :cond_d1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d1

    .line 3289
    const/16 v25, 0x1

    .line 3290
    .local v25, "isAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_c7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_c7

    .line 3292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_bd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 3293
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v25

    .line 3294
    const/16 v3, 0x18

    move/from16 v0, v29

    if-ne v0, v3, :cond_b8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    if-eqz v3, :cond_b8

    .line 3295
    const/16 v25, 0x1

    .line 3296
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    .line 3307
    :cond_b8
    :goto_b8
    if-nez v25, :cond_d1

    .line 3308
    const-wide/16 v5, -0x1

    goto :goto_63

    .line 3300
    :cond_bd
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v25

    goto :goto_b8

    .line 3305
    :cond_c7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v25

    goto :goto_b8

    .line 3353
    .end local v25    # "isAllowed":Z
    :cond_d1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37

    .line 3354
    .local v37, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    move-wide/from16 v1, v37

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTimeoutTimeOfKeyCombination(Landroid/view/KeyEvent;J)J

    move-result-wide v48

    .line 3355
    .local v48, "timeoutTime":J
    cmp-long v3, v37, v48

    if-gez v3, :cond_e9

    .line 3356
    sub-long v5, v48, v37

    goto/16 :goto_63

    .line 3358
    :cond_e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 3359
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3364
    :cond_f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v3

    if-eqz v3, :cond_117

    const/4 v3, 0x3

    move/from16 v0, v29

    if-eq v0, v3, :cond_117

    .line 3365
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_113

    const-string v3, "WindowManager"

    const-string v5, "interceptKeyTi : Key was blocked by access control"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_113
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3371
    :cond_117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_15b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_15b

    .line 3372
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_157

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTi : Key was blocked by sidesync. keycode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", repeatCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_157
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3389
    :cond_15b
    const/4 v3, 0x3

    move/from16 v0, v29

    if-ne v0, v3, :cond_4c4

    .line 3391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_176

    .line 3392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3394
    :cond_176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_1e7

    .line 3395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 3396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 3397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v31

    .line 3398
    .local v31, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v31, :cond_1c8

    .line 3399
    const/16 v25, 0x1

    .line 3400
    .restart local v25    # "isAllowed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1c0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1c0

    .line 3401
    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v25

    .line 3405
    :goto_1b3
    if-nez v25, :cond_1c8

    .line 3406
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by edm"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3403
    :cond_1c0
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v25

    goto :goto_1b3

    .line 3410
    .end local v25    # "isAllowed":Z
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_1dc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 3412
    :cond_1dc
    const-string v3, "WindowManager"

    const-string v5, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3419
    .end local v31    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_1e7
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    if-eqz v3, :cond_21b

    .line 3420
    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-nez v3, :cond_21b

    .line 3421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    sget v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v24

    .line 3422
    .local v24, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v24, :cond_21b

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_21b

    .line 3423
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/pm/PersonaInfo;

    .line 3424
    .local v39, "perInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v39

    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v3, :cond_21b

    .line 3425
    const-string v3, "WindowManager"

    const-string v5, "home button is disabled. Superlock state"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3434
    .end local v24    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v39    # "perInfo":Landroid/content/pm/PersonaInfo;
    :cond_21b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_240

    .line 3435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_240

    .line 3436
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_23c

    const-string v3, "WindowManager"

    const-string v5, "Home key is send to SideSync"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_23c
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3444
    :cond_240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockHomeKey(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_255

    .line 3445
    const-string v3, "WindowManager"

    const-string v5, "Home key is blocked by policy"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3450
    :cond_255
    if-eqz p1, :cond_279

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 3451
    .local v12, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_25b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_27f

    .line 3452
    if-eqz v12, :cond_27b

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_27b

    .line 3453
    const-string v3, "homekey"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3454
    const-wide/16 v5, 0x64

    goto/16 :goto_63

    .line 3450
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_279
    const/4 v12, 0x0

    goto :goto_25b

    .line 3457
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_27b
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3464
    :cond_27f
    if-nez v18, :cond_3ad

    .line 3465
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3468
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v3, :cond_295

    .line 3469
    const-string v3, "WindowManager"

    const-string v5, "Ignoring up event!! Coming up event without pressed."

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3473
    :cond_295
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3474
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v3, :cond_2b4

    .line 3475
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 3476
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2b0

    .line 3477
    const-string v3, "WindowManager"

    const-string v5, "Home consumed!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    :cond_2b0
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3482
    :cond_2b4
    if-eqz v13, :cond_2c1

    .line 3483
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; event canceled."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3491
    :cond_2c1
    :try_start_2c1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v47

    .line 3492
    .local v47, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v47, :cond_2ec

    invoke-interface/range {v47 .. v47}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_2ec

    .line 3493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isShowingIncomingPopup()Z

    move-result v3

    if-nez v3, :cond_2ec

    .line 3494
    const-string v3, "WindowManager"

    const-string v5, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2de
    .catch Landroid/os/RemoteException; {:try_start_2c1 .. :try_end_2de} :catch_2e2

    .line 3495
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3498
    .end local v47    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_2e2
    move-exception v20

    .line 3499
    .local v20, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3503
    .end local v20    # "ex":Landroid/os/RemoteException;
    :cond_2ec
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isVoIPRinging()Z

    move-result v27

    .line 3504
    .local v27, "isVoIPRinging":Z
    const/16 v26, 0x0

    .line 3505
    .local v26, "isAnyKeyMode":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "anykey_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_31e

    .line 3507
    const/16 v26, 0x0

    .line 3512
    :goto_306
    if-eqz v27, :cond_328

    .line 3513
    if-eqz v26, :cond_328

    .line 3515
    :try_start_30a
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v53

    .line 3516
    .local v53, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v53, :cond_321

    .line 3517
    invoke-interface/range {v53 .. v53}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 3518
    const-string v3, "WindowManager"

    const-string v5, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3509
    .end local v53    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_31e
    const/16 v26, 0x1

    goto :goto_306

    .line 3521
    .restart local v53    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_321
    const-string v3, "WindowManager"

    const-string v5, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_328
    .catch Landroid/os/RemoteException; {:try_start_30a .. :try_end_328} :catch_358

    .line 3541
    .end local v53    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_328
    :goto_328
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_363

    .line 3542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3545
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_354

    .line 3546
    const-string v3, "WindowManager"

    const-string v5, "Home triple tap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    :cond_354
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3523
    :catch_358
    move-exception v20

    .line 3524
    .restart local v20    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_328

    .line 3549
    .end local v20    # "ex":Landroid/os/RemoteException;
    :cond_363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-nez v3, :cond_377

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3a6

    .line 3551
    :cond_377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3552
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3555
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3a2

    .line 3556
    const-string v3, "WindowManager"

    const-string v5, "Home double tap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    :cond_3a2
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3562
    :cond_3a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 3563
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3567
    .end local v26    # "isAnyKeyMode":Z
    .end local v27    # "isVoIPRinging":Z
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setFingerPrintPending()V

    .line 3571
    const/16 v42, 0x0

    .line 3577
    .local v42, "sendToKeyguard":Z
    if-eqz v12, :cond_41e

    .line 3578
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v50, v0

    .line 3579
    .local v50, "type":I
    const/16 v3, 0x7d4

    move/from16 v0, v50

    if-eq v0, v3, :cond_3e0

    const/16 v3, 0x7ed

    move/from16 v0, v50

    if-eq v0, v3, :cond_3e0

    const/16 v3, 0x7d9

    move/from16 v0, v50

    if-eq v0, v3, :cond_3e0

    const/16 v3, 0x7e7

    move/from16 v0, v50

    if-eq v0, v3, :cond_3e0

    const/16 v3, 0x832

    move/from16 v0, v50

    if-eq v0, v3, :cond_3e0

    const/16 v3, 0x8cb

    move/from16 v0, v50

    if-ne v0, v3, :cond_3f3

    .line 3585
    :cond_3e0
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3eb

    .line 3586
    const-string v3, "WindowManager"

    const-string v5, "System window has focus. Send home key event."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_3eb
    const/16 v3, 0x7d4

    move/from16 v0, v50

    if-ne v0, v3, :cond_417

    .line 3597
    const/16 v42, 0x1

    .line 3603
    :cond_3f3
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v3

    move/from16 v51, v0

    .line 3604
    .local v51, "typeCount":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3fa
    move/from16 v0, v23

    move/from16 v1, v51

    if-ge v0, v1, :cond_41e

    .line 3605
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v3, v3, v23

    move/from16 v0, v50

    if-ne v0, v3, :cond_41b

    .line 3607
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_413

    .line 3608
    const-string v3, "WindowManager"

    const-string v5, "WHDW window has focus. Not working."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3610
    :cond_413
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3599
    .end local v23    # "i":I
    .end local v51    # "typeCount":I
    :cond_417
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3604
    .restart local v23    # "i":I
    .restart local v51    # "typeCount":I
    :cond_41b
    add-int/lit8 v23, v23, 0x1

    goto :goto_3fa

    .line 3616
    .end local v23    # "i":I
    .end local v50    # "type":I
    .end local v51    # "typeCount":I
    :cond_41e
    if-nez v41, :cond_4a7

    .line 3617
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3618
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 3620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleHomeKeyInRinging()I

    move-result v22

    .line 3621
    .local v22, "handleHomeKeyInRinging":I
    if-gtz v22, :cond_43e

    .line 3622
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    .line 3623
    move/from16 v0, v22

    int-to-long v5, v0

    goto/16 :goto_63

    .line 3631
    :cond_43e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_46d

    .line 3632
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_469

    .line 3637
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 3660
    .end local v22    # "handleHomeKeyInRinging":I
    :cond_463
    :goto_463
    if-eqz v42, :cond_4c0

    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3639
    .restart local v22    # "handleHomeKeyInRinging":I
    :cond_469
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnHome()V

    goto :goto_463

    .line 3641
    :cond_46d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    if-eqz v3, :cond_487

    .line 3642
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 3643
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPolicyKeyHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3644
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleTripleTapOnHome()V

    goto :goto_463

    .line 3646
    :cond_487
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4a3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4a3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_463

    .line 3649
    :cond_4a3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_463

    .line 3651
    .end local v22    # "handleHomeKeyInRinging":I
    :cond_4a7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_463

    .line 3653
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeTripleTapPending:Z

    .line 3655
    if-nez v30, :cond_463

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeConsumed:Z

    if-nez v3, :cond_463

    .line 3656
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome()V

    goto :goto_463

    .line 3662
    :cond_4c0
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3663
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v42    # "sendToKeyguard":Z
    :cond_4c4
    const/16 v3, 0x52

    move/from16 v0, v29

    if-ne v0, v3, :cond_5ea

    .line 3666
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_4e7

    if-eqz p1, :cond_4e7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4e7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFixedBounds()Z

    move-result v3

    if-eqz v3, :cond_4e7

    .line 3670
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3673
    :cond_4e7
    const/4 v15, 0x1

    .line 3675
    .local v15, "chordBug":I
    if-eqz v18, :cond_511

    if-nez v41, :cond_511

    .line 3676
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v3, :cond_582

    and-int/lit8 v3, v35, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_582

    .line 3677
    new-instance v4, Landroid/content/Intent;

    const-string v3, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3678
    .local v4, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3680
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3699
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_511
    if-eqz v18, :cond_5d4

    .line 3701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_527

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_527

    .line 3702
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3705
    :cond_527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->checkMenuLongPressIgnore()Z

    move-result v3

    if-eqz v3, :cond_5c8

    .line 3706
    const/4 v3, 0x7

    move/from16 v0, v41

    if-ne v0, v3, :cond_582

    if-nez v13, :cond_582

    .line 3707
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_556

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :cond_556
    const/16 v36, 0x0

    .line 3711
    .local v36, "multiWindowDisabled":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_573

    .line 3712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    .line 3714
    .local v32, "lpApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v32, :cond_573

    .line 3715
    move-object/from16 v0, v32

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v5, 0x100000

    and-int/2addr v3, v5

    if-eqz v3, :cond_573

    .line 3716
    const/16 v36, 0x1

    .line 3721
    .end local v32    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    :cond_573
    if-nez v36, :cond_582

    .line 3722
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnMenu()V

    .line 3723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleMenuLongPress()Z

    move-result v3

    if-eqz v3, :cond_582

    .line 4032
    .end local v15    # "chordBug":I
    .end local v36    # "multiWindowDisabled":Z
    :cond_582
    :goto_582
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v3, :cond_9b4

    .line 4033
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v28

    .line 4034
    .local v28, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v28 .. v29}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_9b4

    .line 4035
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 4036
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 4037
    if-eqz v18, :cond_5c4

    if-nez v41, :cond_5c4

    if-nez v30, :cond_5c4

    .line 4038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v35

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v44

    .line 4039
    .local v44, "shortcutIntent":Landroid/content/Intent;
    if-eqz v44, :cond_996

    .line 4040
    const/high16 v3, 0x10000000

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4042
    :try_start_5b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5c4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5b9 .. :try_end_5c4} :catch_975

    .line 4053
    .end local v44    # "shortcutIntent":Landroid/content/Intent;
    :cond_5c4
    :goto_5c4
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3729
    .end local v28    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v15    # "chordBug":I
    :cond_5c8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_582

    .line 3730
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnMenu()V

    goto :goto_582

    .line 3734
    :cond_5d4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    if-eqz v3, :cond_5e3

    .line 3735
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeMenuKeyUp:Z

    .line 3736
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3739
    :cond_5e3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    goto :goto_582

    .line 3743
    .end local v15    # "chordBug":I
    :cond_5ea
    const/16 v3, 0x54

    move/from16 v0, v29

    if-ne v0, v3, :cond_616

    .line 3747
    if-eqz v18, :cond_602

    .line 3748
    if-nez v41, :cond_5fe

    .line 3749
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3750
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3759
    :cond_5fe
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3753
    :cond_602
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3754
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v3, :cond_5fe

    .line 3755
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3756
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3760
    :cond_616
    const/16 v3, 0x10f

    move/from16 v0, v29

    if-ne v0, v3, :cond_694

    .line 3761
    if-eqz v18, :cond_690

    .line 3762
    const-string v3, "WindowManager"

    const-string v5, "KEYCODE_SIM keyocde"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3764
    const-string v3, "ril.ICC_TYPE"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3765
    .local v33, "mSimState_1":Ljava/lang/String;
    const-string v3, "ril.ICC_TYPE_1"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3767
    .local v34, "mSimState_2":Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_645

    const-string v3, "0"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_649

    .line 3768
    :cond_645
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3771
    :cond_649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "phone1_on"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_677

    const/16 v45, 0x1

    .line 3772
    .local v45, "sim1Off":Z
    :goto_65c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "phone2_on"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_67a

    const/16 v46, 0x1

    .line 3774
    .local v46, "sim2Off":Z
    :goto_66f
    or-int v3, v45, v46

    if-eqz v3, :cond_67d

    .line 3775
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3771
    .end local v45    # "sim1Off":Z
    .end local v46    # "sim2Off":Z
    :cond_677
    const/16 v45, 0x0

    goto :goto_65c

    .line 3772
    .restart local v45    # "sim1Off":Z
    :cond_67a
    const/16 v46, 0x0

    goto :goto_66f

    .line 3777
    .restart local v46    # "sim2Off":Z
    :cond_67d
    :try_start_67d
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v47

    .line 3778
    .restart local v47    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v47, :cond_690

    .line 3779
    invoke-interface/range {v47 .. v47}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v16

    .line 3780
    .local v16, "currSimId":I
    add-int/lit8 v3, v16, 0x1

    rem-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v47

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultSimForVoiceCalls(I)V
    :try_end_690
    .catch Landroid/os/RemoteException; {:try_start_67d .. :try_end_690} :catch_b2a

    .line 3785
    .end local v16    # "currSimId":I
    .end local v33    # "mSimState_1":Ljava/lang/String;
    .end local v34    # "mSimState_2":Ljava/lang/String;
    .end local v45    # "sim1Off":Z
    .end local v46    # "sim2Off":Z
    .end local v47    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_690
    :goto_690
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3786
    :cond_694
    const/16 v3, 0xbb

    move/from16 v0, v29

    if-eq v0, v3, :cond_6a0

    const/16 v3, 0xe0

    move/from16 v0, v29

    if-ne v0, v3, :cond_776

    .line 3788
    :cond_6a0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_6b4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_6b4

    .line 3789
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3793
    :cond_6b4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_6ca

    .line 3794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3796
    :cond_6ca
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_707

    .line 3797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 3798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 3799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-gtz v3, :cond_6fc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_707

    .line 3801
    :cond_6fc
    const-string v3, "WindowManager"

    const-string v5, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3807
    :cond_707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0xbb

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_717

    .line 3808
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3818
    :cond_717
    if-nez v30, :cond_720

    .line 3819
    if-eqz v18, :cond_75a

    .line 3820
    if-nez v41, :cond_724

    .line 3821
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->preloadRecentApps()V

    .line 3845
    :cond_720
    :goto_720
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3823
    :cond_724
    const/4 v3, 0x7

    move/from16 v0, v41

    if-ne v0, v3, :cond_720

    if-nez v13, :cond_720

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1110073

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_742

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_720

    .line 3825
    :cond_742
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    .line 3826
    const/16 v3, 0x52

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->injectionKeyEvent(I)V

    .line 3827
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3828
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3832
    :cond_75a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    if-eqz v3, :cond_76c

    .line 3833
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3834
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAppSwitchLongpressed:Z

    .line 3835
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3838
    :cond_76c
    if-nez v13, :cond_772

    .line 3839
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_720

    .line 3841
    :cond_772
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPreloadRecentApps()V

    goto :goto_720

    .line 3846
    :cond_776
    const/16 v3, 0xdb

    move/from16 v0, v29

    if-ne v0, v3, :cond_7ab

    .line 3847
    if-eqz v18, :cond_799

    .line 3848
    if-nez v41, :cond_789

    .line 3849
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3865
    :cond_785
    :goto_785
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3850
    :cond_789
    const/4 v3, 0x1

    move/from16 v0, v41

    if-ne v0, v3, :cond_785

    .line 3851
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3852
    if-nez v30, :cond_785

    .line 3853
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_785

    .line 3857
    :cond_799
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v3, :cond_7a5

    .line 3858
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_785

    .line 3860
    :cond_7a5
    if-nez v30, :cond_785

    .line 3861
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchAssistAction()V

    goto :goto_785

    .line 3866
    :cond_7ab
    const/16 v3, 0x78

    move/from16 v0, v29

    if-ne v0, v3, :cond_7f3

    .line 3867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v3, :cond_7c7

    .line 3868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3870
    :cond_7c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_7e0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_7e0

    .line 3872
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3875
    :cond_7e0
    if-eqz v18, :cond_7ef

    if-nez v41, :cond_7ef

    .line 3876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3878
    :cond_7ef
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3918
    :cond_7f3
    const/4 v3, 0x4

    move/from16 v0, v29

    if-eq v0, v3, :cond_7fe

    const/16 v3, 0x6f

    move/from16 v0, v29

    if-ne v0, v3, :cond_8e9

    .line 3920
    :cond_7fe
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isWearableHMTSupported()Z

    move-result v3

    if-eqz v3, :cond_81e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_81e

    .line 3921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move/from16 v0, v18

    move/from16 v1, v41

    invoke-virtual {v3, v0, v1, v13}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isHMTButtonClick(ZIZ)Z

    move-result v3

    if-eqz v3, :cond_81e

    .line 3922
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3926
    :cond_81e
    if-eqz v18, :cond_8b0

    .line 3928
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v52

    .line 3929
    .local v52, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v5, "version"

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_848

    .line 3930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/PersonaManager;

    .line 3931
    .local v40, "pm":Landroid/os/PersonaManager;
    sget v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v5}, Landroid/os/PersonaManager;->setBackPressed(IZ)V

    .line 3936
    .end local v40    # "pm":Landroid/os/PersonaManager;
    :cond_848
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    .line 3937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_863

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_863

    .line 3938
    if-lez v41, :cond_863

    .line 3939
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3943
    :cond_863
    if-eqz v41, :cond_582

    .line 3951
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_582

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_582

    .line 3952
    const/4 v3, 0x7

    move/from16 v0, v41

    if-ne v0, v3, :cond_8a4

    if-nez v13, :cond_8a4

    .line 3953
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 3954
    sget-boolean v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_8a0

    .line 3955
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiWindowTrayBar toggle / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    :cond_8a0
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3959
    :cond_8a4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_582

    if-lez v41, :cond_582

    .line 3960
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3967
    .end local v52    # "versionInfo":Landroid/os/Bundle;
    :cond_8b0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_582

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_582

    .line 3968
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    if-eqz v3, :cond_8cb

    .line 3969
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mConsumeBackKeyUp:Z

    .line 3970
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3972
    :cond_8cb
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_582

    .line 3973
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3974
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3976
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3984
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_8e9
    const/16 v3, 0x1a

    move/from16 v0, v29

    if-ne v0, v3, :cond_934

    .line 3986
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v3

    if-eqz v3, :cond_909

    .line 3987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_909

    .line 3988
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 3993
    :cond_909
    if-eqz p1, :cond_92e

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    .line 3994
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_90f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_582

    .line 3995
    if-eqz v12, :cond_930

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v3, v5, :cond_930

    .line 3996
    const-string v3, "reason"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3997
    const-wide/16 v5, 0x64

    goto/16 :goto_63

    .line 3993
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_92e
    const/4 v12, 0x0

    goto :goto_90f

    .line 4000
    .restart local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_930
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 4007
    .end local v12    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_934
    const/16 v3, 0x19

    move/from16 v0, v29

    if-eq v0, v3, :cond_940

    const/16 v3, 0x18

    move/from16 v0, v29

    if-ne v0, v3, :cond_965

    .line 4008
    :cond_940
    if-eqz v18, :cond_582

    .line 4010
    :try_start_942
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v47

    .line 4011
    .restart local v47    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v47, :cond_582

    invoke-interface/range {v47 .. v47}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_582

    .line 4012
    const-string v3, "WindowManager"

    const-string v5, "Ignoring VOLUME KEY; there\'s a ringing incoming call."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_955
    .catch Landroid/os/RemoteException; {:try_start_942 .. :try_end_955} :catch_959

    .line 4013
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4015
    .end local v47    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_959
    move-exception v20

    .line 4016
    .restart local v20    # "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v5, "RemoteException from getPhoneInterface()"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_582

    .line 4022
    .end local v20    # "ex":Landroid/os/RemoteException;
    :cond_965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_582

    .line 4023
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4043
    .restart local v28    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v44    # "shortcutIntent":Landroid/content/Intent;
    :catch_975
    move-exception v20

    .line 4044
    .local v20, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c4

    .line 4049
    .end local v20    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_996
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c4

    .line 4058
    .end local v28    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v44    # "shortcutIntent":Landroid/content/Intent;
    :cond_9b4
    if-eqz v18, :cond_a13

    if-nez v41, :cond_a13

    if-nez v30, :cond_a13

    const/high16 v3, 0x10000

    and-int v3, v3, v35

    if-eqz v3, :cond_a13

    .line 4060
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v28

    .line 4061
    .restart local v28    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v28 .. v29}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v3

    if-eqz v3, :cond_a13

    .line 4062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShortcutManager:Lcom/android/internal/policy/impl/ShortcutManager;

    const v5, -0x70001

    and-int v5, v5, v35

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v3, v0, v1, v5}, Lcom/android/internal/policy/impl/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v44

    .line 4065
    .restart local v44    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v44, :cond_a13

    .line 4066
    const/high16 v3, 0x10000000

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4068
    :try_start_9e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v44

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9ef
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9e4 .. :try_end_9ef} :catch_9f3

    .line 4074
    :goto_9ef
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4069
    :catch_9f3
    move-exception v20

    .line 4070
    .restart local v20    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9ef

    .line 4080
    .end local v20    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v28    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v44    # "shortcutIntent":Landroid/content/Intent;
    :cond_a13
    if-eqz v18, :cond_a65

    if-nez v41, :cond_a65

    if-nez v30, :cond_a65

    .line 4081
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4082
    .local v14, "category":Ljava/lang/String;
    if-eqz v14, :cond_a65

    .line 4083
    const-string v3, "android.intent.action.MAIN"

    invoke-static {v3, v14}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 4084
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4086
    :try_start_a30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_a39
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a30 .. :try_end_a39} :catch_a3d

    .line 4092
    :goto_a39
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4087
    :catch_a3d
    move-exception v20

    .line 4088
    .restart local v20    # "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a39

    .line 4097
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v14    # "category":Ljava/lang/String;
    .end local v20    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_a65
    if-eqz v18, :cond_aa2

    if-nez v41, :cond_aa2

    const/16 v3, 0x3d

    move/from16 v0, v29

    if-ne v0, v3, :cond_aa2

    .line 4098
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-nez v3, :cond_abf

    if-nez v30, :cond_abf

    .line 4099
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v0, v3, -0xc2

    move/from16 v43, v0

    .line 4100
    .local v43, "shiftlessModifiers":I
    const/4 v3, 0x2

    move/from16 v0, v43

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_a92

    const/high16 v3, 0x10000

    move/from16 v0, v43

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_abf

    .line 4103
    :cond_a92
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 4104
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 4105
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4108
    .end local v43    # "shiftlessModifiers":I
    :cond_aa2
    if-nez v18, :cond_abf

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    if-eqz v3, :cond_abf

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    and-int v3, v3, v35

    if-nez v3, :cond_abf

    .line 4110
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialogHeldModifiers:I

    .line 4111
    if-eqz v30, :cond_aee

    const/4 v3, 0x2

    :goto_aba
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showOrHideRecentAppsDialog(I)V

    .line 4116
    :cond_abf
    if-eqz v18, :cond_af3

    if-nez v41, :cond_af3

    const/16 v3, 0xcc

    move/from16 v0, v29

    if-eq v0, v3, :cond_ad5

    const/16 v3, 0x3e

    move/from16 v0, v29

    if-ne v0, v3, :cond_af3

    move/from16 v0, v35

    and-int/lit16 v3, v0, 0x7000

    if-eqz v3, :cond_af3

    .line 4120
    :cond_ad5
    move/from16 v0, v35

    and-int/lit16 v3, v0, 0xc1

    if-eqz v3, :cond_af0

    const/16 v17, -0x1

    .line 4121
    .local v17, "direction":I
    :goto_add
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    move/from16 v0, v17

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 4122
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4111
    .end local v17    # "direction":I
    :cond_aee
    const/4 v3, 0x3

    goto :goto_aba

    .line 4120
    :cond_af0
    const/16 v17, 0x1

    goto :goto_add

    .line 4124
    :cond_af3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v3, :cond_b10

    if-nez v18, :cond_b10

    const/16 v3, 0xcc

    move/from16 v0, v29

    if-eq v0, v3, :cond_b07

    const/16 v3, 0x3e

    move/from16 v0, v29

    if-ne v0, v3, :cond_b10

    .line 4127
    :cond_b07
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 4128
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4131
    :cond_b10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v3, v5, v0, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_b26

    .line 4132
    const-wide/16 v5, -0x1

    goto/16 :goto_63

    .line 4136
    :cond_b26
    const-wide/16 v5, 0x0

    goto/16 :goto_63

    .line 3782
    .restart local v33    # "mSimState_1":Ljava/lang/String;
    .restart local v34    # "mSimState_2":Ljava/lang/String;
    .restart local v45    # "sim1Off":Z
    .restart local v46    # "sim2Off":Z
    :catch_b2a
    move-exception v3

    goto/16 :goto_690
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .registers 29
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 6610
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 6612
    const/4 v15, 0x0

    .line 7141
    :cond_9
    :goto_9
    return v15

    .line 6615
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_7b

    const/4 v6, 0x1

    .line 6616
    .local v6, "down":Z
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 6617
    .local v5, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 6618
    .local v12, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v16

    .line 6622
    .local v16, "scanCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_93

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_93

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_93

    .line 6624
    const/4 v9, 0x1

    .line 6625
    .local v9, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_88

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_88

    .line 6627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v21

    if-eqz v21, :cond_7d

    .line 6628
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v9

    .line 6629
    const/16 v21, 0x18

    move/from16 v0, v21

    if-ne v12, v0, :cond_77

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSealedModeReEnableVolumeUpKey:Z

    move/from16 v21, v0

    if-eqz v21, :cond_77

    .line 6630
    const/4 v9, 0x1

    .line 6641
    :cond_77
    :goto_77
    if-nez v9, :cond_93

    .line 6642
    const/4 v15, 0x0

    goto :goto_9

    .line 6615
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v9    # "isAllowed":Z
    .end local v12    # "keyCode":I
    .end local v16    # "scanCode":I
    :cond_7b
    const/4 v6, 0x0

    goto :goto_11

    .line 6634
    .restart local v5    # "canceled":Z
    .restart local v6    # "down":Z
    .restart local v9    # "isAllowed":Z
    .restart local v12    # "keyCode":I
    .restart local v16    # "scanCode":I
    :cond_7d
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v9

    goto :goto_77

    .line 6639
    :cond_88
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v12, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v9

    goto :goto_77

    .line 6646
    .end local v9    # "isAllowed":Z
    :cond_93
    const/high16 v21, 0x1000000

    and-int v21, v21, p2

    if-eqz v21, :cond_130

    const/4 v10, 0x1

    .line 6652
    .local v10, "isInjected":Z
    :goto_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    if-nez v21, :cond_133

    const/4 v13, 0x0

    .line 6657
    .local v13, "keyguardActive":Z
    :goto_a3
    const/16 v21, 0x1a

    move/from16 v0, v21

    if-eq v12, v0, :cond_b7

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v12, v0, :cond_b9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_b9

    .line 6658
    :cond_b7
    or-int/lit8 p2, p2, 0x1

    .line 6660
    :cond_b9
    and-int/lit8 v21, p2, 0x3

    if-eqz v21, :cond_14d

    const/4 v11, 0x1

    .line 6671
    .local v11, "isWakeKey":Z
    :goto_be
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_150

    .line 6672
    if-eqz v6, :cond_dd

    if-eqz p3, :cond_dd

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_dd

    .line 6673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performSystemKeyFeedback(Landroid/view/KeyEvent;)V

    .line 6697
    :cond_dd
    :goto_dd
    if-eqz p3, :cond_e7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    move/from16 v21, v0

    if-eqz v21, :cond_eb

    :cond_e7
    if-eqz v10, :cond_179

    if-nez v11, :cond_179

    .line 6699
    :cond_eb
    const/4 v15, 0x1

    .line 6711
    .local v15, "result":I
    :cond_ec
    :goto_ec
    const/16 v21, 0x11e

    move/from16 v0, v21

    if-ne v12, v0, :cond_fe

    .line 6712
    if-nez v6, :cond_fd

    .line 6713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->sendVoiceWakeUpBroadcast()V

    .line 6715
    :cond_fd
    const/4 v15, 0x0

    .line 6720
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;IZ)V

    .line 6724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v21

    if-eqz v21, :cond_193

    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v12, v0, :cond_193

    .line 6725
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_12c

    const-string v21, "WindowManager"

    const-string v22, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6726
    :cond_12c
    and-int/lit8 v15, v15, -0x2

    .line 6727
    goto/16 :goto_9

    .line 6646
    .end local v10    # "isInjected":Z
    .end local v11    # "isWakeKey":Z
    .end local v13    # "keyguardActive":Z
    .end local v15    # "result":I
    :cond_130
    const/4 v10, 0x0

    goto/16 :goto_9a

    .line 6652
    .restart local v10    # "isInjected":Z
    :cond_133
    if-eqz p3, :cond_141

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v13

    goto/16 :goto_a3

    :cond_141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v13

    goto/16 :goto_a3

    .line 6660
    .restart local v13    # "keyguardActive":Z
    :cond_14d
    const/4 v11, 0x0

    goto/16 :goto_be

    .line 6677
    .restart local v11    # "isWakeKey":Z
    :cond_150
    if-eqz v6, :cond_dd

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v21, v0

    if-eqz v21, :cond_dd

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_dd

    .line 6682
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v21

    if-eqz v21, :cond_dd

    .line 6683
    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_dd

    .line 6703
    :cond_179
    const/4 v15, 0x0

    .line 6704
    .restart local v15    # "result":I
    if-eqz v6, :cond_ec

    if-eqz v11, :cond_ec

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v21

    if-eqz v21, :cond_ec

    .line 6705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performCPUBoost()V

    .line 6706
    or-int/lit8 v15, v15, 0x2

    goto/16 :goto_ec

    .line 6732
    :cond_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_1d1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v21

    if-eqz v21, :cond_1d1

    .line 6733
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_1cd

    const-string v21, "WindowManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "interceptKeyTq : Key was blocked by sidesync. keycode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6734
    :cond_1cd
    and-int/lit8 v15, v15, -0x2

    .line 6735
    goto/16 :goto_9

    .line 6741
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/internal/policy/impl/GlobalKeyManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/policy/impl/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 6746
    sparse-switch v12, :sswitch_data_5a8

    goto/16 :goto_9

    .line 7122
    :sswitch_1e6
    const/16 v21, 0x240

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    if-eqz v6, :cond_9

    .line 7123
    const-string v21, "FakeShutdown"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!@unknown : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7125
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 7126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/internal/policy/impl/PhoneWindowManager$22;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$22;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 6785
    :sswitch_228
    if-eqz v6, :cond_250

    .line 6786
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 6787
    .local v17, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v17, :cond_250

    .line 6789
    :try_start_230
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_250

    .line 6796
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_240
    .catch Landroid/os/RemoteException; {:try_start_230 .. :try_end_240} :catch_244

    .line 6805
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    .line 6821
    :catch_244
    move-exception v7

    .line 6822
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6839
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v6, v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->handleSamsungVolumeControl(IZZ)V

    .line 6842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v12, v6, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    goto/16 :goto_9

    .line 6849
    :sswitch_26a
    and-int/lit8 v15, v15, -0x2

    .line 6850
    if-eqz v6, :cond_298

    .line 6851
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 6852
    .restart local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v8, 0x0

    .line 6853
    .local v8, "hungUp":Z
    if-eqz v17, :cond_279

    .line 6855
    :try_start_275
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_275 .. :try_end_278} :catch_288

    move-result v8

    .line 6860
    :cond_279
    :goto_279
    if-eqz p3, :cond_27d

    if-eqz v8, :cond_295

    :cond_27d
    const/16 v21, 0x1

    :goto_27f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_9

    .line 6856
    :catch_288
    move-exception v7

    .line 6857
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_279

    .line 6860
    .end local v7    # "ex":Landroid/os/RemoteException;
    :cond_295
    const/16 v21, 0x0

    goto :goto_27f

    .line 6862
    .end local v8    # "hungUp":Z
    .end local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_298
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 6863
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_2b0

    .line 6865
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goHome()Z

    move-result v21

    if-nez v21, :cond_9

    .line 6869
    :cond_2b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_9

    .line 6871
    and-int/lit8 v21, v15, -0x3

    or-int/lit8 v15, v21, 0x4

    goto/16 :goto_9

    .line 6879
    :sswitch_2c0
    and-int/lit8 v15, v15, -0x2

    .line 6880
    if-eqz v6, :cond_448

    .line 6881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, p3

    move-wide/from16 v2, v22

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)V

    .line 6883
    if-eqz p3, :cond_30f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    move/from16 v21, v0

    if-nez v21, :cond_30f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_30f

    .line 6885
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6886
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTime:J

    .line 6904
    :cond_30f
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 6905
    .restart local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    const/4 v8, 0x0

    .line 6907
    .restart local v8    # "hungUp":Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v19

    .line 6908
    .local v19, "voipInterfaceService":Landroid/os/IVoIPInterface;
    const-string v20, "com.amc.ui"

    .line 6910
    .local v20, "voipPackageName":Ljava/lang/String;
    if-eqz v17, :cond_325

    .line 6912
    :try_start_31c
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_3c4

    .line 6915
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_325
    .catch Landroid/os/RemoteException; {:try_start_31c .. :try_end_325} :catch_406

    .line 6936
    :cond_325
    :goto_325
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v21

    if-eqz v21, :cond_33a

    .line 6937
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v18

    .line 6938
    .local v18, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v18, :cond_33a

    .line 6940
    :try_start_331
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_414

    .line 6943
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->silenceRinger()V
    :try_end_33a
    .catch Landroid/os/RemoteException; {:try_start_331 .. :try_end_33a} :catch_436

    .line 6966
    .end local v18    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_33a
    :goto_33a
    if-eqz p3, :cond_34a

    if-nez v8, :cond_34a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v21

    if-eqz v21, :cond_444

    :cond_34a
    const/16 v21, 0x1

    :goto_34c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    .line 6971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_372

    .line 6972
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_372

    .line 6973
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_370

    const-string v21, "WindowManager"

    const-string v22, "in interceptKeyBeforeQueueing() KEYCODE_POWER Down event isSideSyncPresentationRunning is true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6974
    :cond_370
    or-int/lit8 v15, v15, 0x1

    .line 6979
    :cond_372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v21

    if-eqz v21, :cond_382

    .line 6980
    or-int/lit8 v15, v15, 0x1

    .line 6985
    :cond_382
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    and-int/lit8 v21, v15, 0x1

    if-nez v21, :cond_9

    .line 6986
    const-string v21, "WindowManager"

    const-string v22, "call handleDoubleTapOnPower()"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6987
    and-int/lit8 v15, v15, -0x5

    .line 6988
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    .line 6989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6990
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleDoubleTapOnPower()V

    .line 6991
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyDown(Z)V

    goto/16 :goto_9

    .line 6916
    :cond_3c4
    :try_start_3c4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_3e4

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_3e4

    if-nez p3, :cond_3de

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_3e4

    .line 6922
    :cond_3de
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v8

    goto/16 :goto_325

    .line 6925
    :cond_3e4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_325

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v21

    if-nez v21, :cond_3fa

    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v21

    if-eqz v21, :cond_325

    :cond_3fa
    invoke-interface/range {v19 .. v20}, Landroid/os/IVoIPInterface;->getVoIPCallCount(Ljava/lang/String;)I

    move-result v21

    if-lez v21, :cond_325

    .line 6928
    invoke-interface/range {v19 .. v19}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_403
    .catch Landroid/os/RemoteException; {:try_start_3c4 .. :try_end_403} :catch_406

    move-result v8

    goto/16 :goto_325

    .line 6931
    :catch_406
    move-exception v7

    .line 6932
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_325

    .line 6944
    .end local v7    # "ex":Landroid/os/RemoteException;
    .restart local v18    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_414
    :try_start_414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_33a

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v21

    if-eqz v21, :cond_33a

    if-nez p3, :cond_42e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    move/from16 v21, v0

    if-nez v21, :cond_33a

    :cond_42e
    if-nez v8, :cond_33a

    .line 6951
    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_433
    .catch Landroid/os/RemoteException; {:try_start_414 .. :try_end_433} :catch_436

    move-result v8

    goto/16 :goto_33a

    .line 6953
    :catch_436
    move-exception v7

    .line 6954
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony2 threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33a

    .line 6966
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v18    # "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    :cond_444
    const/16 v21, 0x0

    goto/16 :goto_34c

    .line 6995
    .end local v8    # "hungUp":Z
    .end local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    .end local v19    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    .end local v20    # "voipPackageName":Ljava/lang/String;
    :cond_448
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z

    .line 6998
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_47a

    .line 6999
    const-string v21, "WindowManager"

    const-string v22, "already power is consumed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7000
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerConsumed:Z

    .line 7001
    and-int/lit8 v15, v15, -0x5

    .line 7002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 7013
    :cond_47a
    if-nez v5, :cond_484

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_51c

    :cond_484
    const/16 v21, 0x1

    :goto_486
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptPowerKeyUp(Z)Z

    move-result v21

    if-eqz v21, :cond_494

    .line 7014
    and-int/lit8 v21, v15, -0x3

    or-int/lit8 v15, v21, 0x4

    .line 7018
    :cond_494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v21

    if-eqz v21, :cond_4b7

    .line 7019
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    if-nez v21, :cond_4b7

    .line 7020
    sget-boolean v21, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v21, :cond_4b1

    const-string v21, "WindowManager"

    const-string v22, "in interceptKeyBeforeQueueing() KEYCODE_POWER up event isSideSyncPresentationRunning is true"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7021
    :cond_4b1
    or-int/lit8 v15, v15, 0x1

    .line 7022
    if-eqz p3, :cond_4b7

    .line 7023
    and-int/lit8 v15, v15, -0x5

    .line 7030
    :cond_4b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1a

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(I)Z

    move-result v21

    if-eqz v21, :cond_4c9

    .line 7031
    or-int/lit8 v15, v15, 0x1

    .line 7032
    and-int/lit8 v15, v15, -0x5

    .line 7035
    :cond_4c9
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPendingPowerKeyUpCanceled:Z

    .line 7038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyHandled:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    and-int/lit8 v21, v15, 0x1

    if-nez v21, :cond_9

    .line 7039
    const-string v21, "WindowManager"

    const-string v22, "in isDoubleTapOnPowerEnabled"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7040
    and-int/lit8 v15, v15, -0x5

    .line 7041
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapPending:Z

    .line 7042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x1f4

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 7013
    :cond_51c
    const/16 v21, 0x0

    goto/16 :goto_486

    .line 7053
    :sswitch_520
    if-eqz v6, :cond_52e

    .line 7054
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 7055
    .restart local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v17, :cond_52e

    .line 7057
    :try_start_528
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_52b
    .catch Landroid/os/RemoteException; {:try_start_528 .. :try_end_52b} :catch_543

    move-result v21

    if-eqz v21, :cond_9

    .line 7069
    .end local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_52e
    :goto_52e
    :sswitch_52e
    const/16 v21, 0x4f

    move/from16 v0, v21

    if-ne v12, v0, :cond_550

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryPBAPhase()Z

    move-result v21

    if-eqz v21, :cond_550

    .line 7071
    const-string v21, "WindowManager"

    const-string v22, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 7062
    .restart local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :catch_543
    move-exception v7

    .line 7063
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52e

    .line 7083
    .end local v7    # "ex":Landroid/os/RemoteException;
    .end local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_550
    :sswitch_550
    and-int/lit8 v21, v15, 0x1

    if-nez v21, :cond_9

    .line 7089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Landroid/view/KeyEvent;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 7092
    .local v14, "msg":Landroid/os/Message;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7093
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_9

    .line 7099
    .end local v14    # "msg":Landroid/os/Message;
    :sswitch_57e
    if-eqz v6, :cond_9

    .line 7100
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v17

    .line 7101
    .restart local v17    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v17, :cond_9

    .line 7103
    :try_start_586
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 7104
    const-string v21, "WindowManager"

    const-string v22, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7106
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_596
    .catch Landroid/os/RemoteException; {:try_start_586 .. :try_end_596} :catch_59a

    .line 7110
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_9

    .line 7112
    :catch_59a
    move-exception v7

    .line 7113
    .restart local v7    # "ex":Landroid/os/RemoteException;
    const-string v21, "WindowManager"

    const-string v22, "ITelephony threw RemoteException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 6746
    :sswitch_data_5a8
    .sparse-switch
        0x0 -> :sswitch_1e6
        0x5 -> :sswitch_57e
        0x6 -> :sswitch_26a
        0x18 -> :sswitch_228
        0x19 -> :sswitch_228
        0x1a -> :sswitch_2c0
        0x4f -> :sswitch_52e
        0x55 -> :sswitch_520
        0x56 -> :sswitch_550
        0x57 -> :sswitch_550
        0x58 -> :sswitch_550
        0x59 -> :sswitch_550
        0x5a -> :sswitch_550
        0x5b -> :sswitch_550
        0x7e -> :sswitch_520
        0x7f -> :sswitch_520
        0x82 -> :sswitch_550
        0xa4 -> :sswitch_228
        0xde -> :sswitch_550
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .registers 5
    .param p1, "policyFlags"    # I

    .prologue
    .line 7183
    const/4 v1, 0x0

    .line 7185
    .local v1, "result":I
    and-int/lit8 v2, p1, 0x3

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    .line 7187
    .local v0, "isWakeMotion":Z
    :goto_6
    if-eqz v0, :cond_a

    .line 7188
    or-int/lit8 v1, v1, 0x2

    .line 7190
    :cond_a
    return v1

    .line 7185
    .end local v0    # "isWakeMotion":Z
    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCoverOpen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_b

    .line 2386
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 2388
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isDefaultOrientationForced()Z
    .registers 2

    .prologue
    .line 1915
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1210
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isGloveModeEnabled()Z
    .registers 2

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGloveModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isKeyguardHidden()Z
    .registers 2

    .prologue
    .line 7758
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 7759
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isKeyguardHidden()Z

    move-result v0

    goto :goto_5
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 7741
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .registers 2

    .prologue
    .line 7746
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 7747
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    goto :goto_5
.end method

.method isMusicActive()Z
    .registers 4

    .prologue
    .line 6462
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6463
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_15

    .line 6464
    const-string v1, "WindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6465
    const/4 v1, 0x0

    .line 6467
    :goto_14
    return v1

    :cond_15
    invoke-virtual {v0}, Landroid/media/AudioManager;->isLocalOrRemoteMusicActive()Z

    move-result v1

    goto :goto_14
.end method

.method public isNavigationBarVisible()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9034
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 9042
    :cond_d
    :goto_d
    return v0

    .line 9038
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-nez v1, :cond_d

    .line 9042
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x1

    .line 9209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 9210
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getCoverMode()I

    move-result v0

    .line 9211
    .local v0, "coverMode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    .line 9212
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->willBeHideSViewCoverOnce()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 9219
    .end local v0    # "coverMode":I
    :cond_14
    :goto_14
    return v1

    .line 9215
    .restart local v0    # "coverMode":I
    :cond_15
    if-eq v0, v1, :cond_14

    .line 9219
    .end local v0    # "coverMode":I
    :cond_17
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .prologue
    .line 7697
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .prologue
    .line 7702
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isShowingLockScreenWindow()Z
    .registers 2

    .prologue
    .line 9317
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mShowingLockscreen:Z

    return v0
.end method

.method public isStatusBarVisible()Z
    .registers 2

    .prologue
    .line 9024
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_16

    .line 9025
    const/4 v0, 0x1

    .line 9027
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 9306
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public isTopFullScreen()Z
    .registers 2

    .prologue
    .line 4302
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .registers 4
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 9110
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_d

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_d

    .line 9112
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_e

    .line 9114
    :cond_d
    :goto_d
    return v0

    .line 9112
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 3176
    const/4 v1, 0x0

    .line 3178
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3179
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 3180
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3187
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 3182
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "WindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 3184
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 3185
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    .prologue
    .line 8805
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 7

    .prologue
    .line 8809
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 8810
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 8811
    .local v0, "curTime":J
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 8813
    .end local v0    # "curTime":J
    :cond_1a
    return-void
.end method

.method public keyguardOn()Z
    .registers 2

    .prologue
    .line 3201
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method launchHomeFromHotKey()V
    .registers 3

    .prologue
    .line 4326
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEnableAccessControl()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4328
    :cond_14
    const-string v0, "WindowManager"

    const-string v1, "Key was blocked by keyguard or interaction control"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4370
    :goto_1b
    return-void

    .line 4329
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 4332
    const-string v0, "WindowManager"

    const-string v1, "Key was pending by verify unlock keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->launchHomeDuringVzwSetup()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4336
    const-string v0, "WindowManager"

    const-string v1, " VerizonSetupWizard is running, launching home ignore keyguard ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4338
    :try_start_42
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_83

    .line 4341
    :goto_49
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4342
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_1b

    .line 4346
    :cond_52
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$14;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$14;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_1b

    .line 4358
    :cond_5d
    sget v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_71

    .line 4360
    const-string v0, "WindowManager"

    const-string v1, "Key was blocked by user setup is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 4364
    :cond_71
    :try_start_71
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_78} :catch_81

    .line 4367
    :goto_78
    const-string v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 4368
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startDockOrHome()V

    goto :goto_1b

    .line 4365
    :catch_81
    move-exception v0

    goto :goto_78

    .line 4339
    :catch_83
    move-exception v0

    goto :goto_49
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 64
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 5787
    :cond_18
    :goto_18
    return-void

    .line 5062
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_18

    .line 5066
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v43

    .line 5067
    .local v43, "isDefaultDisplay":Z
    if-eqz v43, :cond_ab

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_ab

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_ab

    const/16 v48, 0x1

    .line 5069
    .local v48, "needsToOffsetInputMethodTarget":Z
    :goto_37
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastSystemUiFlags:I

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_ae

    const/16 v46, 0x1

    .line 5070
    .local v46, "isStatusBarTransient":Z
    :goto_42
    if-eqz v48, :cond_4d

    .line 5072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5075
    :cond_4d
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5076
    .local v12, "fl":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v55, v0

    .line 5077
    .local v55, "sim":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v57

    .line 5080
    .local v57, "sysUiFl":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v21

    .line 5081
    .local v21, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v3, 0x800

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v49

    .line 5082
    .local v49, "optionScale":Z
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b1

    const/16 v59, 0x1

    .line 5083
    .local v59, "typeCascade":Z
    :goto_70
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b4

    const/16 v34, 0x1

    .line 5086
    .local v34, "absLayout":Z
    :goto_7d
    sget-object v16, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 5087
    .local v16, "pf":Landroid/graphics/Rect;
    sget-object v17, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 5088
    .local v17, "df":Landroid/graphics/Rect;
    sget-object v18, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 5089
    .local v18, "of":Landroid/graphics/Rect;
    sget-object v19, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 5090
    .local v19, "cf":Landroid/graphics/Rect;
    sget-object v20, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 5091
    .local v20, "vf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 5092
    .local v9, "dcf":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 5095
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    if-eqz v3, :cond_b7

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_b7

    .line 5096
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    sget-object v8, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpCocktailFrame:Landroid/graphics/Rect;

    move-object/from16 v3, p1

    invoke-interface/range {v3 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_18

    .line 5067
    .end local v9    # "dcf":Landroid/graphics/Rect;
    .end local v12    # "fl":I
    .end local v16    # "pf":Landroid/graphics/Rect;
    .end local v17    # "df":Landroid/graphics/Rect;
    .end local v18    # "of":Landroid/graphics/Rect;
    .end local v19    # "cf":Landroid/graphics/Rect;
    .end local v20    # "vf":Landroid/graphics/Rect;
    .end local v21    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v34    # "absLayout":Z
    .end local v46    # "isStatusBarTransient":Z
    .end local v48    # "needsToOffsetInputMethodTarget":Z
    .end local v49    # "optionScale":Z
    .end local v55    # "sim":I
    .end local v57    # "sysUiFl":I
    .end local v59    # "typeCascade":Z
    :cond_ab
    const/16 v48, 0x0

    goto :goto_37

    .line 5069
    .restart local v48    # "needsToOffsetInputMethodTarget":Z
    :cond_ae
    const/16 v46, 0x0

    goto :goto_42

    .line 5082
    .restart local v12    # "fl":I
    .restart local v21    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v46    # "isStatusBarTransient":Z
    .restart local v49    # "optionScale":Z
    .restart local v55    # "sim":I
    .restart local v57    # "sysUiFl":I
    :cond_b1
    const/16 v59, 0x0

    goto :goto_70

    .line 5083
    .restart local v59    # "typeCascade":Z
    :cond_b4
    const/16 v34, 0x0

    goto :goto_7d

    .line 5102
    .restart local v9    # "dcf":Landroid/graphics/Rect;
    .restart local v16    # "pf":Landroid/graphics/Rect;
    .restart local v17    # "df":Landroid/graphics/Rect;
    .restart local v18    # "of":Landroid/graphics/Rect;
    .restart local v19    # "cf":Landroid/graphics/Rect;
    .restart local v20    # "vf":Landroid/graphics/Rect;
    .restart local v34    # "absLayout":Z
    :cond_b7
    if-eqz v43, :cond_3ce

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v3, :cond_3ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_3ce

    const/16 v39, 0x1

    .line 5105
    .local v39, "hasNavBar":Z
    :goto_d1
    move/from16 v0, v55

    and-int/lit16 v13, v0, 0xf0

    .line 5107
    .local v13, "adjust":I
    if-nez v43, :cond_42e

    .line 5108
    if-eqz p3, :cond_3d2

    .line 5111
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5507
    :goto_e3
    and-int/lit16 v3, v12, 0x200

    if-eqz v3, :cond_133

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7da

    if-eq v3, v4, :cond_133

    .line 5508
    const/16 v3, -0x2710

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5509
    const/16 v3, 0x2710

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5514
    :cond_133
    const/16 v3, 0x800

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_161

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_161

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-nez v3, :cond_161

    .line 5516
    if-nez p3, :cond_e70

    move-object/from16 v23, p1

    :goto_150
    move-object/from16 v22, p0

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    move-object/from16 v28, v20

    move-object/from16 v29, v9

    invoke-direct/range {v22 .. v29}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5518
    :cond_161
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_325

    .line 5519
    if-eqz v49, :cond_171

    if-eqz v59, :cond_171

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_1141

    :cond_171
    if-nez v34, :cond_1141

    .line 5520
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_194

    .line 5521
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_185

    .line 5522
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarTransient:Z

    .line 5524
    :cond_185
    const/16 v3, 0x1000

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_194

    .line 5525
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsIsolatedSplitUsed:Z

    .line 5528
    :cond_194
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    if-ge v3, v4, :cond_e74

    const/16 v45, 0x1

    .line 5530
    .local v45, "isPortrait":Z
    :goto_1a0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldMoveUpWindow(Landroid/view/WindowManagerPolicy$WindowState;Z)Z

    move-result v3

    if-eqz v3, :cond_1092

    .line 5531
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_107e

    if-nez p3, :cond_107e

    .line 5533
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    .line 5534
    .local v37, "currentWinLeft":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v35, v0

    .line 5535
    .local v35, "currentWinBottom":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v38

    .line 5536
    .local v38, "currentWinWidth":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v36

    .line 5537
    .local v36, "currentWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getScaleFactor()Landroid/graphics/PointF;

    move-result-object v52

    .line 5538
    .local v52, "scale":Landroid/graphics/PointF;
    move/from16 v53, v36

    .line 5540
    .local v53, "scaledWinHeight":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 5541
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedWidthLw()I

    move-result v38

    .line 5542
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedHeightLw()I

    move-result v36

    .line 5543
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v4, v38

    div-int/lit8 v4, v4, 0x2

    add-int v37, v3, v4

    .line 5546
    :cond_1fc
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move/from16 v0, v35

    if-gt v0, v3, :cond_20a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1014

    .line 5547
    :cond_20a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_217

    .line 5548
    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5551
    :cond_217
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v40, v3, v4

    .line 5555
    .local v40, "heightUpperInputMethod":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v56

    .line 5557
    .local v56, "stackBoxBounds":Landroid/graphics/Rect;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_e8f

    if-eqz v45, :cond_e8f

    if-nez v59, :cond_e8f

    move-object/from16 v0, v56

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    if-ne v3, v4, :cond_e8f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move/from16 v0, v36

    if-ge v0, v3, :cond_e8f

    .line 5560
    move-object/from16 v0, v56

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_264

    .line 5561
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5563
    :cond_264
    sub-int v3, v40, v36

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5564
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5565
    invoke-virtual/range {v56 .. v56}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    if-ge v3, v4, :cond_e78

    .line 5566
    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 5567
    add-int v3, v37, v38

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5572
    :goto_28c
    const/16 v3, 0x10

    if-ne v13, v3, :cond_298

    .line 5573
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5576
    :cond_298
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5632
    .end local v36    # "currentWinHeight":I
    :goto_2a3
    const/16 v3, 0x30

    if-eq v13, v3, :cond_100b

    if-nez v49, :cond_100b

    .line 5633
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5634
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5683
    .end local v35    # "currentWinBottom":I
    .end local v37    # "currentWinLeft":I
    .end local v38    # "currentWinWidth":I
    .end local v40    # "heightUpperInputMethod":I
    .end local v52    # "scale":Landroid/graphics/PointF;
    .end local v53    # "scaledWinHeight":I
    .end local v56    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_2b9
    :goto_2b9
    if-eqz p3, :cond_325

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_2db

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_325

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_2db

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_325

    .line 5688
    :cond_2db
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f7

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f7

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_325

    .line 5690
    :cond_2f7
    const v3, 0x10500

    and-int/2addr v3, v12

    const v4, 0x10100

    if-ne v3, v4, :cond_111b

    and-int/lit8 v3, v57, 0x4

    if-nez v3, :cond_111b

    .line 5694
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->isTransluent()Z

    move-result v3

    if-eqz v3, :cond_1117

    const/16 v25, 0x0

    :goto_30c
    const/16 v27, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move/from16 v24, v12

    move-object/from16 v26, p3

    move-object/from16 v28, v16

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    invoke-virtual/range {v22 .. v33}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5742
    .end local v45    # "isPortrait":Z
    :cond_325
    :goto_325
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_361

    .line 5743
    invoke-static {}, Landroid/os/DssHelper;->getInstance()Landroid/os/DssHelper;

    move-result-object v47

    .line 5744
    .local v47, "mDssHelper":Landroid/os/DssHelper;
    invoke-virtual/range {v47 .. v47}, Landroid/os/DssHelper;->getScalingFactor()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v54

    .line 5745
    .local v54, "scalfac":Ljava/lang/Double;
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Double;->floatValue()F

    move-result v51

    .line 5747
    .local v51, "resolutionFactorF":F
    move-object/from16 v0, v17

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 5748
    move-object/from16 v0, v19

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 5749
    move/from16 v0, v51

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 5750
    move-object/from16 v0, v20

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 5751
    move-object/from16 v0, v18

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .end local v47    # "mDssHelper":Landroid/os/DssHelper;
    .end local v51    # "resolutionFactorF":F
    .end local v54    # "scalfac":Ljava/lang/Double;
    :cond_361
    move-object/from16 v3, p1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    .line 5764
    invoke-interface/range {v3 .. v9}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5768
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_38a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xbb6

    if-ne v3, v4, :cond_3a0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_3a0

    :cond_38a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v3

    if-eqz v3, :cond_3a0

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v3

    if-nez v3, :cond_3a0

    .line 5773
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5774
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 5778
    :cond_3a0
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_18

    .line 5779
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x480000

    and-int/2addr v3, v4

    if-eqz v3, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5782
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    goto/16 :goto_18

    .line 5102
    .end local v13    # "adjust":I
    .end local v39    # "hasNavBar":Z
    :cond_3ce
    const/16 v39, 0x0

    goto/16 :goto_d1

    .line 5114
    .restart local v13    # "adjust":I
    .restart local v39    # "hasNavBar":Z
    :cond_3d2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5115
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5116
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5118
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5121
    :cond_42e
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v3, v4, :cond_4db

    .line 5122
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5123
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5127
    if-eqz v39, :cond_4c9

    const/high16 v3, 0x8000000

    and-int/2addr v3, v12

    if-nez v3, :cond_4c9

    and-int/lit8 v3, v57, 0x2

    if-nez v3, :cond_4c9

    .line 5129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5134
    :goto_4a7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5136
    const/16 v3, 0x50

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5137
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    .line 5139
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_e3

    .line 5131
    :cond_4c9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4a7

    .line 5144
    :cond_4db
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemLeft:I

    iput v3, v9, Landroid/graphics/Rect;->left:I

    .line 5145
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 5146
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 5147
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 5148
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_5b2

    const/16 v41, 0x1

    .line 5150
    .local v41, "inheritTranslucentDecor":Z
    :goto_4fd
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_5b6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_5b6

    const/16 v42, 0x1

    .line 5153
    .local v42, "isAppWindow":Z
    :goto_50e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_5ba

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_5ba

    const/16 v58, 0x1

    .line 5156
    .local v58, "topAtRest":Z
    :goto_51e
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v3, :cond_5be

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v3, :cond_5be

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5be

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5be

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_5be

    const/16 v44, 0x1

    .line 5161
    .local v44, "isFullOpaqueWindow":Z
    :goto_540
    if-eqz v42, :cond_584

    if-nez v41, :cond_584

    if-eqz v44, :cond_584

    .line 5163
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_56f

    .line 5165
    and-int/lit8 v3, v57, 0x4

    if-nez v3, :cond_5c1

    and-int/lit16 v3, v12, 0x400

    if-nez v3, :cond_5c1

    const/high16 v3, 0x4000000

    and-int/2addr v3, v12

    if-nez v3, :cond_5c1

    .line 5169
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    iput v3, v9, Landroid/graphics/Rect;->top:I

    .line 5172
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 5183
    :cond_56f
    :goto_56f
    const/high16 v3, 0x8000000

    and-int/2addr v3, v12

    if-nez v3, :cond_584

    and-int/lit8 v3, v57, 0x2

    if-nez v3, :cond_584

    .line 5186
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    .line 5187
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    iput v3, v9, Landroid/graphics/Rect;->right:I

    .line 5192
    :cond_584
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_59b

    .line 5193
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    .line 5197
    :cond_59b
    const v3, 0x10100

    and-int/2addr v3, v12

    const v4, 0x10100

    if-ne v3, v4, :cond_898

    .line 5205
    if-eqz p3, :cond_5d2

    .line 5208
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_e3

    .line 5148
    .end local v41    # "inheritTranslucentDecor":Z
    .end local v42    # "isAppWindow":Z
    .end local v44    # "isFullOpaqueWindow":Z
    .end local v58    # "topAtRest":Z
    :cond_5b2
    const/16 v41, 0x0

    goto/16 :goto_4fd

    .line 5150
    .restart local v41    # "inheritTranslucentDecor":Z
    :cond_5b6
    const/16 v42, 0x0

    goto/16 :goto_50e

    .line 5153
    .restart local v42    # "isAppWindow":Z
    :cond_5ba
    const/16 v58, 0x0

    goto/16 :goto_51e

    .line 5156
    .restart local v58    # "topAtRest":Z
    :cond_5be
    const/16 v44, 0x0

    goto :goto_540

    .line 5177
    .restart local v44    # "isFullOpaqueWindow":Z
    :cond_5c1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    goto :goto_56f

    .line 5210
    :cond_5d2
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_5ea

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_5ea

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_6b6

    .line 5220
    :cond_5ea
    if-eqz v39, :cond_69a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_5f0
    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5222
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5223
    if-eqz v39, :cond_6a0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_617
    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5226
    if-eqz v39, :cond_6ab

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_62e
    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5283
    :goto_63a
    and-int/lit16 v3, v12, 0x400

    if-nez v3, :cond_845

    .line 5284
    const/16 v3, 0x10

    if-eq v13, v3, :cond_823

    .line 5285
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5286
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5287
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5288
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5316
    :cond_662
    :goto_662
    if-eqz v21, :cond_674

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_674

    .line 5318
    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 5320
    :cond_674
    const/16 v3, 0x30

    if-eq v13, v3, :cond_88f

    .line 5321
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5322
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5323
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5220
    :cond_69a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_5f0

    .line 5223
    :cond_6a0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto/16 :goto_617

    .line 5226
    :cond_6ab
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto/16 :goto_62e

    .line 5233
    :cond_6b6
    const/high16 v3, 0x2000000

    and-int/2addr v3, v12

    if-eqz v3, :cond_716

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_716

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_716

    .line 5238
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5239
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5240
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5241
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_63a

    .line 5243
    :cond_716
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_79f

    move/from16 v0, v57

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_79f

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-eq v3, v4, :cond_739

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_79f

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_79f

    .line 5252
    :cond_739
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5253
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5254
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5255
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5259
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5260
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5261
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5262
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_63a

    .line 5264
    :cond_79f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5265
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5266
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5268
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_811

    and-int/lit8 v3, v57, 0x2

    if-eqz v3, :cond_811

    .line 5269
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5277
    :goto_7e5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5278
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5279
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5280
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_63a

    .line 5271
    :cond_811
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_7e5

    .line 5290
    :cond_823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5291
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5292
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5293
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_662

    .line 5300
    :cond_845
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5301
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5302
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5303
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5306
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_662

    .line 5307
    const/16 v3, 0x10

    if-eq v13, v3, :cond_885

    .line 5308
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_662

    .line 5310
    :cond_885
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_662

    .line 5326
    :cond_88f
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_e3

    .line 5329
    :cond_898
    and-int/lit16 v3, v12, 0x100

    if-nez v3, :cond_8a2

    move/from16 v0, v57

    and-int/lit16 v3, v0, 0x600

    if-eqz v3, :cond_c5c

    .line 5336
    :cond_8a2
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_8ba

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_8ba

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_96c

    .line 5339
    :cond_8ba
    if-eqz v39, :cond_952

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    :goto_8c0
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5341
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5342
    if-eqz v39, :cond_958

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    :goto_8ef
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5345
    if-eqz v39, :cond_962

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    :goto_90a
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5429
    :goto_91a
    if-eqz v21, :cond_92c

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_92c

    .line 5431
    move-object/from16 v0, p0

    move/from16 v1, v57

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 5434
    :cond_92c
    const/16 v3, 0x30

    if-eq v13, v3, :cond_c53

    .line 5435
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5436
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5437
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5438
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5339
    :cond_952
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_8c0

    .line 5342
    :cond_958
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    goto :goto_8ef

    .line 5345
    :cond_962
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    goto :goto_90a

    .line 5351
    :cond_96c
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e3

    if-eq v3, v4, :cond_97c

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e8

    if-ne v3, v4, :cond_9c8

    .line 5354
    :cond_97c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5355
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5356
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5358
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5363
    :cond_9c8
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7df

    if-eq v3, v4, :cond_9d8

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-ne v3, v4, :cond_a38

    :cond_9d8
    and-int/lit16 v3, v12, 0x400

    if-eqz v3, :cond_a38

    .line 5367
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5368
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5369
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5371
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5373
    :cond_a38
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e5

    if-eq v3, v4, :cond_a48

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e9

    if-ne v3, v4, :cond_aa4

    .line 5376
    :cond_a48
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5377
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5378
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5380
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5382
    :cond_aa4
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_b08

    .line 5384
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5385
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5386
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5388
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5390
    :cond_b08
    const/high16 v3, 0x2000000

    and-int/2addr v3, v12

    if-eqz v3, :cond_b78

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_b78

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_b78

    .line 5395
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5396
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5397
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5399
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5401
    :cond_b78
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v3

    if-eqz v3, :cond_bf7

    move/from16 v0, v57

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_bf7

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-eq v3, v4, :cond_b9b

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_bf7

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_bf7

    .line 5413
    :cond_b9b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5414
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5417
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5420
    :cond_bf7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5421
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5422
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5424
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_91a

    .line 5440
    :cond_c53
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_e3

    .line 5442
    :cond_c5c
    if-eqz p3, :cond_c6a

    .line 5447
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p3

    invoke-virtual/range {v10 .. v21}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_e3

    .line 5453
    :cond_c6a
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7de

    if-eq v3, v4, :cond_c7a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x830

    if-ne v3, v4, :cond_cd6

    .line 5459
    :cond_c7a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5460
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5461
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5463
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5465
    :cond_cd6
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d5

    if-eq v3, v4, :cond_ce6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d3

    if-ne v3, v4, :cond_d9c

    .line 5467
    :cond_ce6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_d4a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_d4a

    if-nez v46, :cond_d4a

    .line 5468
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5469
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5470
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5471
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5473
    :cond_d4a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5474
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5475
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5476
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5479
    :cond_d9c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5480
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5481
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5482
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5483
    const/16 v3, 0x10

    if-eq v13, v3, :cond_e26

    .line 5484
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5485
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5486
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5487
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5494
    :goto_e00
    const/16 v3, 0x30

    if-eq v13, v3, :cond_e67

    .line 5495
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5496
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5497
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5498
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e3

    .line 5489
    :cond_e26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5490
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5491
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5492
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_e00

    .line 5500
    :cond_e67
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_e3

    .end local v41    # "inheritTranslucentDecor":Z
    .end local v42    # "isAppWindow":Z
    .end local v44    # "isFullOpaqueWindow":Z
    .end local v58    # "topAtRest":Z
    :cond_e70
    move-object/from16 v23, p3

    .line 5516
    goto/16 :goto_150

    .line 5528
    :cond_e74
    const/16 v45, 0x0

    goto/16 :goto_1a0

    .line 5569
    .restart local v35    # "currentWinBottom":I
    .restart local v36    # "currentWinHeight":I
    .restart local v37    # "currentWinLeft":I
    .restart local v38    # "currentWinWidth":I
    .restart local v40    # "heightUpperInputMethod":I
    .restart local v45    # "isPortrait":Z
    .restart local v52    # "scale":Landroid/graphics/PointF;
    .restart local v53    # "scaledWinHeight":I
    .restart local v56    # "stackBoxBounds":Landroid/graphics/Rect;
    :cond_e78
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5570
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_28c

    .line 5577
    :cond_e8f
    if-eqz v49, :cond_e97

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    add-int v36, v53, v3

    .end local v36    # "currentWinHeight":I
    :cond_e97
    move/from16 v0, v36

    move/from16 v1, v40

    if-ge v0, v1, :cond_f0f

    .line 5580
    if-eqz v49, :cond_eea

    .line 5581
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    sub-int v4, v4, v53

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    int-to-float v5, v5

    move-object/from16 v0, v52

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5583
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5584
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5592
    :goto_edd
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2a3

    .line 5586
    :cond_eea
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5587
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5588
    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 5589
    add-int v3, v37, v38

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_edd

    .line 5594
    :cond_f0f
    if-eqz v49, :cond_f69

    if-eqz v59, :cond_f69

    .line 5595
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5596
    move/from16 v0, v40

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    move-object/from16 v0, v52

    iget v4, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5599
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x40000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2a3

    .line 5601
    :cond_f69
    if-eqz v59, :cond_ff6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    :goto_f6f
    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5602
    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 5603
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v38

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5604
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanHideNavigationBar:Z

    if-eqz v3, :cond_ff9

    move/from16 v0, v57

    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_ff9

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_ff9

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7cf

    if-gt v3, v4, :cond_ff9

    .line 5608
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5614
    :goto_fb7
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_fde

    .line 5615
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5616
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5617
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5621
    :cond_fde
    const/16 v3, 0x10

    if-eq v13, v3, :cond_fee

    .line 5622
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5624
    :cond_fee
    const/high16 v3, 0x40000000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2a3

    .line 5601
    :cond_ff6
    const/4 v3, 0x0

    goto/16 :goto_f6f

    .line 5610
    :cond_ff9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_fb7

    .line 5636
    :cond_100b
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2b9

    .line 5641
    .end local v40    # "heightUpperInputMethod":I
    .end local v56    # "stackBoxBounds":Landroid/graphics/Rect;
    .restart local v36    # "currentWinHeight":I
    :cond_1014
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_2b9

    .line 5642
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    if-le v3, v4, :cond_106c

    .line 5643
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5647
    :cond_1032
    :goto_1032
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5648
    move/from16 v0, v37

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 5649
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int v3, v3, v38

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5652
    const/16 v3, 0x10

    if-eq v13, v3, :cond_2b9

    .line 5653
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5654
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2b9

    .line 5644
    :cond_106c
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_1032

    .line 5645
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1032

    .line 5660
    .end local v35    # "currentWinBottom":I
    .end local v36    # "currentWinHeight":I
    .end local v37    # "currentWinLeft":I
    .end local v38    # "currentWinWidth":I
    .end local v52    # "scale":Landroid/graphics/PointF;
    .end local v53    # "scaledWinHeight":I
    :cond_107e
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_2b9

    .line 5661
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto/16 :goto_2b9

    .line 5665
    :cond_1092
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v3

    if-eqz v3, :cond_10a4

    .line 5666
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v4, 0x1fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5669
    :cond_10a4
    if-eqz v21, :cond_2b9

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-nez v3, :cond_2b9

    if-eqz v45, :cond_2b9

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2b9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_2b9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2b9

    .line 5672
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_10df

    .line 5673
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5674
    :cond_10df
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_10f1

    .line 5675
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5676
    :cond_10f1
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_1103

    .line 5677
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5678
    :cond_1103
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    if-ge v3, v4, :cond_2b9

    .line 5679
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v20

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2b9

    :cond_1117
    move/from16 v25, v55

    .line 5694
    goto/16 :goto_30c

    .line 5696
    :cond_111b
    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->isTransluent()Z

    move-result v3

    if-eqz v3, :cond_113e

    const/16 v25, 0x0

    :goto_1123
    const/16 v27, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move/from16 v24, v12

    move-object/from16 v26, p3

    move-object/from16 v28, v16

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    invoke-virtual/range {v22 .. v33}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_325

    :cond_113e
    move/from16 v25, v55

    goto :goto_1123

    .line 5700
    .end local v45    # "isPortrait":Z
    :cond_1141
    if-eqz v59, :cond_325

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFloating()Z

    move-result v3

    if-eqz v3, :cond_325

    if-eqz p3, :cond_1159

    and-int/lit16 v3, v12, 0x100

    if-nez v3, :cond_1159

    invoke-interface/range {p3 .. p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_325

    .line 5704
    :cond_1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v50, v0

    .line 5706
    .local v50, "orientation":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1245

    const/4 v3, 0x2

    move/from16 v0, v50

    if-ne v0, v3, :cond_1245

    if-nez p3, :cond_1245

    .line 5708
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 5709
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5713
    :goto_1187
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1193

    const/4 v3, 0x2

    move/from16 v0, v50

    if-eq v0, v3, :cond_11a6

    :cond_1193
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v3

    if-nez v3, :cond_119e

    const/4 v3, 0x1

    move/from16 v0, v50

    if-eq v0, v3, :cond_11a6

    .line 5715
    :cond_119e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5717
    :cond_11a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_325

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_325

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_325

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_325

    .line 5720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_11e6

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isFocused()Z

    move-result v3

    if-nez v3, :cond_11de

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAttachedWindowFocused()Z

    move-result v3

    if-eqz v3, :cond_11e6

    .line 5721
    :cond_11de
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 5724
    :cond_11e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_325

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGroupId()I

    move-result v4

    if-ne v3, v4, :cond_325

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_325

    .line 5727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int v40, v3, v4

    .line 5729
    .restart local v40    # "heightUpperInputMethod":I
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v0, v40

    if-ge v3, v0, :cond_125b

    .line 5730
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v40, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_325

    .line 5711
    .end local v40    # "heightUpperInputMethod":I
    :cond_1245
    move-object/from16 v0, v16

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStableBottom:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1187

    .line 5732
    .restart local v40    # "heightUpperInputMethod":I
    :cond_125b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, v16

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_325
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 8278
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8279
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8280
    if-eqz p1, :cond_16

    .line 8283
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 8285
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8286
    return-void
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "windowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p5, "attachedWindowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9576
    if-eqz p2, :cond_19

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v1, :cond_19

    invoke-virtual {p4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz p5, :cond_19

    invoke-virtual {p5, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 9603
    :cond_18
    :goto_18
    return v1

    .line 9582
    :cond_19
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCanBeForceHide:Z

    if-nez v3, :cond_1f

    move v1, v2

    .line 9583
    goto :goto_18

    .line 9586
    :cond_1f
    invoke-virtual {p4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eq v3, v4, :cond_2d

    if-eqz p5, :cond_41

    invoke-virtual {p5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v4, :cond_41

    .line 9588
    :cond_2d
    const/high16 v0, 0x480000

    .line 9590
    .local v0, "mask":I
    if-eqz p2, :cond_38

    .line 9591
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_38

    move v1, v2

    .line 9592
    goto :goto_18

    .line 9595
    :cond_38
    if-eqz p3, :cond_18

    .line 9596
    iget v3, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_18

    move v1, v2

    .line 9597
    goto :goto_18

    .end local v0    # "mask":I
    :cond_41
    move v1, v2

    .line 9603
    goto :goto_18
.end method

.method public needHideTrayBar()Z
    .registers 16

    .prologue
    const/16 v14, 0x1000

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/high16 v13, 0x100000

    const/4 v10, 0x1

    .line 8523
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v12, :cond_29

    move-object v4, v9

    .line 8524
    .local v4, "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :goto_c
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v12, :cond_30

    move-object v5, v9

    .line 8525
    .local v5, "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :goto_11
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v12, :cond_37

    move-object v7, v9

    .line 8526
    .local v7, "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_16
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v12, :cond_3e

    move-object v8, v9

    .line 8528
    .local v8, "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_1b
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v9, :cond_45

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_45

    move v9, v10

    .line 8614
    :goto_28
    return v9

    .line 8523
    .end local v4    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_29
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    goto :goto_c

    .line 8524
    .restart local v4    # "lpZoneA":Landroid/view/WindowManager$LayoutParams;
    :cond_30
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    goto :goto_11

    .line 8525
    .restart local v5    # "lpZoneB":Landroid/view/WindowManager$LayoutParams;
    :cond_37
    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneA:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    goto :goto_16

    .line 8526
    .restart local v7    # "styleA":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3e
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowStateZoneB:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    goto :goto_1b

    .line 8532
    .restart local v8    # "styleB":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_45
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_9c

    .line 8533
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 8534
    .local v2, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v3, v2

    .line 8536
    .local v3, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_5e

    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v9, v10, :cond_5e

    .line 8538
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 8541
    :cond_5e
    if-eqz v3, :cond_9c

    .line 8542
    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v12, 0x480000

    and-int/2addr v9, v12

    if-eqz v9, :cond_81

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v9, :cond_81

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_81

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v9, :cond_81

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    if-nez v9, :cond_81

    move v9, v10

    .line 8545
    goto :goto_28

    .line 8548
    :cond_81
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v9

    if-nez v9, :cond_9c

    iget v9, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_9c

    .line 8549
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_9c

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v9

    if-nez v9, :cond_9c

    move v9, v10

    .line 8550
    goto :goto_28

    .line 8556
    .end local v2    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_9c
    if-eqz v4, :cond_a5

    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_a5

    move v9, v10

    .line 8557
    goto :goto_28

    .line 8559
    :cond_a5
    if-eqz v5, :cond_af

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_af

    move v9, v10

    .line 8560
    goto/16 :goto_28

    .line 8563
    :cond_af
    if-eqz v7, :cond_b7

    invoke-virtual {v7, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_bf

    :cond_b7
    if-eqz v8, :cond_c2

    invoke-virtual {v8, v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_c2

    :cond_bf
    move v9, v10

    .line 8565
    goto/16 :goto_28

    .line 8568
    :cond_c2
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->isPreviewScaleEnabled()Z

    move-result v9

    if-nez v9, :cond_de

    .line 8569
    if-eqz v4, :cond_d4

    .line 8570
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_d4

    move v9, v10

    .line 8571
    goto/16 :goto_28

    .line 8575
    :cond_d4
    if-eqz v5, :cond_de

    .line 8576
    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_de

    move v9, v10

    .line 8577
    goto/16 :goto_28

    .line 8582
    :cond_de
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v9, :cond_fb

    .line 8583
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v9

    if-nez v9, :cond_f8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v9

    if-nez v9, :cond_f8

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v9

    if-eqz v9, :cond_fb

    :cond_f8
    move v9, v10

    .line 8584
    goto/16 :goto_28

    .line 8589
    :cond_fb
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    if-eqz v9, :cond_12f

    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKnoxActivated:Z

    if-eqz v9, :cond_12f

    .line 8590
    sget-boolean v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->isContainerOnlyMode:Z

    if-eqz v9, :cond_12f

    .line 8591
    sget v9, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    if-nez v9, :cond_12f

    .line 8592
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPm:Landroid/os/PersonaManager;

    sget v12, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUser:I

    invoke-virtual {v9, v12}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v0

    .line 8593
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_12f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_12f

    .line 8594
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .line 8595
    .local v6, "perInfo":Landroid/content/pm/PersonaInfo;
    iget-boolean v9, v6, Landroid/content/pm/PersonaInfo;->isSuperLocked:Z

    if-eqz v9, :cond_12f

    .line 8596
    const-string v9, "WindowManager"

    const-string v11, "MultiWindow is disabled. Superlock state"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 8597
    goto/16 :goto_28

    .line 8605
    .end local v0    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v6    # "perInfo":Landroid/content/pm/PersonaInfo;
    :cond_12f
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_143

    .line 8606
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 8607
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_143

    .line 8608
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v9, v13

    if-eqz v9, :cond_143

    move v9, v10

    .line 8609
    goto/16 :goto_28

    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_143
    move v9, v11

    .line 8614
    goto/16 :goto_28
.end method

.method needSensorRunningLp()Z
    .registers 6

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 947
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v3, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v1, v4, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_17

    .line 975
    :cond_16
    :goto_16
    return v0

    .line 955
    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v1, :cond_20

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    :cond_20
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v0, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_16

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v3, :cond_16

    :cond_31
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v1, :cond_39

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v1, v4, :cond_16

    .line 964
    :cond_39
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v1, v0, :cond_16

    .line 973
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 6
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 6384
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_a

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6391
    :cond_a
    :goto_a
    return-void

    .line 6385
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6386
    const-string v0, "WindowManager"

    const-string v1, "CoverManager disabled!! Block cover switch state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 6389
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    .line 6390
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyCoverSwitchChanged(JZ)V

    goto :goto_a
.end method

.method public notifyCoverVerifiedChanged(JZ)V
    .registers 6
    .param p1, "whenNanos"    # J
    .param p3, "verified"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6395
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6399
    :cond_b
    :goto_b
    return-void

    .line 6397
    :cond_c
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverVerifiedState(ZZ)Z

    .line 6398
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    :goto_18
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    goto :goto_b

    :cond_1c
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public notifyGloveSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "gloveEnable"    # Z

    .prologue
    .line 6406
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 6408
    :goto_4
    return-void

    .line 6407
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyGloveSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6352
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v3, :cond_7

    .line 6369
    :cond_6
    :goto_6
    return-void

    .line 6355
    :cond_7
    if-eqz p3, :cond_22

    move v0, v1

    .line 6356
    .local v0, "newLidState":I
    :goto_a
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-eq v0, v3, :cond_6

    .line 6360
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 6361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyLidSwitchState()V

    .line 6362
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6364
    if-eqz p3, :cond_24

    .line 6365
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_6

    .end local v0    # "newLidState":I
    :cond_22
    move v0, v2

    .line 6355
    goto :goto_a

    .line 6366
    .restart local v0    # "newLidState":I
    :cond_24
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_6

    .line 6367
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_6
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 5
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 6375
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 6377
    :goto_4
    return-void

    .line 6376
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    goto :goto_4
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 13
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8752
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    if-eqz v6, :cond_d

    .line 8753
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v4

    .line 8800
    :cond_c
    :goto_c
    return v4

    .line 8756
    :cond_d
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 8759
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_enabled"

    const/4 v8, -0x2

    invoke-static {v6, v7, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-nez v6, :cond_4e

    move v0, v5

    .line 8761
    .local v0, "hapticsDisabled":Z
    :goto_25
    if-nez p3, :cond_31

    if-nez v0, :cond_c

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v6

    if-nez v6, :cond_c

    .line 8764
    :cond_31
    const/4 v3, 0x0

    .line 8765
    .local v3, "pattern":[J
    sparse-switch p2, :sswitch_data_6e

    goto :goto_c

    .line 8767
    :sswitch_36
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 8786
    :goto_38
    if-eqz p1, :cond_5c

    .line 8787
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 8788
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 8793
    .local v1, "owningPackage":Ljava/lang/String;
    :goto_42
    array-length v6, v3

    if-ne v6, v5, :cond_67

    .line 8795
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v7, v3, v4

    invoke-virtual {v6, v2, v1, v7, v8}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;J)V

    :goto_4c
    move v4, v5

    .line 8800
    goto :goto_c

    .end local v0    # "hapticsDisabled":Z
    .end local v1    # "owningPackage":Ljava/lang/String;
    .end local v2    # "owningUid":I
    .end local v3    # "pattern":[J
    :cond_4e
    move v0, v4

    .line 8759
    goto :goto_25

    .line 8770
    .restart local v0    # "hapticsDisabled":Z
    .restart local v3    # "pattern":[J
    :sswitch_50
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 8771
    goto :goto_38

    .line 8773
    :sswitch_53
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 8774
    goto :goto_38

    .line 8776
    :sswitch_56
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 8777
    goto :goto_38

    .line 8779
    :sswitch_59
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 8780
    goto :goto_38

    .line 8790
    :cond_5c
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 8791
    .restart local v2    # "owningUid":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "owningPackage":Ljava/lang/String;
    goto :goto_42

    .line 8798
    :cond_67
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v1, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto :goto_4c

    .line 8765
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_36
        0x1 -> :sswitch_50
        0x3 -> :sswitch_53
        0x2710 -> :sswitch_56
        0x2711 -> :sswitch_59
    .end sparse-switch
.end method

.method public performShowStatusBarOnFullScreen(Z)V
    .registers 16
    .param p1, "show"    # Z

    .prologue
    .line 9360
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_5

    .line 9394
    :goto_4
    return-void

    .line 9365
    :cond_5
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shinylee : performShowStatusBarOnFullScreen() : show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9367
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 9368
    .local v11, "displayWidth":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 9369
    .local v9, "displayHeight":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v10

    .line 9372
    .local v10, "displayRotation":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, v10

    sub-int v13, v9, v0

    .line 9373
    .local v13, "topOnShow":I
    move v8, v9

    .line 9374
    .local v8, "bottomOnShow":I
    add-int/lit8 v12, v9, 0x0

    .line 9375
    .local v12, "topOnHide":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, v10

    add-int/2addr v0, v9

    add-int/lit8 v7, v0, 0x0

    .line 9378
    .local v7, "bottomOnHide":I
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz p1, :cond_66

    .end local v13    # "topOnShow":I
    :goto_44
    if-eqz p1, :cond_68

    .end local v8    # "bottomOnShow":I
    :goto_46
    invoke-virtual {v0, v1, v13, v11, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 9380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 9383
    if-eqz p1, :cond_6a

    .line 9384
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    .line 9385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNaviBarVisibility:I

    goto :goto_4

    .restart local v8    # "bottomOnShow":I
    .restart local v13    # "topOnShow":I
    :cond_66
    move v13, v12

    .line 9378
    goto :goto_44

    .end local v13    # "topOnShow":I
    :cond_68
    move v8, v7

    goto :goto_46

    .line 9387
    .end local v8    # "bottomOnShow":I
    :cond_6a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 9388
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNaviBarVisibility:I

    goto :goto_4
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, -0x7

    .line 2823
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_ca

    .line 2922
    :goto_6
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x899

    if-ne v1, v2, :cond_c0

    .line 2923
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_bb

    .line 2932
    :cond_10
    :goto_10
    return v0

    .line 2825
    :sswitch_11
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_26

    .line 2829
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2833
    :cond_26
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2834
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_6

    .line 2837
    :sswitch_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2843
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_49

    .line 2844
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2848
    :cond_49
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 2852
    :cond_4c
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_58

    .line 2853
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2857
    :cond_58
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2858
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_6

    .line 2863
    :sswitch_60
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2868
    :sswitch_6a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2873
    :sswitch_74
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2878
    :sswitch_7e
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_10

    .line 2881
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_6

    .line 2884
    :sswitch_85
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_10

    .line 2887
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_6

    .line 2891
    :sswitch_8d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_10

    .line 2894
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_6

    .line 2898
    :sswitch_95
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_6

    .line 2901
    :sswitch_99
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_6

    .line 2906
    :sswitch_9d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    const-string v3, "PhoneWindowManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_b2

    .line 2910
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2914
    :cond_b2
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2915
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_6

    .line 2926
    :cond_bb
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2932
    :cond_bd
    :goto_bd
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 2927
    :cond_c0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x89a

    if-ne v0, v1, :cond_bd

    .line 2928
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_bd

    .line 2823
    nop

    :sswitch_data_ca
    .sparse-switch
        0x7d0 -> :sswitch_11
        0x7d4 -> :sswitch_7e
        0x7de -> :sswitch_6a
        0x7e1 -> :sswitch_74
        0x7e3 -> :sswitch_2e
        0x7e8 -> :sswitch_60
        0x7ed -> :sswitch_85
        0x832 -> :sswitch_8d
        0x898 -> :sswitch_95
        0x89b -> :sswitch_99
        0x8ac -> :sswitch_9d
    .end sparse-switch
.end method

.method readLidState()V
    .registers 2

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    .line 2366
    return-void
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 9652
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 9653
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 9655
    :cond_9
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 9637
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 9638
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->removeContextualEvent(Ljava/lang/String;)V

    .line 9640
    :cond_9
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .registers 6
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2801
    if-eqz p2, :cond_f

    .line 2802
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2803
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2805
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_f
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2937
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_18

    .line 2938
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2939
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2972
    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_6f

    .line 2973
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2974
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2982
    :cond_17
    :goto_17
    return-void

    .line 2940
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2b

    .line 2941
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2943
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->showScrim()V

    goto :goto_c

    .line 2944
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_39

    .line 2945
    const-string v0, "WindowManager"

    const-string v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2948
    :cond_39
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_40

    .line 2949
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2950
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_47

    .line 2951
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2952
    :cond_47
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_4e

    .line 2953
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2954
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_55

    .line 2955
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2959
    :cond_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_63

    .line 2960
    const-string v0, "WindowManager"

    const-string v1, "Removing SViewCover window (Did it crash?)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSViewCover:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_c

    .line 2966
    :cond_63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_c

    .line 2967
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2968
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBarController:Lcom/android/internal/policy/impl/BarController;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_c

    .line 2977
    :cond_6f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_17

    .line 2978
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_17
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "request"    # Z

    .prologue
    .line 9301
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public requestTransientBars()V
    .registers 3

    .prologue
    .line 9323
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    .line 9324
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    .line 9326
    :cond_a
    return-void
.end method

.method public requestTransientBars(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 9329
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 9330
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;Z)V

    .line 9332
    :cond_9
    return-void
.end method

.method public rotationForOrientationLw(II)I
    .registers 12
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v0, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 7804
    const-string v4, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rotationForOrientationLw(orient="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", last="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "); user="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_99

    const-string v2, "USER_ROTATION_LOCKED"

    :goto_39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " sensorRotation="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mLidState="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mDockMode="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mHdmiPlugged="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " mAccelerometerDefault="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAccelerometerDefault:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " gripRotationLock="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGripRotationLocked()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7818
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_9c

    .line 8002
    :goto_98
    return v0

    .line 7804
    :cond_99
    const-string v2, ""

    goto :goto_39

    .line 7822
    :cond_9c
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 7823
    :try_start_9f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 7824
    .local v1, "sensorRotation":I
    if-gez v1, :cond_a8

    .line 7825
    move v1, p2

    .line 7830
    :cond_a8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isSupportAndAttachedSViewCover()Z

    move-result v2

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v2, :cond_c4

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    if-ltz v2, :cond_c4

    .line 7831
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverCloseRotation:I

    .line 7945
    .local v0, "preferredRotation":I
    :goto_ba
    packed-switch p1, :pswitch_data_284

    .line 7999
    :pswitch_bd
    if-ltz v0, :cond_27f

    .line 8000
    monitor-exit v4

    goto :goto_98

    .line 8004
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_c1
    move-exception v2

    monitor-exit v4
    :try_end_c3
    .catchall {:try_start_9f .. :try_end_c3} :catchall_c1

    throw v2

    .line 7834
    .restart local v1    # "sensorRotation":I
    :cond_c4
    :try_start_c4
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_cf

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_cf

    .line 7836
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLidOpenRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_ba

    .line 7837
    .end local v0    # "preferredRotation":I
    :cond_cf
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v6, :cond_e4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v2, :cond_db

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_e4

    .line 7842
    :cond_db
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_e1

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_e0
    goto :goto_ba

    .end local v0    # "preferredRotation":I
    :cond_e1
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCarDockRotation:I

    goto :goto_e0

    .line 7844
    :cond_e4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v2, :cond_106

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-eq v2, v3, :cond_f5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_f5

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v8, :cond_106

    :cond_f5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v2, :cond_fd

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_106

    .line 7852
    :cond_fd
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_103

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_102
    goto :goto_ba

    .end local v0    # "preferredRotation":I
    :cond_103
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDeskDockRotation:I

    goto :goto_102

    .line 7854
    :cond_106
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-ne v2, v7, :cond_11b

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-nez v2, :cond_112

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    if-ltz v2, :cond_11b

    .line 7859
    :cond_112
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorLinkDockEnablesAccelerometer:Z

    if-eqz v2, :cond_118

    move v0, v1

    .restart local v0    # "preferredRotation":I
    :goto_117
    goto :goto_ba

    .end local v0    # "preferredRotation":I
    :cond_118
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMirrorlinkDockRotation:I

    goto :goto_117

    .line 7861
    :cond_11b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v2, :cond_123

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v2, :cond_178

    .line 7864
    :cond_123
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v2, v3, :cond_161

    .line 7865
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 7866
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 7867
    .restart local v0    # "preferredRotation":I
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Dock Orientation Enabled :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMouseDockedFlag:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7868
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Smart Dock Orientation value  :  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    .line 7869
    .end local v0    # "preferredRotation":I
    :cond_161
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_169

    .line 7870
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7871
    .end local v0    # "preferredRotation":I
    :cond_169
    if-nez p1, :cond_16f

    .line 7872
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7873
    .end local v0    # "preferredRotation":I
    :cond_16f
    if-ne p1, v3, :cond_175

    .line 7874
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7876
    .end local v0    # "preferredRotation":I
    :cond_175
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7878
    .end local v0    # "preferredRotation":I
    :cond_178
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_188

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_188

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v2, :cond_188

    .line 7884
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7887
    .end local v0    # "preferredRotation":I
    :cond_188
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUvsOrientationRequested()Z

    move-result v2

    if-eqz v2, :cond_1b3

    .line 7888
    if-eqz p1, :cond_199

    const/16 v2, 0x8

    if-eq p1, v2, :cond_199

    const/4 v2, 0x6

    if-ne p1, v2, :cond_19d

    .line 7891
    :cond_199
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7892
    .end local v0    # "preferredRotation":I
    :cond_19d
    if-eq p1, v3, :cond_1a6

    const/16 v2, 0x9

    if-eq p1, v2, :cond_1a6

    const/4 v2, 0x7

    if-ne p1, v2, :cond_1aa

    .line 7895
    :cond_1a6
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7897
    .end local v0    # "preferredRotation":I
    :cond_1aa
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getUvsOrientation()I

    move-result v0

    .line 7898
    .restart local v0    # "preferredRotation":I
    move p1, v0

    goto/16 :goto_ba

    .line 7902
    .end local v0    # "preferredRotation":I
    :cond_1b3
    const/16 v2, 0xe

    if-eq p1, v2, :cond_1bf

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isGripRotationLocked()Z

    move-result v2

    if-eqz v2, :cond_1c2

    .line 7904
    :cond_1bf
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7905
    .end local v0    # "preferredRotation":I
    :cond_1c2
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-nez v2, :cond_1d7

    if-eq p1, v6, :cond_1e1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1e1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1e1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1e1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1e1

    :cond_1d7
    if-eq p1, v8, :cond_1e1

    if-eq p1, v7, :cond_1e1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1e1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_209

    .line 7917
    :cond_1e1
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_1f7

    .line 7921
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1110020

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1f5

    move v0, v3

    :cond_1f5
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    .line 7924
    :cond_1f7
    if-ne v1, v6, :cond_203

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v2, v3, :cond_203

    if-eq p1, v7, :cond_203

    const/16 v2, 0xd

    if-ne p1, v2, :cond_206

    .line 7928
    :cond_203
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7930
    .end local v0    # "preferredRotation":I
    :cond_206
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7932
    .end local v0    # "preferredRotation":I
    :cond_209
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_214

    const/4 v2, 0x5

    if-eq p1, v2, :cond_214

    .line 7938
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7942
    .end local v0    # "preferredRotation":I
    :cond_214
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_ba

    .line 7948
    :pswitch_217
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 7949
    monitor-exit v4

    goto/16 :goto_98

    .line 7951
    :cond_220
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_98

    .line 7955
    .restart local v0    # "preferredRotation":I
    :pswitch_225
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 7956
    monitor-exit v4

    goto/16 :goto_98

    .line 7958
    :cond_22e
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_98

    .line 7962
    .restart local v0    # "preferredRotation":I
    :pswitch_233
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_23c

    .line 7963
    monitor-exit v4

    goto/16 :goto_98

    .line 7965
    :cond_23c
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_98

    .line 7969
    .restart local v0    # "preferredRotation":I
    :pswitch_241
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_24a

    .line 7970
    monitor-exit v4

    goto/16 :goto_98

    .line 7972
    :cond_24a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_98

    .line 7977
    .restart local v0    # "preferredRotation":I
    :pswitch_24f
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_258

    .line 7978
    monitor-exit v4

    goto/16 :goto_98

    .line 7980
    :cond_258
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v2

    if-eqz v2, :cond_262

    .line 7981
    monitor-exit v4

    move v0, p2

    goto/16 :goto_98

    .line 7983
    :cond_262
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_98

    .line 7988
    .restart local v0    # "preferredRotation":I
    :pswitch_267
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_270

    .line 7989
    monitor-exit v4

    goto/16 :goto_98

    .line 7991
    :cond_270
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_27a

    .line 7992
    monitor-exit v4

    move v0, p2

    goto/16 :goto_98

    .line 7994
    :cond_27a
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4

    goto/16 :goto_98

    .line 8002
    .restart local v0    # "preferredRotation":I
    :cond_27f
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .end local v0    # "preferredRotation":I
    monitor-exit v4
    :try_end_282
    .catchall {:try_start_c4 .. :try_end_282} :catchall_c1

    goto/16 :goto_98

    .line 7945
    :pswitch_data_284
    .packed-switch 0x0
        :pswitch_225
        :pswitch_217
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_bd
        :pswitch_24f
        :pswitch_267
        :pswitch_241
        :pswitch_233
        :pswitch_bd
        :pswitch_24f
        :pswitch_267
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .registers 4
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 8009
    packed-switch p1, :pswitch_data_10

    .line 8021
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 8013
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    goto :goto_4

    .line 8018
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    goto :goto_4

    .line 8009
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_5
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public screenTurnedOff(I)V
    .registers 6
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 7577
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7578
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7579
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnFully:Z

    .line 7581
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_4b

    .line 7584
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurnedOff(I)V

    .line 7588
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_20

    .line 7589
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHideSViewCoverWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->disableHideSViewCoverOnce(Z)V

    .line 7594
    :cond_20
    const/4 v0, 0x2

    if-ne p1, v0, :cond_37

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    if-eqz v0, :cond_37

    .line 7596
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$31;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$31;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7605
    :cond_37
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_40

    .line 7606
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff(I)V

    .line 7608
    :cond_40
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7609
    :try_start_43
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7611
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4e

    .line 7612
    return-void

    .line 7581
    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    .line 7611
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v1, 0x1

    .line 7616
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 7624
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onScreenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 7627
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7628
    const/4 v0, 0x1

    :try_start_10
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    .line 7629
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 7630
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 7631
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 7633
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->waitForKeyguard(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 7634
    return-void

    .line 7631
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2993
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_1a

    .line 2994
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2995
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 2996
    if-eq p2, v4, :cond_19

    if-ne p2, v5, :cond_1a

    .line 3067
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_19
    :goto_19
    return v1

    .line 3002
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_2e

    .line 3003
    if-eq p2, v5, :cond_22

    if-ne p2, v7, :cond_26

    .line 3005
    :cond_22
    const v1, 0x10a003f

    goto :goto_19

    .line 3006
    :cond_26
    if-eq p2, v4, :cond_2a

    if-ne p2, v6, :cond_6e

    .line 3008
    :cond_2a
    const v1, 0x10a003e

    goto :goto_19

    .line 3010
    :cond_2e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpcNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eq p1, v2, :cond_36

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_5a

    .line 3012
    :cond_36
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_4a

    .line 3013
    if-eq p2, v5, :cond_3e

    if-ne p2, v7, :cond_42

    .line 3015
    :cond_3e
    const v1, 0x10a0039

    goto :goto_19

    .line 3016
    :cond_42
    if-eq p2, v4, :cond_46

    if-ne p2, v6, :cond_6e

    .line 3018
    :cond_46
    const v1, 0x10a0038

    goto :goto_19

    .line 3021
    :cond_4a
    if-eq p2, v5, :cond_4e

    if-ne p2, v7, :cond_52

    .line 3023
    :cond_4e
    const v1, 0x10a003d

    goto :goto_19

    .line 3024
    :cond_52
    if-eq p2, v4, :cond_56

    if-ne p2, v6, :cond_6e

    .line 3026
    :cond_56
    const v1, 0x10a003c

    goto :goto_19

    .line 3032
    :cond_5a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_6e

    .line 3033
    if-eq p2, v5, :cond_62

    if-ne p2, v7, :cond_66

    .line 3035
    :cond_62
    const v1, 0x10a003d

    goto :goto_19

    .line 3036
    :cond_66
    if-eq p2, v4, :cond_6a

    if-ne p2, v6, :cond_6e

    .line 3038
    :cond_6a
    const v1, 0x10a003c

    goto :goto_19

    .line 3043
    :cond_6e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x82f

    if-ne v2, v3, :cond_88

    .line 3044
    if-eq p2, v5, :cond_7c

    if-ne p2, v7, :cond_80

    .line 3046
    :cond_7c
    const v1, 0x10a0039

    goto :goto_19

    .line 3047
    :cond_80
    if-eq p2, v4, :cond_84

    if-ne p2, v6, :cond_88

    .line 3049
    :cond_84
    const v1, 0x10a0038

    goto :goto_19

    .line 3053
    :cond_88
    const/4 v2, 0x5

    if-ne p2, v2, :cond_95

    .line 3054
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 3056
    const v1, 0x10a0035

    goto :goto_19

    .line 3058
    :cond_95
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_a5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v2, :cond_a5

    if-eq p2, v4, :cond_19

    .line 3067
    :cond_a5
    const/4 v1, 0x0

    goto/16 :goto_19
.end method

.method public selectRotationAnimationLw([I)V
    .registers 7
    .param p1, "anim"    # [I

    .prologue
    const v4, 0x10a006c

    const v3, 0x10a006b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3076
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_37

    .line 3077
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_3c

    .line 3088
    aput v1, p1, v2

    aput v1, p1, v1

    .line 3095
    :goto_1f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->doesForceHideBySViewCover()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3096
    aput v4, p1, v1

    .line 3097
    aput v3, p1, v2

    .line 3100
    :cond_29
    return-void

    .line 3079
    :pswitch_2a
    const v0, 0x10a006d

    aput v0, p1, v1

    .line 3080
    aput v3, p1, v2

    goto :goto_1f

    .line 3083
    :pswitch_32
    aput v4, p1, v1

    .line 3084
    aput v3, p1, v2

    goto :goto_1f

    .line 3092
    :cond_37
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_1f

    .line 3077
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .registers 3

    .prologue
    .line 7785
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7786
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7789
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 7790
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 9647
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 9648
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 9650
    :cond_9
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;
    .param p11, "windowMode"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 4952
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_64

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_64

    .line 4960
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4961
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4962
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4963
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 5011
    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_38
    :goto_38
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_d4

    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_d4

    invoke-virtual {p11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_d4

    .line 5015
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5018
    const/16 v0, -0x2710

    iput v0, p7, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 5019
    const/16 v0, 0x2710

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 5033
    :cond_63
    :goto_63
    return-void

    .line 4971
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_64
    const/16 v0, 0x10

    if-eq p3, v0, :cond_9a

    .line 4972
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4988
    :cond_6f
    :goto_6f
    if-eqz p5, :cond_d2

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_75
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4989
    if-eqz p5, :cond_7e

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_7e
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4991
    invoke-virtual {p11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_92

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_38

    .line 4996
    :cond_92
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_38

    .line 4980
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_9a
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4981
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_6f

    .line 4982
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_b3

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 4983
    :cond_b3
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_bd

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 4984
    :cond_bd
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_c7

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 4985
    :cond_c7
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_6f

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_6f

    :cond_d2
    move-object v0, p9

    .line 4988
    goto :goto_75

    .line 5020
    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_d4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x899

    if-ne v0, v1, :cond_f0

    .line 5021
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentLeft:I

    iput v0, p6, Landroid/graphics/Rect;->left:I

    .line 5022
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentTop:I

    iput v0, p6, Landroid/graphics/Rect;->top:I

    .line 5023
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentRight:I

    iput v0, p6, Landroid/graphics/Rect;->right:I

    .line 5024
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContentBottom:I

    iput v0, p6, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_63

    .line 5027
    :cond_f0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_fd

    .line 5028
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_63

    .line 5029
    :cond_fd
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_63

    .line 5030
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_63
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 9632
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 9633
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 9635
    :cond_9
    return-void
.end method

.method public setCurrentInputMethodTargetLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 2
    .param p1, "inputTargetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentInputMethodTarget:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1206
    return-void
.end method

.method public setCurrentOrientationLw(I)V
    .registers 4
    .param p1, "newOrientation"    # I

    .prologue
    .line 8720
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8721
    :try_start_3
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_f

    .line 8722
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 8723
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8724
    invoke-static {p1}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setCurrentAppOrientation(I)V

    .line 8726
    :cond_f
    monitor-exit v1

    .line 8727
    return-void

    .line 8726
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .prologue
    const/4 v1, 0x0

    .line 9061
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCurrentUserId:I

    .line 9062
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_c

    .line 9063
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 9065
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_15

    .line 9067
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_19

    .line 9072
    :cond_15
    :goto_15
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 9073
    return-void

    .line 9068
    :catch_19
    move-exception v0

    goto :goto_15
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .registers 7
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1920
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_e

    .line 1921
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanLeft:I

    .line 1922
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanTop:I

    .line 1923
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanRight:I

    .line 1924
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOverscanBottom:I

    .line 1926
    :cond_e
    return-void
.end method

.method setHdmiPlugged(Z)V
    .registers 5
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 6412
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_22

    .line 6413
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6414
    invoke-virtual {p0, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(ZZ)V

    .line 6415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6416
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6417
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6418
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6420
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_22
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .registers 22
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1796
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_d

    .line 1903
    :cond_c
    :goto_c
    return-void

    .line 1799
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1800
    const-string v8, "persist.panel.orientation"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    div-int/lit8 v8, v8, 0x5a

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPanelOrientation:I

    .line 1803
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1805
    .local v5, "res":Landroid/content/res/Resources;
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1a4

    .line 1806
    move/from16 v6, p3

    .line 1807
    .local v6, "shortSize":I
    move/from16 v2, p2

    .line 1808
    .local v2, "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1809
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    .line 1810
    const v8, 0x1110021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_198

    .line 1811
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1812
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1831
    :goto_4f
    const v8, 0x105000c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarHeight:I

    .line 1834
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFloatingPadding:Landroid/graphics/Rect;

    const v9, 0x1050118

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1835
    const v8, 0x1050117

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMinimizeSize:I

    .line 1836
    const v8, 0x1050129

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScaleWindowResizableSize:I

    .line 1839
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    const v12, 0x105000d

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    .line 1842
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v12, 0x105000e

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    aput v12, v10, v11

    aput v12, v8, v9

    .line 1847
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    const v16, 0x105000f

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    aput v16, v14, v15

    aput v16, v12, v13

    aput v16, v10, v11

    aput v16, v8, v9

    .line 1854
    mul-int/lit16 v8, v6, 0xa0

    div-int v7, v8, p4

    .line 1855
    .local v7, "shortSizeDp":I
    mul-int/lit16 v8, v2, 0xa0

    div-int v3, v8, p4

    .line 1858
    .local v3, "longSizeDp":I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_1d3

    const/4 v8, 0x1

    :goto_f1
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1860
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v8

    if-eqz v8, :cond_1d6

    .line 1861
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1866
    :goto_100
    const-string v8, "qemu.hw.mainkeys"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1867
    .local v4, "navBarOverride":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e3

    .line 1868
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1874
    :cond_113
    :goto_113
    const v8, 0x111007c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasCocktailBar:Z

    .line 1875
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCocktailExtent:I

    .line 1880
    const-string v8, "portrait"

    const-string v9, "persist.demo.hdmirotation"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f2

    .line 1881
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1885
    :goto_147
    const-string v8, "persist.demo.hdmirotationlock"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1887
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v8

    if-eqz v8, :cond_162

    .line 1889
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSpcNavigationBar:Z

    .line 1890
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1895
    :cond_162
    const/16 v8, 0x3c0

    if-lt v3, v8, :cond_1fc

    const/16 v8, 0x2d0

    if-lt v7, v8, :cond_1fc

    const v8, 0x111006f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1fc

    const-string v8, "true"

    const-string v9, "config.override_forced_orient"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1fc

    const/4 v8, 0x1

    :goto_182
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 1902
    const-string v8, "latte"

    const-string v9, "ro.build.scafe"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTabletUXConcept:Z

    goto/16 :goto_c

    .line 1814
    .end local v3    # "longSizeDp":I
    .end local v4    # "navBarOverride":Ljava/lang/String;
    .end local v7    # "shortSizeDp":I
    :cond_198
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1815
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_4f

    .line 1818
    .end local v2    # "longSize":I
    .end local v6    # "shortSize":I
    :cond_1a4
    move/from16 v6, p2

    .line 1819
    .restart local v6    # "shortSize":I
    move/from16 v2, p3

    .line 1820
    .restart local v2    # "longSize":I
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPortraitRotation:I

    .line 1821
    const/4 v8, 0x2

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1822
    const v8, 0x1110021

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1c7

    .line 1823
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1824
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_4f

    .line 1826
    :cond_1c7
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    .line 1827
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_4f

    .line 1858
    .restart local v3    # "longSizeDp":I
    .restart local v7    # "shortSizeDp":I
    :cond_1d3
    const/4 v8, 0x0

    goto/16 :goto_f1

    .line 1863
    :cond_1d6
    const v8, 0x1110049

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_100

    .line 1869
    .restart local v4    # "navBarOverride":Ljava/lang/String;
    :cond_1e3
    const-string v8, "0"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 1870
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_113

    .line 1883
    :cond_1f2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLandscapeRotation:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_147

    .line 1895
    :cond_1fc
    const/4 v8, 0x0

    goto :goto_182
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 9055
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 9056
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 9057
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    .line 9607
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMWTrayOpen:Z

    .line 9608
    return-void
.end method

.method public setRotationLw(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 8030
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 8032
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->setRotationLw(I)V

    .line 8034
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$35;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$35;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8051
    .local v0, "pprr":Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 8052
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 8056
    return-void
.end method

.method public setSafeMode(Z)V
    .registers 5
    .param p1, "safeMode"    # Z

    .prologue
    .line 8096
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSafeMode:Z

    .line 8097
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/16 v0, 0x2711

    :goto_7
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 8100
    return-void

    .line 8097
    :cond_c
    const/16 v0, 0x2710

    goto :goto_7
.end method

.method public setSpecialKeysFilter(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 9348
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9349
    if-eqz p1, :cond_e

    .line 9350
    :try_start_5
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    .line 9354
    :goto_c
    monitor-exit v1

    .line 9355
    return-void

    .line 9352
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSpecialKeysMessenger:Landroid/os/Messenger;

    goto :goto_c

    .line 9354
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setTouchExplorationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 9105
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    .line 9106
    return-void
.end method

.method public setUserRotationMode(II)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 8075
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8078
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_16

    .line 8079
    const-string v1, "user_rotation"

    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8083
    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 8093
    :goto_15
    return-void

    .line 8088
    :cond_16
    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_15
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 8174
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-eqz v0, :cond_5

    .line 8219
    :goto_4
    return-void

    .line 8175
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$37;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$37;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method showGlobalActionsDialog()V
    .registers 6

    .prologue
    .line 1191
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-nez v1, :cond_f

    .line 1192
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1194
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    .line 1195
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->showDialog(ZZ)V

    .line 1196
    if-eqz v0, :cond_28

    .line 1199
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1201
    :cond_28
    return-void
.end method

.method showOrHideRecentAppsDialog(I)V
    .registers 5
    .param p1, "behavior"    # I

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1477
    :cond_c
    :goto_c
    return-void

    .line 1424
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v1, :cond_1d

    .line 1425
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1428
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_30

    .line 1429
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 1430
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_30

    .line 1431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1438
    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_30
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$8;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method startDockOrHome()V
    .registers 7

    .prologue
    .line 8400
    const-string v3, "WindowManager"

    const-string v4, "startDockOrHome"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8401
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->awakenDreams()V

    .line 8404
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 8405
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 8406
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 8407
    .local v1, "pm":Landroid/os/PersonaManager;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/os/PersonaManager;->handleHomeShow()Z

    move-result v3

    if-nez v3, :cond_36

    .line 8408
    const-string v3, "WindowManager"

    const-string v4, "home showing interrupted by persona manager"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8424
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :goto_35
    return-void

    .line 8414
    :cond_36
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 8415
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_4d

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isDockHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 8417
    :try_start_44
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_44 .. :try_end_4b} :catch_4c

    goto :goto_35

    .line 8419
    :catch_4c
    move-exception v3

    .line 8423
    :cond_4d
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_35
.end method

.method public subWindowTypeToLayerLw(I)I
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 2568
    packed-switch p1, :pswitch_data_26

    .line 2579
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    const/4 v0, 0x0

    :goto_1c
    return v0

    .line 2571
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 2573
    :pswitch_1f
    const/4 v0, -0x2

    goto :goto_1c

    .line 2575
    :pswitch_21
    const/4 v0, -0x1

    goto :goto_1c

    .line 2577
    :pswitch_23
    const/4 v0, 0x2

    goto :goto_1c

    .line 2568
    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public systemBooted()V
    .registers 5

    .prologue
    .line 8146
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_9

    .line 8147
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 8149
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 8150
    const/4 v2, 0x1

    :try_start_d
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    .line 8151
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_31

    .line 8154
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_2d

    .line 8156
    :try_start_14
    const-string v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 8158
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_2d

    .line 8159
    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 8160
    const-string v2, "WindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2d} :catch_34

    .line 8167
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->refreshKnoxInfo()V

    .line 8168
    return-void

    .line 8151
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2

    .line 8162
    :catch_34
    move-exception v0

    .line 8163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 8117
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHeadless:Z

    if-nez v0, :cond_1a

    .line 8118
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 8119
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 8121
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    .line 8124
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8125
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 8126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    .line 8127
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindowManager$36;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$36;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8141
    monitor-exit v1

    .line 8142
    return-void

    .line 8141
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public toggleMultiWindowTray()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 8428
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needHideTrayBar()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 8429
    :cond_15
    const-string v2, "WindowManager"

    const-string v3, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8444
    :goto_1c
    return v1

    .line 8433
    :cond_1d
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    if-nez v2, :cond_29

    .line 8434
    const-string v2, "WindowManager"

    const-string v3, "Multi window feature : off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 8438
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 8440
    :try_start_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_36

    .line 8444
    :goto_34
    const/4 v1, 0x1

    goto :goto_1c

    .line 8441
    :catch_36
    move-exception v0

    .line 8442
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 9657
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 9658
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 9660
    :cond_9
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 9642
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_9

    .line 9643
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 9645
    :cond_9
    return-void
.end method

.method public updateCoverManagerDisableState(Z)V
    .registers 7
    .param p1, "disable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 9130
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_29

    .line 9131
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDisableCoverManagerLocked : disable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsCoverManagerDisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9134
    :cond_29
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    if-eq v2, p1, :cond_3e

    .line 9135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    .line 9136
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCoverManagerDisabled:Z

    if-eqz v2, :cond_3f

    .line 9137
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 9138
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    .line 9148
    :cond_3e
    :goto_3e
    return-void

    .line 9141
    :cond_3f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCoverState()I

    move-result v2

    if-nez v2, :cond_54

    move v0, v1

    .line 9143
    .local v0, "coverSwitchState":Z
    :goto_48
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-eq v2, v0, :cond_3e

    .line 9144
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->applyCoverSwitchState(ZZ)Z

    goto :goto_3e

    .line 9141
    .end local v0    # "coverSwitchState":Z
    :cond_54
    const/4 v0, 0x1

    goto :goto_48
.end method

.method public updateMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "forceShow"    # Z

    .prologue
    .line 8477
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$40;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$40;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8494
    return-void
.end method

.method updateOrientationListenerLp()V
    .registers 3

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1016
    :cond_8
    :goto_8
    return-void

    .line 998
    :cond_9
    const/4 v0, 0x1

    .line 999
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_21

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1001
    const/4 v0, 0x0

    .line 1003
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_21

    .line 1004
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 1006
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 1011
    :cond_21
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    .line 1012
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationListener:Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 1014
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mOrientationSensorEnabled:Z

    goto :goto_8
.end method

.method updateRotation(Z)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 8326
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 8330
    :goto_6
    return-void

    .line 8327
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method updateRotation(ZZ)V
    .registers 4
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 8335
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 8339
    :goto_5
    return-void

    .line 8336
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public updateSettings()V
    .registers 25

    .prologue
    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 1930
    .local v14, "resolver":Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 1937
    .local v16, "updateRotation":Z
    const-string v19, "multi_window_enabled"

    const/16 v20, 0x0

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1941
    .local v4, "enableMultiWindowUISetting":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1943
    :try_start_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsMultiWindowEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6c

    .line 1944
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6c

    .line 1945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v19, v0

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_30b

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v21, "multi_window_flashbar_shown"

    const/16 v22, -0x1

    const/16 v23, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 1949
    .local v11, "lastFlashBarVisibility":I
    if-nez v11, :cond_307

    const/16 v19, 0x0

    :goto_61
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 1960
    .end local v11    # "lastFlashBarVisibility":I
    :cond_68
    :goto_68
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    .line 1964
    :cond_6c
    const-string v19, "end_button_behavior"

    const/16 v21, 0x2

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEndcallBehavior:I

    .line 1968
    const-string v19, "incall_power_button_behavior"

    const/16 v21, 0x1

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1974
    const-string v19, "user_rotation"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 1977
    .local v17, "userRotation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_bc

    .line 1978
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotation:I

    .line 1979
    const/16 v16, 0x1

    .line 1981
    :cond_bc
    const-string v19, "accelerometer_rotation"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    if-eqz v19, :cond_341

    const/16 v18, 0x0

    .line 1985
    .local v18, "userRotationMode":I
    :goto_d0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_e7

    .line 1986
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUserRotationMode:I

    .line 1987
    const/16 v16, 0x1

    .line 1988
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1991
    :cond_e7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1d4

    .line 1992
    const-string v19, "pointer_location"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 1994
    .local v13, "pointerLocation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v13, :cond_11e

    .line 1995
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPointerLocationMode:I

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v13, :cond_345

    const/16 v19, 0x1

    :goto_117
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2000
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_139

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v21, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2007
    :cond_139
    const-string v19, "toolbox_onoff"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2008
    .local v15, "toolbox":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v15, :cond_168

    .line 2009
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxMode:I

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v15, :cond_349

    const/16 v19, 0x7

    :goto_161
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2012
    :cond_168
    const-string v19, "toolbox_apps"

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 2013
    .local v12, "packageList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxPackageList:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_199

    .line 2014
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mToolBoxPackageList:Ljava/lang/String;

    .line 2015
    if-eqz v15, :cond_199

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->reset()V

    .line 2023
    :cond_199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSideKeyPanelFeature(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_1d4

    .line 2024
    const-string v19, "sidesoftkey_switch"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2025
    .local v5, "enabled":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSideKeyPanelEnabled:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v5, :cond_1d4

    .line 2026
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSideKeyPanelEnabled:I

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v5, :cond_34d

    const/16 v19, 0x9

    :goto_1cd
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2033
    .end local v5    # "enabled":I
    .end local v12    # "packageList":Ljava/lang/String;
    .end local v13    # "pointerLocation":I
    .end local v15    # "toolbox":I
    :cond_1d4
    const-string v19, "screen_off_timeout"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2035
    const-string v19, "default_input_method"

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2037
    .local v7, "imId":Ljava/lang/String;
    if-eqz v7, :cond_351

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_351

    const/4 v6, 0x1

    .line 2038
    .local v6, "hasSoftInput":Z
    :goto_1ff
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v6, :cond_20f

    .line 2039
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHasSoftInput:Z

    .line 2040
    const/16 v16, 0x1

    .line 2042
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v19, v0

    if-eqz v19, :cond_220

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->loadSetting()V

    .line 2047
    :cond_220
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportEasyOneHand()Z

    move-result v19

    if-eqz v19, :cond_28f

    .line 2048
    const-string v19, "any_screen_enabled"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 2049
    .local v8, "isEasyOneHandEnabled":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_354

    const/16 v19, 0x1

    :goto_23e
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->setEasyOneHandEnabled(Z)V

    .line 2051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v8, :cond_274

    .line 2052
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    .line 2053
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    move/from16 v19, v0

    if-eqz v19, :cond_274

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_274

    .line 2054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEasyOneHandEnabled:I

    move/from16 v19, v0

    if-nez v19, :cond_274

    .line 2055
    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateEasyOneHandState(ZZ)V

    .line 2060
    :cond_274
    const-string v19, "any_screen_running"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 2061
    .local v9, "isEasyOneHandRunning":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_358

    const/16 v19, 0x1

    :goto_28c
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->setEasyOneHandRunning(Z)V

    .line 2066
    .end local v8    # "isEasyOneHandEnabled":I
    .end local v9    # "isEasyOneHandRunning":I
    :cond_28f
    const-string v19, "kids_home_mode"

    const/16 v21, 0x0

    const/16 v22, -0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v14, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_35c

    const/4 v10, 0x1

    .line 2067
    .local v10, "isKidsLauncherEnabled":Z
    :goto_2a8
    const-string v19, "WindowManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "updateSetting mIsKidsLauncherEnabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " isKidsLauncherEnabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v10, :cond_2fa

    .line 2069
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsKidsLauncherEnabled:Z

    .line 2071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindowManager$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2086
    :cond_2fa
    monitor-exit v20
    :try_end_2fb
    .catchall {:try_start_23 .. :try_end_2fb} :catchall_33e

    .line 2087
    if-eqz v16, :cond_306

    .line 2088
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 2090
    :cond_306
    return-void

    .line 1949
    .end local v6    # "hasSoftInput":Z
    .end local v7    # "imId":Ljava/lang/String;
    .end local v10    # "isKidsLauncherEnabled":Z
    .end local v17    # "userRotation":I
    .end local v18    # "userRotationMode":I
    .restart local v11    # "lastFlashBarVisibility":I
    :cond_307
    const/16 v19, 0x1

    goto/16 :goto_61

    .line 1950
    .end local v11    # "lastFlashBarVisibility":I
    :cond_30b
    :try_start_30b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mEnableMultiWindowUISetting:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v4, :cond_68

    .line 1951
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateMultiWindowTrayBar(Z)V

    .line 1952
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_68

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v21, Lcom/android/internal/policy/impl/PhoneWindowManager$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_68

    .line 2086
    :catchall_33e
    move-exception v19

    monitor-exit v20
    :try_end_340
    .catchall {:try_start_30b .. :try_end_340} :catchall_33e

    throw v19

    .line 1981
    .restart local v17    # "userRotation":I
    :cond_341
    const/16 v18, 0x1

    goto/16 :goto_d0

    .line 1996
    .restart local v13    # "pointerLocation":I
    .restart local v18    # "userRotationMode":I
    :cond_345
    const/16 v19, 0x2

    goto/16 :goto_117

    .line 2010
    .restart local v15    # "toolbox":I
    :cond_349
    const/16 v19, 0x8

    goto/16 :goto_161

    .line 2027
    .restart local v5    # "enabled":I
    .restart local v12    # "packageList":Ljava/lang/String;
    :cond_34d
    const/16 v19, 0xa

    goto/16 :goto_1cd

    .line 2037
    .end local v5    # "enabled":I
    .end local v12    # "packageList":Ljava/lang/String;
    .end local v13    # "pointerLocation":I
    .end local v15    # "toolbox":I
    .restart local v7    # "imId":Ljava/lang/String;
    :cond_351
    const/4 v6, 0x0

    goto/16 :goto_1ff

    .line 2049
    .restart local v6    # "hasSoftInput":Z
    .restart local v8    # "isEasyOneHandEnabled":I
    :cond_354
    const/16 v19, 0x0

    goto/16 :goto_23e

    .line 2061
    .restart local v9    # "isEasyOneHandRunning":I
    :cond_358
    const/16 v19, 0x0

    goto/16 :goto_28c

    .line 2066
    .end local v8    # "isEasyOneHandEnabled":I
    .end local v9    # "isEasyOneHandRunning":I
    :cond_35c
    const/4 v10, 0x0

    goto/16 :goto_2a8
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 9310
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->updateTopActivity(Landroid/content/ComponentName;)V

    .line 9311
    return-void
.end method

.method public userActivity()V
    .registers 6

    .prologue
    .line 8246
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 8247
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_18

    .line 8249
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8250
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8252
    :cond_18
    monitor-exit v1

    .line 8253
    return-void

    .line 8252
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .registers 8
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3105
    packed-switch p1, :pswitch_data_1a

    .line 3116
    :cond_5
    :goto_5
    return v1

    .line 3109
    :pswitch_6
    if-eqz p3, :cond_a

    move v1, v2

    .line 3110
    goto :goto_5

    .line 3112
    :cond_a
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 3113
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 3114
    aget v3, v0, v2

    if-ne p1, v3, :cond_18

    aget v3, v0, v1

    if-eq p2, v3, :cond_5

    :cond_18
    move v1, v2

    goto :goto_5

    .line 3105
    :pswitch_data_1a
    .packed-switch 0x10a006c
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v4, 0x14

    const/4 v0, 0x2

    .line 2428
    if-lt p1, v2, :cond_d

    const/16 v5, 0x63

    if-gt p1, v5, :cond_d

    .line 2562
    :goto_c
    :sswitch_c
    return v0

    .line 2432
    :cond_d
    const/16 v5, 0x899

    if-ne p1, v5, :cond_13

    move v0, v1

    .line 2433
    goto :goto_c

    .line 2434
    :cond_13
    const/16 v5, 0x89a

    if-eq p1, v5, :cond_1b

    const/16 v5, 0x89b

    if-ne p1, v5, :cond_1d

    .line 2435
    :cond_1b
    const/4 v0, 0x4

    goto :goto_c

    .line 2438
    :cond_1d
    sparse-switch p1, :sswitch_data_b0

    .line 2561
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown window type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :sswitch_39
    move v0, v2

    .line 2440
    goto :goto_c

    :sswitch_3b
    move v0, v3

    .line 2447
    goto :goto_c

    .line 2449
    :sswitch_3d
    const/4 v0, 0x4

    goto :goto_c

    :sswitch_3f
    move v0, v1

    .line 2452
    goto :goto_c

    :sswitch_41
    move v0, v4

    .line 2455
    goto :goto_c

    .line 2458
    :sswitch_43
    const/4 v0, 0x7

    goto :goto_c

    .line 2461
    :sswitch_45
    const/16 v0, 0x8

    goto :goto_c

    .line 2464
    :sswitch_48
    const/16 v0, 0x9

    goto :goto_c

    .line 2467
    :sswitch_4b
    const/16 v0, 0xa

    goto :goto_c

    .line 2470
    :sswitch_4e
    const/16 v0, 0xb

    goto :goto_c

    .line 2474
    :sswitch_51
    const/16 v0, 0xc

    goto :goto_c

    .line 2478
    :sswitch_54
    const/16 v0, 0xd

    goto :goto_c

    .line 2480
    :sswitch_57
    const/16 v0, 0xe

    goto :goto_c

    .line 2482
    :sswitch_5a
    const/16 v0, 0xf

    goto :goto_c

    .line 2484
    :sswitch_5d
    const/16 v0, 0x10

    goto :goto_c

    .line 2486
    :sswitch_60
    const/16 v0, 0x11

    goto :goto_c

    .line 2488
    :sswitch_63
    const/16 v0, 0x12

    goto :goto_c

    .line 2491
    :sswitch_66
    const/16 v0, 0x13

    goto :goto_c

    :sswitch_69
    move v0, v4

    .line 2498
    goto :goto_c

    :sswitch_6b
    move v0, v4

    .line 2502
    goto :goto_c

    .line 2505
    :sswitch_6d
    const/16 v0, 0x15

    goto :goto_c

    .line 2508
    :sswitch_70
    const/16 v0, 0x16

    goto :goto_c

    .line 2512
    :sswitch_73
    const/16 v0, 0x17

    goto :goto_c

    .line 2515
    :sswitch_76
    const/16 v0, 0x18

    goto :goto_c

    .line 2518
    :sswitch_79
    const/16 v0, 0x19

    goto :goto_c

    .line 2522
    :sswitch_7c
    const/16 v0, 0x1a

    goto :goto_c

    .line 2524
    :sswitch_7f
    const/16 v0, 0x1b

    goto :goto_c

    .line 2526
    :sswitch_82
    const/16 v0, 0x1c

    goto :goto_c

    .line 2528
    :sswitch_85
    const/16 v0, 0x1b

    goto :goto_c

    .line 2530
    :sswitch_88
    const/16 v0, 0x1c

    goto :goto_c

    .line 2533
    :sswitch_8b
    const/16 v0, 0x1d

    goto/16 :goto_c

    .line 2535
    :sswitch_8f
    const/16 v0, 0x1e

    goto/16 :goto_c

    :sswitch_93
    move v0, v3

    .line 2538
    goto/16 :goto_c

    :sswitch_96
    move v0, v1

    .line 2540
    goto/16 :goto_c

    .line 2542
    :sswitch_99
    const/16 v0, 0xd

    goto/16 :goto_c

    .line 2544
    :sswitch_9d
    const/16 v0, 0xe

    goto/16 :goto_c

    .line 2552
    :sswitch_a1
    const/16 v0, 0x15

    goto/16 :goto_c

    :sswitch_a5
    move v0, v4

    .line 2554
    goto/16 :goto_c

    .line 2556
    :sswitch_a8
    const/16 v0, 0x13

    goto/16 :goto_c

    .line 2558
    :sswitch_ac
    const/16 v0, 0x19

    goto/16 :goto_c

    .line 2438
    :sswitch_data_b0
    .sparse-switch
        0x7d0 -> :sswitch_63
        0x7d1 -> :sswitch_3d
        0x7d2 -> :sswitch_3b
        0x7d3 -> :sswitch_48
        0x7d4 -> :sswitch_54
        0x7d5 -> :sswitch_41
        0x7d6 -> :sswitch_6b
        0x7d7 -> :sswitch_43
        0x7d8 -> :sswitch_3f
        0x7d9 -> :sswitch_57
        0x7da -> :sswitch_73
        0x7db -> :sswitch_4b
        0x7dc -> :sswitch_4e
        0x7dd -> :sswitch_c
        0x7de -> :sswitch_66
        0x7df -> :sswitch_7f
        0x7e0 -> :sswitch_7c
        0x7e1 -> :sswitch_60
        0x7e2 -> :sswitch_8b
        0x7e3 -> :sswitch_6d
        0x7e4 -> :sswitch_69
        0x7e5 -> :sswitch_82
        0x7e6 -> :sswitch_8f
        0x7e7 -> :sswitch_45
        0x7e8 -> :sswitch_70
        0x7e9 -> :sswitch_39
        0x7ea -> :sswitch_79
        0x7eb -> :sswitch_76
        0x7ec -> :sswitch_3f
        0x7ed -> :sswitch_51
        0x7ee -> :sswitch_c
        0x7ef -> :sswitch_85
        0x7f0 -> :sswitch_88
        0x82f -> :sswitch_51
        0x830 -> :sswitch_66
        0x831 -> :sswitch_73
        0x832 -> :sswitch_5a
        0x833 -> :sswitch_5d
        0x834 -> :sswitch_93
        0x835 -> :sswitch_96
        0x836 -> :sswitch_99
        0x837 -> :sswitch_9d
        0x8ac -> :sswitch_69
        0x8ca -> :sswitch_ac
        0x8cc -> :sswitch_a8
        0x8cd -> :sswitch_a5
        0x8ce -> :sswitch_a1
        0x8fc -> :sswitch_c
    .end sparse-switch
.end method
