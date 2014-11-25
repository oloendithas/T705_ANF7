.class Lcom/android/internal/policy/impl/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$DuosPhoneStateListener;,
        Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;,
        Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;,
        Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/GlobalActions$Action;,
        Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field public static final ACTION_NETWORK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.NETWORK_MODE_CHANGED"

.field public static final ACTION_SHOW_GLOBAL_ACTIONS:Ljava/lang/String; = "android.intent.action.SHOW_GLOBAL_ACTIONS"

.field private static final ACTION_STATUS_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_HIDE_QUICKPANEL:I = 0x4

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_REFRESH_AIRPLANEMODE:I = 0x3

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field static final SAFE_DEBUG:Z

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final SIM_CDMA:I = 0x0

.field private static final SIM_GSM:I = 0x1

.field private static final SVIEW_COVER_WIDTH:I = 0x14e

.field private static final TAG:Ljava/lang/String; = "GlobalActions"

.field private static final TAG_ACCESSIBLITY_SHORTCUT:Ljava/lang/String; = "AccessiblityShortcut"

.field private static final TAG_AIRPLANE_MODE_ON:Ljava/lang/String; = "AirplaneModeOn"

.field private static final TAG_BUG_REPORT:Ljava/lang/String; = "BugReport"

.field private static final TAG_DATA_MODE_TOGGLE:Ljava/lang/String; = "DataModeToggle"

.field private static final TAG_EMERGENCY:Ljava/lang/String; = "Emergency"

.field private static final TAG_POWEROFF:Ljava/lang/String; = "PowerOff"

.field private static final TAG_RESTART:Ljava/lang/String; = "Restart"

.field private static final TAG_SLEEP:Ljava/lang/String; = "Sleep"

.field private static final TAG_TALKBACK:Ljava/lang/String; = "TalkBack"

.field private static mCoverViewListView:Landroid/widget/ListView;

.field private static mHasVibrator:Z

.field private static mIsCoverOpen:Z

.field private static mPasscodeEditText:Landroid/widget/EditText;

.field private static final mProductName:Ljava/lang/String;

.field private static mSCoverRequestStatus:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mScafe:Ljava/lang/String;

.field private static final mScafeShot:Ljava/lang/String;

.field private static mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private static mSealedMenuPosition:I

.field private static mSealedModeOptionShown:Z

.field private static final mStrCSCFeatureGlobalActionItems:Ljava/lang/String;

.field private static sIsConfirming:Z

.field private static sIsConfirmingGuard:Ljava/lang/Object;

.field private static sIsSecondConfirming:Z


# instance fields
.field final INTERVAL_SCOVER_TRANSITION:I

.field private cm:Landroid/net/ConnectivityManager;

.field private isVZWOperatorAirplaneModeONReasonUSB3:Z

.field private mAccessiblityShortcut:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

.field mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBugReport:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

.field private mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

.field private final mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCurrentCoverBackgroundColor:I

.field mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

.field private mDisplayConfirm:Z

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

.field private mHandler:Landroid/os/Handler;

.field private mHasTelephony:Z

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private final mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field private mLayout:Landroid/widget/LinearLayout;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private final mShowSilentToggle:Z

.field private mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

.field private mSilentModeView:Landroid/view/View;

.field private mSleep:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

.field mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mTalkBack:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mViewCoverParentLayout:Landroid/widget/ImageView;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_4b

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    .line 184
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    .line 185
    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    .line 192
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 193
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 203
    sput-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    .line 207
    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    .line 208
    const-string v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    .line 209
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mProductName:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigGlobalActionItem"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;

    .line 2849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    return-void

    :cond_4b
    move v0, v2

    .line 149
    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 169
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 170
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 171
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 172
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    .line 176
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    .line 196
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 199
    iput-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 200
    iput-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 201
    iput v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    .line 204
    iput-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 205
    iput-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 228
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    .line 229
    iput-object v8, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 428
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1607
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$20;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$20;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1639
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$21;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$21;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1655
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$22;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$22;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2139
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$23;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$23;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2177
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$24;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$24;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2197
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$25;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$25;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2206
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$26;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/GlobalActions$26;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 2218
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$27;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlobalActions$27;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    .line 2860
    const/16 v5, 0xc8

    iput v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->INTERVAL_SCOVER_TRANSITION:I

    .line 2920
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$DuosPhoneStateListener;

    invoke-direct {v5, p0, v7}, Lcom/android/internal/policy/impl/GlobalActions$DuosPhoneStateListener;-><init>(Lcom/android/internal/policy/impl/GlobalActions;I)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 2921
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$DuosPhoneStateListener;

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/GlobalActions$DuosPhoneStateListener;-><init>(Lcom/android/internal/policy/impl/GlobalActions;I)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 236
    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v8, 0x1030128

    invoke-direct {v5, p1, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    .line 240
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 241
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 242
    const-string v5, "dreams"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 245
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v5, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v5, "com.android.settings.action.talkback_off"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 256
    const-string v5, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    :cond_d1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    .line 260
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    .line 261
    const-string v5, "GlobalActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHasTelephony - test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_169

    .line 264
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/MultiSimTelephonyManager;

    .line 266
    .local v1, "mMultiSimTelephonyManager1":Landroid/telephony/MultiSimTelephonyManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v5, v6}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 268
    const-string v5, "phone2"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/MultiSimTelephonyManager;

    .line 270
    .local v2, "mMultiSimTelephonyManager2":Landroid/telephony/MultiSimTelephonyManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v6}, Landroid/telephony/MultiSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 276
    .end local v1    # "mMultiSimTelephonyManager1":Landroid/telephony/MultiSimTelephonyManager;
    .end local v2    # "mMultiSimTelephonyManager2":Landroid/telephony/MultiSimTelephonyManager;
    :goto_122
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "airplane_mode_on"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v8, v6, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 279
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v8, "vibrator"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 280
    .local v4, "vibrator":Landroid/os/Vibrator;
    if-eqz v4, :cond_177

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_177

    move v5, v6

    :goto_146
    sput-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    .line 281
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110056

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_179

    :goto_157
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    .line 284
    const-string v5, "TMO"

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_165

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    .line 285
    :cond_165
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->initCoverManager(Landroid/content/Context;)V

    .line 286
    return-void

    .line 272
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_169
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 274
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_122

    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v4    # "vibrator":Landroid/os/Vibrator;
    :cond_177
    move v5, v7

    .line 280
    goto :goto_146

    :cond_179
    move v6, v7

    .line 281
    goto :goto_157
.end method

.method private GetSimSlotReady()I
    .registers 8

    .prologue
    const/4 v6, 0x3

    .line 2949
    const/4 v2, 0x0

    .line 2950
    .local v2, "result":I
    const-string v3, "gsm.sim.currentcardstatus"

    const-string v4, "9"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2951
    .local v0, "CardStatusCDMA":I
    const-string v3, "gsm.sim.currentcardstatus2"

    const-string v4, "9"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2953
    .local v1, "CardStatusGSM":I
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v3, :cond_40

    .line 2954
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetSimSlotReady CardStatusCDMA = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CardStatusGSM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    :cond_40
    if-ne v0, v6, :cond_78

    if-ne v1, v6, :cond_78

    .line 2958
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_data"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2960
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->isChinaMainland()Z

    move-result v3

    if-eqz v3, :cond_5b

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5b

    .line 2961
    const/4 v2, -0x1

    .line 2979
    :cond_5b
    :goto_5b
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v3, :cond_77

    .line 2980
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetSimSlotReady result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_77
    return v2

    .line 2965
    :cond_78
    if-ne v0, v6, :cond_7c

    .line 2966
    const/4 v2, 0x0

    goto :goto_5b

    .line 2967
    :cond_7c
    if-ne v1, v6, :cond_88

    .line 2968
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->isChinaMainland()Z

    move-result v3

    if-nez v3, :cond_86

    .line 2969
    const/4 v2, 0x1

    goto :goto_5b

    .line 2972
    :cond_86
    const/4 v2, -0x1

    goto :goto_5b

    .line 2975
    :cond_88
    const/4 v2, -0x1

    goto :goto_5b
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 147
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    return p0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/hardware/usb/UsbManager;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlobalActions;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/GlobalActions;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    return-object p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 147
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isTalkbackAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isMtpRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDisplayConfirm:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$2600()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/app/AlertDialog$Builder;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/GlobalActions;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100()Landroid/widget/ListView;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 147
    sput-boolean p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    return p0
.end method

.method static synthetic access$3400()I
    .registers 1

    .prologue
    .line 147
    sget v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/GlobalActions;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->clearSCoverRequestStatus()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$4100()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions;->comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions;->mStrCSCFeatureGlobalActionItems:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlobalActions;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/GlobalActions;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    return p1
.end method

.method private addUsersToMenu(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/impl/GlobalActions$Action;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1523
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .line 1525
    .local v9, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v10, :cond_74

    .line 1526
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1527
    .local v6, "currentUser":Landroid/content/pm/UserInfo;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1528
    .local v5, "user":Landroid/content/pm/UserInfo;
    if-nez v6, :cond_62

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_60

    move v8, v10

    .line 1530
    .local v8, "isCurrentUser":Z
    :goto_31
    iget-object v0, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, v5, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1532
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3b
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$19;

    const v2, 0x10804ba

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_6e

    iget-object v1, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :goto_4b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v8, :cond_71

    const-string v1, " \u2714"

    :goto_53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$19;-><init>(Lcom/android/internal/policy/impl/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    goto :goto_1e

    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "isCurrentUser":Z
    :cond_60
    move v8, v11

    .line 1528
    goto :goto_31

    :cond_62
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v1, :cond_6a

    move v8, v10

    goto :goto_31

    :cond_6a
    move v8, v11

    goto :goto_31

    .line 1530
    .restart local v8    # "isCurrentUser":Z
    :cond_6c
    const/4 v3, 0x0

    goto :goto_3b

    .line 1532
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6e
    const-string v1, "Primary"

    goto :goto_4b

    :cond_71
    const-string v1, ""

    goto :goto_53

    .line 1555
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "isCurrentUser":Z
    :cond_74
    return-void
.end method

.method private awakenIfNecessary()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_11

    .line 318
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    .line 325
    :cond_11
    :goto_11
    return-void

    .line 321
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 7
    .param p1, "on"    # Z

    .prologue
    .line 2276
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_42

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2281
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    if-eqz p1, :cond_44

    .line 2282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2283
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2284
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2285
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$28;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$28;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2299
    :goto_37
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-nez v1, :cond_41

    .line 2300
    if-eqz p1, :cond_5d

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_3f
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2302
    :cond_41
    return-void

    .line 2276
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_42
    const/4 v1, 0x0

    goto :goto_b

    .line 2294
    :cond_44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2295
    .restart local v0    # "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2296
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2297
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_37

    .line 2300
    :cond_5d
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_3f
.end method

.method private clearSCoverRequestStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 2862
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2863
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2864
    :cond_e
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2865
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2866
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2867
    .local v1, "sender":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    goto :goto_14

    .line 2869
    .end local v1    # "sender":Ljava/lang/String;
    :cond_24
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 2870
    return-void
.end method

.method private comfirmDialog(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;III)V
    .registers 14
    .param p1, "action"    # Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    .param p2, "resTitle"    # I
    .param p3, "resON"    # I
    .param p4, "resOFF"    # I

    .prologue
    .line 1661
    const/4 v1, 0x0

    .line 1662
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 1663
    .local v4, "positiveButtonClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v3, 0x0

    .line 1664
    .local v3, "mConfirmDialogSViewCover":Landroid/app/GlobalActionsSViewCoverDialog;
    const/4 v2, 0x0

    .line 1665
    .local v2, "dialog":Landroid/app/AlertDialog;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-ne p1, v5, :cond_9c

    .line 1666
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1672
    :goto_a
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_b5

    .line 1673
    new-instance v5, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v6

    iget-object v5, p1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v5, v7, :cond_ad

    move v5, p3

    :goto_20
    invoke-virtual {v6, v5}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v6

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v5, :cond_b0

    iget-object v5, p1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v5, v7, :cond_b0

    const v5, 0x10401f4

    :goto_31
    invoke-virtual {v6, v5, v4}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeCancelClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v3

    .line 1690
    :goto_42
    new-instance v5, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    .line 1691
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v5, :cond_f0

    .line 1692
    if-eqz v3, :cond_94

    .line 1693
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x833

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1695
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_71

    .line 1697
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1700
    :cond_71
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1702
    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    const/4 v5, 0x1

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1703
    const/4 v5, 0x0

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1704
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1705
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/GlobalActionsSViewCoverDialog;->setCanceledOnTouchOutside(Z)V

    .line 1706
    invoke-virtual {v3}, Landroid/app/GlobalActionsSViewCoverDialog;->show()V

    .line 1707
    const-string v5, "GlobalActions$ConfirmDialog"

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 1708
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    .line 1738
    .end local v0    # "attributes":Landroid/view/WindowManager$LayoutParams;
    :cond_94
    :goto_94
    sget-object v6, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 1739
    const/4 v5, 0x1

    :try_start_98
    sput-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 1740
    monitor-exit v6
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_19c

    .line 1741
    return-void

    .line 1667
    :cond_9c
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    if-ne p1, v5, :cond_a4

    .line 1668
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_a

    .line 1670
    :cond_a4
    const-string v5, "GlobalActions"

    const-string v6, "Cannot find ClickListener."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_ad
    move v5, p4

    .line 1673
    goto/16 :goto_20

    :cond_b0
    const v5, 0x1040013

    goto/16 :goto_31

    .line 1682
    :cond_b5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v5, p1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v5, v7, :cond_ea

    move v5, p3

    :goto_c7
    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z

    if-eqz v5, :cond_ec

    iget-object v5, p1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v5, v7, :cond_ec

    const v5, 0x10401f4

    :goto_d8
    invoke-virtual {v6, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_42

    :cond_ea
    move v5, p4

    goto :goto_c7

    :cond_ec
    const v5, 0x1040013

    goto :goto_d8

    .line 1711
    :cond_f0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    iput-object v2, v5, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 1712
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1713
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v5, :cond_191

    .line 1714
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1718
    :goto_106
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_11d

    .line 1719
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1721
    :cond_11d
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1722
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1723
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v5, :cond_18d

    .line 1724
    const-string v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in comfirmDialog action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resON = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resOFF = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " config_sf_slowBlur = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resTitle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAirplaneModeOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataModeToggle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_18d
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_94

    .line 1716
    :cond_191
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_106

    .line 1740
    :catchall_19c
    move-exception v5

    :try_start_19d
    monitor-exit v6
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    throw v5
.end method

.method private createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .registers 19

    .prologue
    .line 458
    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, "current_plmn":Ljava/lang/String;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeOptionShown:Z

    .line 462
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    .line 463
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$2;

    const v3, 0x1080b01

    const v4, 0x1080b00

    const v5, 0x10401fb

    const v6, 0x10401fc

    const v7, 0x10401fd

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/impl/GlobalActions$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 584
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$3;

    const v3, 0x1080afe

    const v4, 0x1080aff

    const v5, 0x10401eb

    const v6, 0x10401ee

    const v7, 0x10401ef

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions;->onAirplaneModeChanged()V

    .line 728
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$4;

    const v3, 0x1080b13

    const v4, 0x1080b14

    const v5, 0x1040ac0

    const v6, 0x1040abe

    const v7, 0x1040abf

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$4;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 798
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$5;

    const v3, 0x1080b31

    const v4, 0x1080b31

    const v5, 0x1040aad

    const v6, 0x10401dc

    const v7, 0x10401dd

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$5;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mTalkBack:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 942
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$6;

    const v2, 0x1080b31

    const v3, 0x10407b0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$6;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAccessiblityShortcut:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 983
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$7;

    const v2, 0x1080b03

    const v3, 0x10401d6

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$7;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 1028
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$8;

    const v2, 0x1080b04

    const v3, 0x10401d7

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$8;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 1066
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$9;

    const v2, 0x1080b33

    const v3, 0x10401d8

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$9;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSleep:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 1106
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$10;

    const v2, 0x1080806

    const v3, 0x10401e2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$10;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mBugReport:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    .line 1158
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 1159
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x104027e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1160
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x104027f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1162
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    .line 1163
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1164
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1165
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1166
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$11;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1192
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/GlobalActions$12;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1199
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$13;

    const v3, 0x108046d

    const v4, 0x108046c

    const v5, 0x104027b

    const v6, 0x104027c

    const v7, 0x104027d

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/policy/impl/GlobalActions$13;-><init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    .line 1278
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v1, :cond_31e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_31e

    .line 1280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1282
    sget v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    .line 1283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    sget v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/internal/policy/impl/GlobalActions;->mSealedMenuPosition:I

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedPowerDialogOptionMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a2

    .line 1286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_1a2
    :goto_1a2
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    .line 1375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1376
    new-instance v15, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v15, v1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1377
    .local v15, "params":Lcom/android/internal/app/AlertController$AlertParams;
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v1, :cond_417

    .line 1378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    iput-object v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1379
    move-object/from16 v0, p0

    iput-object v0, v15, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1380
    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1388
    :goto_1cf
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v1, :cond_1df

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-nez v1, :cond_1e9

    .line 1389
    :cond_1df
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v1, :cond_1e9

    .line 1391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    iput-object v1, v15, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 1396
    :cond_1e9
    new-instance v10, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, v1, v15, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V

    .line 1397
    .local v10, "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    const-string v1, "GlobalActions"

    const-string v2, "GlobalActionsDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_452

    .line 1399
    const-string v1, "GlobalActions"

    const-string v2, "mIsCoverOpen  is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 1401
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x833

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1402
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 1404
    .local v12, "lf":Landroid/view/LayoutInflater;
    const v1, 0x109005a

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 1405
    .local v17, "v":Landroid/view/View;
    const v1, 0x1020301

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 1406
    .local v9, "crossBtn":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 1407
    invoke-virtual {v9}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x5153

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1409
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$15;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/internal/policy/impl/GlobalActions$15;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v9, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    const v1, 0x10202d4

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    .line 1425
    const v1, 0x1020318

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    .line 1426
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1427
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_298

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1428
    :cond_298
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$16;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1436
    const v1, 0x1020016

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1437
    .local v16, "titleView":Landroid/widget/TextView;
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43c

    .line 1438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    :goto_2cd
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setContentView(Landroid/view/View;)V

    .line 1446
    .end local v9    # "crossBtn":Landroid/widget/ImageButton;
    .end local v12    # "lf":Landroid/view/LayoutInflater;
    .end local v16    # "titleView":Landroid/widget/TextView;
    .end local v17    # "v":Landroid/view/View;
    :goto_2d2
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 1447
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1448
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 1449
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$17;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1473
    invoke-virtual {v10}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1474
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v1, :cond_31d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v1}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedPowerDialogOptionMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_31d

    .line 1477
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$18;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/internal/policy/impl/GlobalActions$18;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1496
    :cond_31d
    return-object v10

    .line 1290
    .end local v10    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .end local v15    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_31e
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_3bf

    .line 1291
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    .line 1322
    :goto_342
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ConfigOpeartorHomeMode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "teasymode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37e

    .line 1323
    new-instance v14, Lcom/android/internal/policy/impl/GlobalActions$14;

    const v1, 0x1080b02

    const v2, 0x10401e3

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$14;-><init>(Lcom/android/internal/policy/impl/GlobalActions;II)V

    .line 1343
    .local v14, "mHomeScreenMode":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    const-string v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1344
    .local v11, "domesticOtaStart":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v1, :cond_373

    const-string v1, "true"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40d

    .line 1345
    :cond_373
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v1, :cond_37e

    .line 1346
    const-string v1, "GlobalActions"

    const-string v2, "HomeScreenMode is disable on closed SCover or OTA mode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    .end local v11    # "domesticOtaStart":Ljava/lang/String;
    .end local v14    # "mHomeScreenMode":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    :cond_37e
    :goto_37e
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v1, :cond_3ab

    .line 1355
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_3ab

    .line 1363
    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    .line 1368
    :cond_3ab
    const-string v1, "fw.power_user_switcher"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 1369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->addUsersToMenu(Ljava/util/ArrayList;)V

    goto/16 :goto_1a2

    .line 1300
    :cond_3bf
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/android/internal/policy/impl/GlobalActions$Action;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAccessiblityShortcut:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mTalkBack:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mPowerOff:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mSleep:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mRestart:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/GlobalActions;->mBugReport:Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    goto/16 :goto_342

    .line 1349
    .restart local v11    # "domesticOtaStart":Ljava/lang/String;
    .restart local v14    # "mHomeScreenMode":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    :cond_40d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_37e

    .line 1382
    .end local v11    # "domesticOtaStart":Ljava/lang/String;
    .end local v14    # "mHomeScreenMode":Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
    .restart local v15    # "params":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_417
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    .line 1383
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v13, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1384
    .local v13, "lllp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_1cf

    .line 1440
    .end local v13    # "lllp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "crossBtn":Landroid/widget/ImageButton;
    .restart local v10    # "dialog":Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    .restart local v12    # "lf":Landroid/view/LayoutInflater;
    .restart local v16    # "titleView":Landroid/widget/TextView;
    .restart local v17    # "v":Landroid/view/View;
    :cond_43c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2cd

    .line 1444
    .end local v9    # "crossBtn":Landroid/widget/ImageButton;
    .end local v12    # "lf":Landroid/view/LayoutInflater;
    .end local v16    # "titleView":Landroid/widget/TextView;
    .end local v17    # "v":Landroid/view/View;
    :cond_452
    const v1, 0x10401d4

    invoke-virtual {v10, v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->setTitle(I)V

    goto/16 :goto_2d2
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .registers 20
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 2778
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 2780
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x1090051

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 2782
    .local v8, "content":Landroid/view/View;
    const v14, 0x102030e

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2784
    .local v3, "capabilitiesHeaderView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040aad

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2785
    .local v1, "TalkbackTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040ab8

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v1, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2786
    const v14, 0x102030f

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2788
    .local v4, "capabilitiesView":Landroid/widget/LinearLayout;
    const v14, 0x1090038

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2790
    .local v7, "capabilityView":Landroid/view/View;
    const v14, 0x10202f2

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 2792
    .local v11, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108051b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2794
    const v14, 0x10202f6

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2796
    .local v13, "labelView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040ab9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2797
    const v14, 0x10202f7

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2799
    .local v9, "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040aba

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2800
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v2

    .line 2802
    .local v2, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2804
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 2805
    .local v6, "capabilityCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b8
    if-ge v10, v6, :cond_11d

    .line 2806
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 2807
    .local v5, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v14, 0x1090038

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2809
    const v14, 0x10202f2

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "imageView":Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 2811
    .restart local v11    # "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x108051b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2813
    const v14, 0x10202f6

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13    # "labelView":Landroid/widget/TextView;
    check-cast v13, Landroid/widget/TextView;

    .line 2815
    .restart local v13    # "labelView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v5, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2816
    const v14, 0x10202f7

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "descriptionView":Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 2818
    .restart local v9    # "descriptionView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v5, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2819
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2805
    add-int/lit8 v10, v10, 0x1

    goto :goto_b8

    .line 2821
    .end local v5    # "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_11d
    return-object v8
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 9

    .prologue
    .line 2824
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v5

    .line 2826
    .local v5, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 2827
    .local v4, "serviceInfoCount":I
    new-instance v1, Landroid/content/ComponentName;

    const-string v6, "com.google.android.marvin.talkback"

    const-string v7, "com.google.android.marvin.talkback.TalkBackService"

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    .local v1, "mComponentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v4, :cond_44

    .line 2830
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2831
    .local v3, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2832
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 2837
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_40
    return-object v3

    .line 2829
    .restart local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2837
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_44
    const/4 v3, 0x0

    goto :goto_40
.end method

.method private getBackgroundColor()I
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "color":I
    const/4 v0, 0x0

    .line 406
    .local v0, "backgroundColor":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_use_all"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 407
    .local v2, "colorUseAll":I
    const/4 v3, 0x0

    .line 409
    .local v3, "defaultBackgroundColor":I
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 410
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->mProductName:Ljava/lang/String;

    const-string v6, "flte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v5, 0x2e

    const/16 v6, 0x1a

    const/16 v7, 0xd

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 412
    :goto_29
    if-ne v2, v9, :cond_3e

    .line 413
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_color_random"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 414
    .local v4, "mColorRandom":I
    packed-switch v4, :pswitch_data_64

    .line 422
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 426
    .end local v4    # "mColorRandom":I
    :cond_3e
    :goto_3e
    return v0

    .line 410
    :cond_3f
    const/16 v5, 0x8

    const/16 v6, 0x6b

    const/16 v7, 0x77

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    goto :goto_29

    .line 416
    .restart local v4    # "mColorRandom":I
    :pswitch_4a
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "s_vew_cover_background_color"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 417
    goto :goto_3e

    .line 419
    :pswitch_57
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sview_bg_display_random"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 420
    goto :goto_3e

    .line 414
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_57
    .end packed-switch
.end method

.method private getCurrentNW()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2915
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_29

    .line 2916
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentNW()] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CURRENT_NETWORK"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_29
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CURRENT_NETWORK"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 3

    .prologue
    .line 1500
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 1502
    :goto_8
    return-object v1

    .line 1501
    :catch_9
    move-exception v0

    .line 1502
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getSCoverState()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_36

    .line 328
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 329
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_2e

    .line 330
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 338
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_2d
    return v1

    .line 333
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_2e
    const-string v2, "GlobalActions"

    const-string v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 337
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_36
    const-string v2, "GlobalActions"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private handleShow()V
    .registers 10

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->awakenIfNecessary()V

    .line 342
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getSCoverState()Z

    move-result v6

    sput-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    .line 344
    sget-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v6, :cond_2d

    const-string v6, "americano"

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "double"

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions;->mScafeShot:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 346
    :cond_21
    sget-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2c

    .line 347
    const-string v6, "GlobalActions"

    const-string v7, "Device is in SView Cover mode hence GlobalAction dialog will not display "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2c
    :goto_2c
    return-void

    .line 351
    :cond_2d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 352
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->prepareDialog()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 356
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 357
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 358
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v6, :cond_10c

    .line 359
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 360
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401d4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 362
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 363
    const-string v6, "GlobalActions"

    const-string v7, "WindowManager.LayoutParams LAstAttributes"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->show()V

    .line 366
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 367
    sget-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v6, :cond_f6

    .line 368
    const-string v6, "americano"

    sget-object v7, Lcom/android/internal/policy/impl/GlobalActions;->mScafe:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getBackgroundColor()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    .line 370
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    if-eqz v6, :cond_db

    .line 372
    const/4 v2, 0x1

    .line 374
    .local v2, "isStatusBarVisible":Z
    :try_start_b2
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b9} :catch_fb

    move-result v2

    .line 379
    :goto_ba
    if-nez v2, :cond_d4

    .line 380
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 381
    .local v4, "mStatusHeight":I
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 382
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v4

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 385
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "mStatusHeight":I
    :cond_d4
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    iget v7, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 388
    .end local v2    # "isStatusBarVisible":Z
    :cond_db
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverColor:I

    const/high16 v7, -0x1000000

    if-ne v6, v7, :cond_104

    .line 389
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 394
    :cond_e7
    :goto_e7
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    iget v7, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-int v7, v7

    mul-int/lit16 v7, v7, 0x14e

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setLayout(II)V

    .line 397
    :cond_f6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground()V

    goto/16 :goto_2c

    .line 375
    .restart local v2    # "isStatusBarVisible":Z
    :catch_fb
    move-exception v1

    .line 376
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "GlobalActions"

    const-string v7, "Remote exception while to check isStatusBarVisible"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 391
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "isStatusBarVisible":Z
    :cond_104
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mViewCoverParentLayout:Landroid/widget/ImageView;

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_e7

    .line 399
    :cond_10c
    const-string v6, "GlobalActions"

    const-string v7, "Can not show dialog as it is not well formed properly"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method private hideQuickpanelBackground()V
    .registers 2

    .prologue
    .line 2851
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->hideQuickpanelBackground(Ljava/lang/String;)V

    .line 2852
    return-void
.end method

.method private hideQuickpanelBackground(Ljava/lang/String;)V
    .registers 6
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 2855
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_9

    .line 2859
    :cond_8
    :goto_8
    return-void

    .line 2856
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2857
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2858
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSCoverRequestStatus:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 444
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 445
    const-string v0, "GlobalActions"

    const-string v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_28

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 449
    const-string v0, "GlobalActions"

    const-string v1, "mCoverManager.registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_28
    return-void
.end method

.method private static isChinaMainland()Z
    .registers 10

    .prologue
    const/16 v9, 0x1cc

    const/16 v8, 0x1c7

    const/4 v5, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 2986
    const/4 v2, 0x1

    .line 2987
    .local v2, "result":Z
    const-string v3, "gsm.operator.numeric2"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2988
    .local v1, "gsmOperator":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_6e

    .line 2989
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3a

    .line 2990
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " gsm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_3a
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_4e

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_6c

    .line 2994
    :cond_4e
    const/4 v2, 0x1

    .line 3013
    :cond_4f
    :goto_4f
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v3, :cond_6b

    .line 3014
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    :cond_6b
    return v2

    .line 2996
    :cond_6c
    const/4 v2, 0x0

    goto :goto_4f

    .line 2999
    :cond_6e
    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3000
    .local v0, "cdmaOperator":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_4f

    .line 3001
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v3, :cond_a0

    .line 3002
    const-string v3, "GlobalActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cdma = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_a0
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v9, :cond_b4

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v8, :cond_b6

    .line 3006
    :cond_b4
    const/4 v2, 0x1

    goto :goto_4f

    .line 3008
    :cond_b6
    const/4 v2, 0x0

    goto :goto_4f
.end method

.method private isCurrentUserOwner()Z
    .registers 3

    .prologue
    .line 1506
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1507
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isGlobalActionConfirming()Z
    .registers 3

    .prologue
    .line 2304
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 2305
    :try_start_3
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 2306
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isMtpRunning()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1510
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1511
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1512
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1513
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1514
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.android.MtpApplication.MtpApplication"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1515
    sget-boolean v5, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v5, :cond_3a

    .line 1516
    const-string v5, "GlobalActions"

    const-string v6, "phone is in MTP screen"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3a
    :goto_3a
    return v4

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3a
.end method

.method private isSimReady()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2309
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2310
    .local v0, "SimState":I
    const-string v6, "ro.config.donot_nosim"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2322
    .local v3, "lSimValue":Z
    if-nez v3, :cond_69

    if-eqz v0, :cond_16

    if-ne v0, v5, :cond_69

    .line 2339
    :cond_16
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2340
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x1040202

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2341
    const v6, 0x1040203

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2342
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2343
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2344
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2345
    .local v1, "alert":Landroid/app/AlertDialog;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v6, :cond_5c

    .line 2346
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 2350
    :goto_44
    new-instance v6, Lcom/android/internal/policy/impl/GlobalActions$29;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/GlobalActions$29;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2358
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2359
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2360
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 2361
    sget-object v5, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 2362
    const/4 v6, 0x1

    :try_start_58
    sput-boolean v6, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 2363
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_66

    .line 2366
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_5b
    return v4

    .line 2348
    .restart local v1    # "alert":Landroid/app/AlertDialog;
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5c
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_44

    .line 2363
    :catchall_66
    move-exception v4

    :try_start_67
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v4

    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_69
    move v4, v5

    .line 2366
    goto :goto_5b
.end method

.method private isTalkbackAvailable()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2840
    const-string v0, "com.google.android.marvin.talkback"

    .line 2842
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.marvin.talkback"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_11

    .line 2847
    const/4 v2, 0x1

    :goto_10
    return v2

    .line 2843
    :catch_11
    move-exception v1

    .line 2844
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GlobalActions"

    const-string v4, "Screen reader does not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private onAirplaneModeChanged()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2264
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHasTelephony:Z

    if-eqz v2, :cond_7

    .line 2271
    :goto_6
    return-void

    .line 2265
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_23

    .line 2269
    .local v0, "airplaneModeOn":Z
    :goto_15
    if-eqz v0, :cond_25

    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_19
    iput-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 2270
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_6

    .end local v0    # "airplaneModeOn":Z
    :cond_23
    move v0, v1

    .line 2265
    goto :goto_15

    .line 2269
    .restart local v0    # "airplaneModeOn":Z
    :cond_25
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_19
.end method

.method private prepareDialog()Z
    .registers 6

    .prologue
    .line 1558
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->GetSimSlotReady()I

    move-result v2

    .line 1567
    .local v2, "simSlotReady":I
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 1570
    .local v0, "dataModeOn":Z
    if-eqz v0, :cond_74

    .line 1571
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1575
    :goto_10
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1576
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1578
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1579
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1585
    :goto_31
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_81

    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_3b
    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1586
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergency:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mEmergencyState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    .line 1588
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 1589
    sget-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-eqz v3, :cond_94

    .line 1591
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    if-eqz v3, :cond_84

    .line 1592
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_60

    .line 1593
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1601
    :cond_60
    :goto_60
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v3, :cond_72

    .line 1602
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1605
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_72
    const/4 v3, 0x1

    return v3

    .line 1573
    :cond_74
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDataNetworkState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_10

    .line 1581
    :cond_79
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mSealedModeToggle:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    sget-object v4, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    goto :goto_31

    .line 1585
    :cond_81
    sget-object v3, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_3b

    .line 1595
    :cond_84
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v3, :cond_60

    .line 1596
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_60

    .line 1599
    :cond_94
    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x833

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    goto :goto_60
.end method

.method private restoreQuickpanelBackground()V
    .registers 2

    .prologue
    .line 2873
    const-string v0, "GlobalActions"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions;->restoreQuickpanelBackground(Ljava/lang/String;)V

    .line 2874
    return-void
.end method

.method private restoreQuickpanelBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2877
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 2884
    :cond_9
    :goto_9
    return-void

    .line 2878
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2879
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2880
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2881
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2882
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2883
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private virtualDismissInSCover()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2886
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 2903
    :cond_9
    :goto_9
    return-void

    .line 2887
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2888
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2889
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2890
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2891
    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2892
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2893
    const-string v1, "sender"

    const-string v2, "GlobalActions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2895
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2896
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2898
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2899
    const-string v1, "sender"

    const-string v2, "GlobalActions$ConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2901
    :cond_5e
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2902
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9
.end method

.method private virtualDismissInSCover(Ljava/lang/String;)V
    .registers 7
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2905
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    .line 2913
    :cond_9
    :goto_9
    return-void

    .line 2906
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2907
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2908
    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2909
    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2910
    const-string v1, "sender"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2911
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2912
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    if-nez v0, :cond_d

    .line 1767
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1769
    :cond_d
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/GlobalActions$Action;->onPress()V

    .line 1771
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 1744
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mShowSilentToggle:Z

    if-eqz v1, :cond_c

    .line 1746
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_1c

    .line 1753
    :cond_c
    :goto_c
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z

    if-nez v1, :cond_1b

    .line 1754
    sget-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    if-nez v1, :cond_26

    .line 1755
    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 1756
    const/4 v1, 0x0

    :try_start_18
    sput-boolean v1, Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z

    .line 1757
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_23

    .line 1763
    :cond_1b
    :goto_1b
    return-void

    .line 1747
    :catch_1c
    move-exception v0

    .line 1749
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string v1, "GlobalActions"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 1757
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 1759
    :cond_26
    sput-boolean v3, Lcom/android/internal/policy/impl/GlobalActions;->sIsSecondConfirming:Z

    goto :goto_1b
.end method

.method public showDialog(ZZ)V
    .registers 5
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->canGlobalActionsShow()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionConfirming()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 314
    :cond_e
    :goto_e
    return-void

    .line 304
    :cond_f
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z

    .line 305
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDeviceProvisioned:Z

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    if-eqz v0, :cond_26

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_e

    .line 312
    :cond_26
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V

    goto :goto_e
.end method
