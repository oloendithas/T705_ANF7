.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$2;,
        Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkController$Operator;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = false

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field static final DEBUG:Z = false

.field private static final EVENT_CHANGE_FAKE_CALL_STATE:I = 0x47

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static final FLIGHT_MODE_ICON:I = 0x7f020138

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NetworkController"


# instance fields
.field private final EXTRA_IS_VALID_PLMN:Ljava/lang/String;

.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherDisconnected:Z

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field mCurrDataTypeIconId:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataRoamingTypeForVZW:I

.field private mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field mDataTypeBrand:Ljava/lang/String;

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeTMOstyle:Z

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoWifiLevel:I

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mEmgcCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field mIsCmccCard:Z

.field private mIsWimaxEnabled:Z

.field private mKeepFakeDuration:I

.field private mKeepFakeState:Z

.field private mLastAirplaneMode:Z

.field private mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataSignalIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field private mLastNwboosterDataTypeIconId:I

.field private mLastNwboosterRilEnabled:Z

.field private mLastNwboosterSettingEnabled:Z

.field mLastPhoneSignalIconId:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field mLastSglteMode:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field private mLastSpn:Ljava/lang/String;

.field mLastWifiActivityIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field mMobileDataEnabled:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field private mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field private mNwboosterDataTypeIconId:I

.field private mNwboosterRilEnabled:Z

.field private mNwboosterSettingEnabled:Z

.field mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSglteMode:I

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSigStrengthId:I

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field private mVoiceCapable:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCarrierIcon:[[I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 390
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 111
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 112
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 113
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 114
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 115
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 118
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v9

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 133
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 134
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 135
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 139
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    .line 140
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 152
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    .line 153
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    .line 161
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 162
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 163
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move-object v5, v6

    .line 165
    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    .line 168
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 169
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 170
    const v5, 0x7f02014b

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 172
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    .line 175
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 176
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 177
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 178
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 179
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 180
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 181
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 182
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 185
    const v5, 0x7f02010e

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 186
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterDataTypeIconId:I

    .line 187
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    .line 188
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterRilEnabled:Z

    .line 189
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    .line 190
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterSettingEnabled:Z

    .line 209
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 210
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 212
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 215
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 216
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 218
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    .line 219
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 223
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 226
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 228
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 229
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 230
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 231
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 232
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 233
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 234
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 235
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 236
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 238
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileActivityIconId:I

    .line 239
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    .line 242
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataSignalIconId:I

    .line 243
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSglteMode:I

    .line 244
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSglteMode:I

    .line 248
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 252
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 253
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    .line 255
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsCmccCard:Z

    .line 260
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    .line 261
    const-string v5, "isValidPlmn"

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->EXTRA_IS_VALID_PLMN:Ljava/lang/String;

    .line 265
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    .line 267
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    .line 271
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    .line 286
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    .line 287
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    .line 288
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    .line 289
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    .line 290
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    .line 291
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    .line 292
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    .line 293
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    .line 297
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    .line 298
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    .line 302
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    .line 304
    const/16 v5, 0x1b58

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeDuration:I

    .line 308
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    .line 355
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 973
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4646
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_UNKNOWN:I

    .line 4647
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_FALSE:I

    .line 4648
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    .line 4764
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    .line 4890
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 394
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 396
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 398
    const v5, 0x7f0a0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 399
    const v5, 0x7f0a0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 400
    const v5, 0x1110047

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 404
    const v5, 0x111003d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateStatusBarNetworkSettings()V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 420
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 421
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 427
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 430
    const-string v5, " "

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 431
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x1040576

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 433
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v5, :cond_0

    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 434
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 435
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 438
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 439
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 440
    .local v2, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 441
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 442
    .local v4, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v4, :cond_1

    .line 443
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 447
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 448
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v5, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v5, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v5, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v5, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v5, :cond_2

    .line 473
    const-string v5, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 478
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v5, :cond_3

    .line 479
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    :cond_3
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 492
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;

    .line 493
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smart_bonding"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNWBoosterObserver:Lcom/android/systemui/statusbar/policy/NetworkController$NWBoosterObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

    const/4 v8, -0x2

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 501
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 507
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 508
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeDuration:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->radioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$2008(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2010(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/policy/NetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingNotification()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z

    return p1
.end method

.method private checkCarrierWifiIcon()V
    .locals 6

    .prologue
    .line 2046
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 2048
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 2049
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 2050
    .local v2, "ssid":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 2052
    .local v1, "networkid":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 2053
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierWifiIcon : getSSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getNetworkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLGTWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2056
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTWifiIcon(I)[[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    .line 2065
    .end local v1    # "networkid":I
    .end local v2    # "ssid":Ljava/lang/String;
    :goto_0
    return-void

    .line 2061
    :cond_0
    const-string v3, "StatusBar.NetworkController"

    const-string v4, "checkCarrierWifiIcon : mWifiManager.getConnectionInfo() == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_1
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    goto :goto_0
.end method

.method private final displaySignalStrength(I)V
    .locals 6
    .param p1, "signalStrength"    # I

    .prologue
    const v5, 0x7f0200e4

    .line 1340
    const/4 v0, -0x1

    .line 1343
    .local v0, "iconLevel":I
    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1346
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    .line 1349
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1353
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1355
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1378
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1379
    .local v1, "iconList":[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1381
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1383
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1385
    return-void

    .line 1350
    .end local v1    # "iconList":[I
    :cond_2
    if-gez v0, :cond_0

    .line 1351
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_0

    .line 1360
    :cond_3
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_5

    .line 1363
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1369
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1371
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1364
    :cond_5
    if-gez v0, :cond_4

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2

    .line 1372
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1373
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1374
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    .prologue
    const v3, 0x7f0200ce

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 4082
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 4083
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 4084
    .local v0, "iconIndex":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 4086
    .local v1, "iconMode":I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 4097
    if-ne v0, v7, :cond_1

    .line 4116
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v2

    .line 4092
    .restart local v0    # "iconIndex":I
    .restart local v1    # "iconMode":I
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4094
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 4100
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    .line 4101
    packed-switch v1, :pswitch_data_0

    .line 4107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 4108
    const-string v2, "STATUSBAR-NetworkController"

    const-string v4, "getCdmaEriIcon() DeviceType == 1"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 4109
    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 4103
    goto :goto_0

    .line 4105
    :pswitch_1
    const v2, 0x7f02012d

    goto :goto_0

    .line 4089
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch

    .line 4101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1329
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 1330
    const/4 v0, 0x0

    .line 1334
    :cond_0
    :goto_0
    return v0

    .line 1331
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z

    if-nez v1, :cond_0

    .line 1332
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDataServiceState()I
    .locals 7

    .prologue
    .line 4908
    const/4 v0, 0x1

    .line 4911
    .local v0, "dataServiceState":I
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataRegState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 4912
    .local v3, "getDataState":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 4913
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4915
    :cond_0
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState : dataServiceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 4925
    .end local v0    # "dataServiceState":I
    .end local v3    # "getDataState":Ljava/lang/reflect/Method;
    .local v1, "dataServiceState":I
    :goto_0
    return v1

    .line 4917
    .end local v1    # "dataServiceState":I
    .restart local v0    # "dataServiceState":I
    :catch_0
    move-exception v2

    .line 4918
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4919
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 4920
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "dataServiceState":I
    :catch_1
    move-exception v2

    .line 4921
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4922
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 4923
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "dataServiceState":I
    :catch_2
    move-exception v2

    .line 4924
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "getDataServiceState : InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4925
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0
.end method

.method private getDataSignalIconId(II)I
    .locals 2
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I

    .prologue
    .line 3028
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3039
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3041
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3030
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3031
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3033
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3034
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3036
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 3037
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3028
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataTypeIconIdForSPR()I
    .locals 4

    .prologue
    .line 3782
    const/4 v0, 0x0

    .line 3783
    .local v0, "dataType":I
    const/4 v1, 0x0

    .line 3785
    .local v1, "dormantDataType":I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3786
    :cond_0
    const v0, 0x7f0200dd

    .line 3787
    const v1, 0x7f0200dc

    .line 3796
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .end local v1    # "dormantDataType":I
    :goto_1
    return v1

    .line 3788
    .restart local v1    # "dormantDataType":I
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 3789
    const v0, 0x7f0200e6

    .line 3790
    const v1, 0x7f0200e5

    goto :goto_0

    .line 3792
    :cond_2
    const v0, 0x7f0200c3

    .line 3793
    const v1, 0x7f0200c1

    goto :goto_0

    :cond_3
    move v1, v0

    .line 3796
    goto :goto_1
.end method

.method private getDimmedLTEBoosterDataTypeIcon()I
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "iconID":I
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 810
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    const-string v2, "ril.lte_wideband"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    const v0, 0x7f02010c

    .line 821
    :goto_0
    return v0

    .line 791
    :pswitch_0
    const v0, 0x7f02010a

    .line 792
    goto :goto_0

    .line 794
    :pswitch_1
    const v0, 0x7f02010d

    .line 795
    goto :goto_0

    .line 797
    :pswitch_2
    const v0, 0x7f020101

    .line 798
    goto :goto_0

    .line 800
    :pswitch_3
    const v0, 0x7f020102

    .line 801
    goto :goto_0

    .line 804
    :pswitch_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v1, :cond_0

    .line 805
    const v0, 0x7f020101

    goto :goto_0

    .line 807
    :cond_0
    const v0, 0x7f020109

    .line 808
    goto :goto_0

    .line 814
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 815
    const v0, 0x7f0200ff

    goto :goto_0

    .line 817
    :cond_2
    const v0, 0x7f020109

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private final getLGTEriIcon(II)I
    .locals 1
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    .line 4140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4141
    const/4 v0, 0x0

    .line 4143
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200e4

    goto :goto_0
.end method

.method private getLGTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 2098
    const v0, 0x7f020156

    .line 2100
    .local v0, "imgId":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 2115
    :goto_0
    return v0

    .line 2102
    :pswitch_0
    const v0, 0x7f020154

    .line 2103
    goto :goto_0

    .line 2105
    :pswitch_1
    const v0, 0x7f020153

    .line 2106
    goto :goto_0

    .line 2108
    :pswitch_2
    const v0, 0x7f020155

    .line 2109
    goto :goto_0

    .line 2111
    :pswitch_3
    const v0, 0x7f020156

    goto :goto_0

    .line 2100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6
    .param p1, "networkid"    # I

    .prologue
    .line 2079
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 2081
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 2082
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2083
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 2084
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-nez v3, :cond_0

    .line 2088
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 2094
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2
    .param p1, "iconLevel"    # I

    .prologue
    .line 3051
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3062
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3064
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 3053
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3054
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3056
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3057
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3059
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 3060
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 3051
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSignalIconList(I)[I
    .locals 2
    .param p1, "inetCondition"    # I

    .prologue
    .line 3004
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 3015
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3017
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 3006
    .end local v0    # "iconList":[I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3007
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3009
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3010
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3012
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 3013
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 3004
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 2885
    if-eqz p1, :cond_0

    .line 2886
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2888
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2893
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2889
    .restart local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2890
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 2893
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private final getRoamingIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 4153
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4154
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "NoService, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    :goto_0
    return-void

    .line 4155
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 4157
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4159
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4161
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4162
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4165
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_7

    .line 4170
    const v0, 0x7f0200e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4172
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconForJPN:Z

    if-eqz v0, :cond_6

    .line 4173
    const v0, 0x7f0200ce

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4176
    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhone.isNetworkRoaming(), DeviceType != 1, mRoamingIconId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4178
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4179
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "Nothing, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 3

    .prologue
    .line 3070
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType() - mDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3075
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3076
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateORGDataNetType()V

    .line 3174
    :goto_0
    return-void

    .line 3078
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3079
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYBDataNetType()V

    goto :goto_0

    .line 3081
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3082
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYADataNetType()V

    goto :goto_0

    .line 3084
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3085
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYCDataNetType()V

    goto :goto_0

    .line 3087
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3088
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOLBDataNetType()V

    goto :goto_0

    .line 3090
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVD2DataNetType()V

    goto :goto_0

    .line 3093
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3094
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVIDDataNetType()V

    goto :goto_0

    .line 3096
    :cond_6
    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3098
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->update4GICONDataNetType()V

    goto :goto_0

    .line 3100
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMHDataNetType()V

    goto :goto_0

    .line 3103
    :cond_9
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updatePCTDataNetType()V

    goto/16 :goto_0

    .line 3106
    :cond_a
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CDR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3108
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->update4GLTEICONDataNetType()V

    goto/16 :goto_0

    .line 3110
    :cond_c
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "CTU"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "TTT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3115
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 3117
    :cond_e
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTFGDataNetType()V

    goto/16 :goto_0

    .line 3120
    :cond_f
    const-string v0, "SFR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSFRDataNetType()V

    goto/16 :goto_0

    .line 3123
    :cond_10
    const-string v0, "LTE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 3129
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    .line 3131
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 3134
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    .line 3137
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateATTDataNetType()V

    goto/16 :goto_0

    .line 3140
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMODataNetType()V

    goto/16 :goto_0

    .line 3143
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVZWDataNetType()V

    goto/16 :goto_0

    .line 3146
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 3149
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateZIGDataNetType()V

    goto/16 :goto_0

    .line 3152
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAIODataNetType()V

    goto/16 :goto_0

    .line 3155
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 3158
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 3161
    :pswitch_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateCUDataNetType()V

    goto/16 :goto_0

    .line 3165
    :pswitch_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateZVVDataNetType()V

    goto/16 :goto_0

    .line 3168
    :pswitch_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateZTMDataNetType()V

    goto/16 :goto_0

    .line 3129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .param p1, "iconIndex"    # I
    .param p2, "iconMode"    # I

    .prologue
    const v0, 0x7f0200ce

    const/4 v1, 0x1

    .line 4120
    if-ne p1, v1, :cond_1

    .line 4121
    const/4 v0, 0x0

    .line 4135
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4123
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 4127
    :pswitch_2
    const v0, 0x7f02012d

    goto :goto_0

    .line 4129
    :pswitch_3
    if-nez p2, :cond_2

    .line 4130
    const v0, 0x7f0200d0

    goto :goto_0

    .line 4131
    :cond_2
    if-ne p2, v1, :cond_0

    .line 4132
    const v0, 0x7f02012e

    goto :goto_0

    .line 4123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1177
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1183
    :pswitch_0
    const/4 v0, 0x1

    .line 1186
    :cond_0
    :pswitch_1
    return v0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 2030
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 2031
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2041
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2035
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2036
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2037
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2038
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 2041
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 4651
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 4652
    const/4 v0, 0x1

    .line 4654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCmccCard()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4994
    const-string v1, ""

    .line 4995
    .local v1, "simNum":Ljava/lang/String;
    const-string v0, ""

    .line 4997
    .local v0, "imsi":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1

    .line 5010
    :cond_0
    :goto_0
    return v2

    .line 5000
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 5002
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_2

    .line 5003
    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5006
    :cond_2
    const-string v3, "46000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "46007"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5007
    :cond_3
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "isCmccCard "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isGsmRoaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3772
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3777
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2068
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2069
    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2075
    :cond_0
    :goto_0
    return v0

    .line 2072
    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5G_U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+zone_5G"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2075
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4887
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSglteMode()Z
    .locals 2

    .prologue
    .line 5014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    .line 5015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getSglteRssiDisplayNum()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSglteMode:I

    .line 5016
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSglteMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5017
    const/4 v0, 0x1

    .line 5020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWCDMA()Z
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private radioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 4931
    packed-switch p1, :pswitch_data_0

    .line 4968
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4933
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 4935
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 4937
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 4939
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 4941
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 4943
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 4946
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 4948
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 4950
    :pswitch_8
    const/4 v0, 0x5

    goto :goto_0

    .line 4952
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_0

    .line 4954
    :pswitch_a
    const/16 v0, 0xc

    goto :goto_0

    .line 4956
    :pswitch_b
    const/16 v0, 0xe

    goto :goto_0

    .line 4958
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 4960
    :pswitch_d
    const/16 v0, 0xf

    goto :goto_0

    .line 4962
    :pswitch_e
    const/16 v0, 0x11

    goto :goto_0

    .line 4964
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 4966
    :pswitch_10
    const/16 v0, 0x12

    goto :goto_0

    .line 4931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    .line 1390
    return-void
.end method

.method private refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 15
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 734
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v3, v0, v1

    .line 735
    .local v3, "nwboosterWifiIconId":I
    const v4, 0x7f020144

    .line 739
    .local v4, "nwboosterDataActivityIconId":I
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    if-eqz v0, :cond_d

    .line 740
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    .line 742
    .local v14, "showBoosterIcon":Z
    :goto_0
    if-eqz v14, :cond_c

    .line 743
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    if-eqz v0, :cond_b

    .line 744
    const/4 v12, 0x0

    .line 745
    .local v12, "nw_data_in":Z
    const/4 v13, 0x0

    .line 747
    .local v13, "nw_data_out":Z
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 748
    :cond_0
    const/4 v12, 0x1

    .line 756
    :cond_1
    :goto_1
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 757
    const v4, 0x7f020143

    .line 766
    :cond_2
    :goto_2
    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 777
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :goto_3
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster - setNWBoosterIndicators(true), showBoosterIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .end local v14    # "showBoosterIcon":Z
    :goto_4
    return-void

    .line 740
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 749
    .restart local v12    # "nw_data_in":Z
    .restart local v13    # "nw_data_out":Z
    .restart local v14    # "showBoosterIcon":Z
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 750
    :cond_5
    const/4 v13, 0x1

    goto :goto_1

    .line 751
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 752
    :cond_7
    const/4 v12, 0x1

    .line 753
    const/4 v13, 0x1

    goto :goto_1

    .line 758
    :cond_8
    if-eqz v12, :cond_9

    if-nez v13, :cond_9

    .line 759
    const v4, 0x7f020142

    goto :goto_2

    .line 760
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_a

    .line 761
    const v4, 0x7f020145

    goto :goto_2

    .line 762
    :cond_a
    if-nez v12, :cond_2

    if-nez v13, :cond_2

    .line 763
    const v4, 0x7f020144

    goto :goto_2

    .line 769
    .end local v12    # "nw_data_in":Z
    .end local v13    # "nw_data_out":Z
    :cond_b
    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v8, v0, v1

    const v9, 0x7f020143

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    goto :goto_3

    .line 774
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 775
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "refreshSignalCluster - setNWBoosterIndicators(false)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 780
    .end local v14    # "showBoosterIcon":Z
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setNWBoosterIndicators(ZZIIILjava/lang/String;)V

    .line 781
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "refreshSignalCluster - setNWBoosterIndicators(false)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private refreshOperatorLogoView()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4801
    const-string v0, "ORANGE"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4802
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 4803
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4805
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 4806
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4808
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4809
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    .line 4847
    :cond_0
    :goto_0
    return-void

    .line 4810
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 4811
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4813
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4814
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4817
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4819
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4820
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4825
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 4826
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 4829
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4831
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4832
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4833
    :cond_4
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 4834
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4836
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4837
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0

    .line 4839
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4841
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4842
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto/16 :goto_0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1925
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    .line 1926
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    .line 1927
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    .line 1928
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    .line 1929
    return-void
.end method

.method private shouldDisplayThreeGeesForSPR()Z
    .locals 2

    .prologue
    .line 4973
    const/4 v0, 0x0

    .line 4974
    .local v0, "result":Z
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 4990
    :goto_0
    :pswitch_0
    return v0

    .line 4987
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4974
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private shouldShowPermanentDataIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4861
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 4863
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4870
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v1, :cond_1

    .line 4877
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4873
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final update4GICONDataNetType()V
    .locals 2

    .prologue
    .line 4537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4542
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 4543
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4544
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4545
    const v0, 0x7f0200ff

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4546
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4548
    :cond_0
    return-void
.end method

.method private final update4GLTEICONDataNetType()V
    .locals 2

    .prologue
    .line 4589
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4595
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4596
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4597
    const v0, 0x7f0200c9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4598
    const v0, 0x7f02010b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4599
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4601
    :cond_0
    return-void
.end method

.method private final updateAIODataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0b0083

    const v3, 0x7f02010e

    const/4 v2, 0x0

    .line 3350
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3394
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3395
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3396
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3401
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3402
    return-void

    .line 3352
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3353
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3354
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3359
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3360
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3361
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3370
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3371
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3372
    const v0, 0x7f0200ff

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3377
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3378
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3379
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3384
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3385
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3386
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateATTDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0b0083

    const v4, 0x7f02010e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3235
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    .line 3236
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3282
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3283
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3284
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3289
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3290
    return-void

    .line 3238
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3239
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3240
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3241
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3245
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3246
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3247
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3256
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3257
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3258
    const v0, 0x7f020100

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3261
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 3264
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3265
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3266
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3269
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 3272
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3273
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3274
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 1195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 1197
    return-void

    :cond_0
    move v0, v1

    .line 1191
    goto :goto_0
.end method

.method private final updateCMCCDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0b0087

    const v3, 0x7f0200d8

    const v2, 0x7f0200d4

    .line 3177
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3179
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3218
    :goto_0
    :pswitch_0
    return-void

    .line 3186
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsCmccCard:Z

    if-eqz v0, :cond_0

    .line 3187
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3189
    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3190
    const v0, 0x7f0200fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3191
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3198
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3193
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3194
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3195
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3196
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_1

    .line 3202
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsCmccCard:Z

    if-eqz v0, :cond_1

    .line 3203
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType() : Cmcc"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3205
    const v0, 0x7f0200c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3206
    const v0, 0x7f0200fd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3207
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3214
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3209
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3210
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3211
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3212
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_2

    .line 3181
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateCUDataNetType()V
    .locals 2

    .prologue
    .line 3221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3223
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateCUDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3231
    :goto_0
    return-void

    .line 3227
    :pswitch_0
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3228
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 3225
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2171
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2173
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2176
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 2177
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v3, :cond_3

    .line 2178
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 2179
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 2185
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2196
    .local v1, "connectionStatus":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    .line 2197
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 2200
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 2201
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 2213
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    .line 2217
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_1

    .line 2218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    .line 2222
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 2223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 2224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 2225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 2226
    return-void

    .end local v1    # "connectionStatus":I
    :cond_2
    move v3, v5

    .line 2176
    goto :goto_0

    .line 2181
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 2182
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 2205
    .restart local v1    # "connectionStatus":I
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v3, :cond_5

    .line 2206
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 2208
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method private final updateDataIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1697
    const/4 v1, 0x1

    .line 1700
    .local v1, "visible":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_c

    .line 1703
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_9

    .line 1704
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v4, :cond_8

    .line 1705
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v2, :pswitch_data_0

    .line 1716
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v5

    .line 1719
    .local v0, "iconId":I
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 1725
    :goto_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v2, :cond_2

    .line 1726
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v7, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 1730
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v5

    .line 1731
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 1732
    const/4 v1, 0x1

    .line 1736
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->shouldShowPermanentDataIcon()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1738
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_3

    .line 1739
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1741
    :cond_3
    const/4 v0, 0x0

    .line 1742
    const/4 v1, 0x1

    .line 1747
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v4, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v2, :cond_6

    .line 1750
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1751
    const/4 v0, 0x0

    .line 1752
    const/4 v1, 0x1

    .line 1753
    const-string v2, "STATUSBAR-NetworkController"

    const-string v3, "CDMA_LTE : disabled icon displayed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    .line 1814
    :cond_7
    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 1815
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 1816
    return-void

    .line 1707
    .end local v0    # "iconId":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v6

    .line 1708
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 1710
    .end local v0    # "iconId":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v4

    .line 1711
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 1713
    .end local v0    # "iconId":I
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v7

    .line 1714
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 1721
    .end local v0    # "iconId":I
    :cond_8
    const/4 v0, 0x0

    .line 1722
    .restart local v0    # "iconId":I
    const/4 v1, 0x0

    goto :goto_1

    .line 1758
    .end local v0    # "iconId":I
    :cond_9
    const v0, 0x7f020124

    .line 1759
    .restart local v0    # "iconId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v2, :cond_b

    .line 1760
    const v0, 0x7f020127

    .line 1764
    :cond_a
    :goto_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1761
    :cond_b
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAttSimIcon:Z

    if-eqz v2, :cond_a

    .line 1762
    const v0, 0x7f020125

    goto :goto_4

    .line 1774
    .end local v0    # "iconId":I
    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v4, :cond_f

    .line 1775
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v2, :pswitch_data_1

    .line 1787
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v5

    .line 1796
    .restart local v0    # "iconId":I
    :goto_5
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v4, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-nez v2, :cond_d

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v2, :cond_e

    .line 1799
    :cond_d
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1800
    const/4 v0, 0x0

    .line 1801
    const/4 v1, 0x1

    .line 1802
    const-string v2, "STATUSBAR-NetworkController"

    const-string v3, "CDMA : disabled icon displayed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1808
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isCdmaLTE - mSimState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    goto :goto_3

    .line 1777
    .end local v0    # "iconId":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v6

    .line 1778
    .restart local v0    # "iconId":I
    goto :goto_5

    .line 1780
    .end local v0    # "iconId":I
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v4

    .line 1781
    .restart local v0    # "iconId":I
    goto :goto_5

    .line 1783
    .end local v0    # "iconId":I
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v7

    .line 1784
    .restart local v0    # "iconId":I
    goto :goto_5

    .line 1791
    .end local v0    # "iconId":I
    :cond_f
    const/4 v0, 0x0

    .line 1792
    .restart local v0    # "iconId":I
    const/4 v1, 0x0

    goto :goto_5

    .line 1705
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1775
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0200c5

    const v6, 0x7f0200be

    const v5, 0x7f0b0086

    const v4, 0x7f0200fc

    const v3, 0x7f0200c0

    .line 1514
    const-string v1, "STATUSBAR-NetworkController"

    const-string v2, "updateDataNetType()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_0

    .line 1517
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1518
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1519
    const v1, 0x7f0200ff

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1520
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1675
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 1677
    return-void

    .line 1523
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 1657
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_a

    .line 1658
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1659
    const v1, 0x7f0200db

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1660
    const v1, 0x7f020106

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1661
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1525
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_1

    .line 1526
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1527
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1528
    const v1, 0x7f02010e

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1529
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1536
    :cond_1
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_2

    .line 1537
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1538
    const v1, 0x7f0200da

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1539
    const v1, 0x7f020105

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1540
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1547
    :cond_2
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1548
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1549
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1550
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1556
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_3

    .line 1557
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1558
    const v1, 0x7f0200de

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1559
    const v1, 0x7f020107

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1560
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1563
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1564
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1565
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1566
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1573
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_4

    .line 1574
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1575
    const v1, 0x7f0200df

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1576
    const v1, 0x7f020108

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1577
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1580
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1581
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1582
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1583
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1590
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_5

    .line 1592
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1593
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1594
    const v1, 0x7f0200fa

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1595
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1602
    :cond_5
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne v1, v2, :cond_6

    .line 1603
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1604
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1605
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1606
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1609
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_7

    .line 1610
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1611
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1612
    const v1, 0x7f0200fa

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1613
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1623
    :cond_7
    :pswitch_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1624
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1625
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1626
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1630
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1632
    .local v0, "show4GforLTE":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v1, :cond_8

    const-string v1, "1"

    const-string v2, "ril.lte_wideband"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1633
    const-string v1, "STATUSBAR-NetworkController"

    const-string v2, "LTE_WIDE_BAND!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1635
    const v1, 0x7f0200e2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1636
    const v1, 0x7f02010c

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1637
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1641
    :cond_8
    if-eqz v0, :cond_9

    .line 1642
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1643
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1644
    const v1, 0x7f0200ff

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1645
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1648
    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1649
    const v1, 0x7f0200e0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1650
    const v1, 0x7f020109

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1651
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1664
    .end local v0    # "show4GforLTE":Z
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1665
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1666
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 1667
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateLTEICONDataNetType()V
    .locals 2

    .prologue
    .line 4604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4609
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4610
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4611
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4612
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4613
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4615
    :cond_0
    return-void
.end method

.method private updateNoSIMNotification()V
    .locals 8

    .prologue
    const/16 v7, 0x111

    .line 4662
    const-string v4, "ro.config.donot_nosim"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4663
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "do not show no sim notifiation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    :cond_0
    :goto_0
    return-void

    .line 4667
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v4, :cond_0

    .line 4671
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_2

    .line 4672
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 4675
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4679
    .local v1, "res":Landroid/content/res/Resources;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v4, :cond_4

    .line 4680
    const v4, 0x7f0b0169

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4684
    .local v3, "title":Ljava/lang/String;
    :goto_1
    const v4, 0x7f0b016a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4686
    .local v2, "text":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f020124

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4694
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v4, :cond_5

    .line 4695
    const v4, 0x7f020127

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4700
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 4682
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0b0168

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_1

    .line 4696
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    .restart local v2    # "text":Ljava/lang/String;
    :cond_5
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAttSimIcon:Z

    if-eqz v4, :cond_3

    .line 4697
    const v4, 0x7f020125

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private final updateOLBDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0b0087

    const v4, 0x7f020108

    const v3, 0x7f0200df

    .line 4416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4418
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4421
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4422
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4423
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4428
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 4429
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 4430
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4431
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4432
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4443
    :cond_1
    :goto_0
    return-void

    .line 4436
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4437
    const v0, 0x7f0200c0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4438
    const v0, 0x7f0200fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4439
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f020108

    const v6, 0x7f0200fc

    const v5, 0x7f0200df

    const v4, 0x7f0200c0

    const v3, 0x7f0b0087

    .line 4186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4188
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 4193
    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4195
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 4196
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4197
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4198
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4218
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4219
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4221
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 4222
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4223
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4224
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4243
    :cond_4
    :goto_1
    return-void

    .line 4202
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4203
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4204
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4209
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4210
    const v0, 0x7f0200c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4211
    const v0, 0x7f0200fd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4228
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4229
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4230
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 4235
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4236
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4237
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYADataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0200ff

    const v6, 0x7f0200c5

    const v5, 0x7f0b0086

    const v4, 0x7f0200fc

    const v3, 0x7f0200c0

    .line 4300
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    .line 4303
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4304
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4305
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4310
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4311
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4312
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4313
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4314
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4318
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4322
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4323
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4324
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4325
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4345
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4346
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4347
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4348
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4349
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4350
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4368
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 4369
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4370
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4371
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4377
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 4378
    return-void

    .line 4329
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 4330
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4331
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4332
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4336
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4337
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4338
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4353
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 4354
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4355
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4356
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 4360
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4361
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4362
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4363
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private final updateOYBDataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0b0088

    const v4, 0x7f0200ff

    const v3, 0x7f0200c5

    .line 4247
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    .line 4250
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4251
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4252
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4257
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4258
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4259
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4260
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4265
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4269
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4270
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4271
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4277
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 4278
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4279
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4280
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4286
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 4287
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4288
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4289
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4295
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 4296
    return-void
.end method

.method private final updateOYCDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0b0087

    .line 4381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4413
    :cond_0
    :goto_0
    return-void

    .line 4385
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYCDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 4391
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 4392
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4393
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4394
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4406
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4407
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4408
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4409
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4398
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4399
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4400
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updatePCTDataNetType()V
    .locals 2

    .prologue
    .line 4566
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4572
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 4576
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4577
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4578
    const v0, 0x7f0200ff

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4586
    :cond_1
    :goto_0
    return-void

    .line 4580
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4581
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4582
    const v0, 0x7f0200c9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4583
    const v0, 0x7f02010b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRoamingNotification()V
    .locals 11

    .prologue
    const/16 v10, 0x222

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 4710
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "data_roaming"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    .line 4712
    const-string v5, "STATUSBAR-NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataRoamingTypeForVZW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const v8, 0x7f0200d0

    if-eq v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    if-nez v5, :cond_3

    .line 4717
    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    if-eqz v5, :cond_1

    .line 4718
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v5, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4720
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    .line 4762
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v7

    .line 4710
    goto :goto_0

    .line 4723
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4724
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0b01c9

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4726
    .local v4, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4727
    .local v1, "currentRoamingType":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    if-eqz v5, :cond_6

    .line 4728
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    if-nez v5, :cond_5

    .line 4729
    :cond_4
    const v5, 0x7f0b01cb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4730
    .local v3, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4744
    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    if-eq v5, v1, :cond_1

    .line 4745
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x7f020088

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4754
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4757
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    goto :goto_1

    .line 4732
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "text":Ljava/lang/String;
    :cond_5
    const v5, 0x7f0b01ca

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4733
    .restart local v3    # "text":Ljava/lang/String;
    const/4 v1, 0x2

    goto :goto_2

    .line 4736
    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    if-eqz v5, :cond_7

    .line 4737
    const v5, 0x7f0b01cc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4738
    .restart local v3    # "text":Ljava/lang/String;
    const/4 v1, 0x3

    goto :goto_2

    .line 4740
    .end local v3    # "text":Ljava/lang/String;
    :cond_7
    const-string v3, "No Notification"

    .line 4741
    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private final updateSFRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0200fb

    const v5, 0x7f0200c2

    const v4, 0x7f0200c0

    const v3, 0x7f0200bf

    const v2, 0x7f0b0087

    .line 4014
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4015
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v0, :cond_1

    .line 4016
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    sparse-switch v0, :sswitch_data_0

    .line 4078
    :cond_1
    :goto_0
    return-void

    .line 4018
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4019
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4020
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4021
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4026
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 4027
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4028
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4029
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4038
    :cond_2
    :sswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DC:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4039
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4040
    const v0, 0x7f020104

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4041
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4047
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 4048
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4049
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4050
    const v0, 0x7f0200fd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4051
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 4054
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4055
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4056
    const v0, 0x7f0200fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4057
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4062
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 4063
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4064
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4065
    const v0, 0x7f0200fd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4066
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4069
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4070
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4071
    const v0, 0x7f0200fc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4072
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4016
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xf -> :sswitch_4
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020106

    const v5, 0x7f0200c0

    const v4, 0x7f0b0086

    const v3, 0x7f0200c3

    const v2, 0x7f0200fc

    .line 3807
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 3810
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_0

    .line 3811
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3812
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3813
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3819
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4009
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 4010
    return-void

    .line 3815
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3816
    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3817
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_0

    .line 3822
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3986
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_e

    .line 3987
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3988
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3989
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 3824
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_2

    .line 3825
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3829
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3830
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 3827
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_2

    .line 3836
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_3

    .line 3837
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3838
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3839
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3845
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3841
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3842
    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3843
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_3

    .line 3849
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_4

    .line 3850
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3851
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3852
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3858
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3854
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3855
    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3856
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_4

    .line 3863
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_5

    .line 3864
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3865
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3866
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3872
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3868
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3869
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3870
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_5

    .line 3878
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 3879
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_6

    .line 3880
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3881
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3882
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3888
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3884
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3885
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3886
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_6

    .line 3891
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_8

    .line 3892
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3893
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3894
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3900
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3896
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3897
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3898
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_7

    .line 3907
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_a

    .line 3908
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_9

    .line 3909
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3910
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3911
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3917
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3913
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3914
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3915
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_8

    .line 3920
    :cond_a
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_b

    .line 3921
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3922
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3923
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3929
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3925
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3926
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3927
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_9

    .line 3960
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_c

    .line 3961
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3962
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3963
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3969
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3965
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3966
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3967
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_a

    .line 3973
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_d

    .line 3974
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3975
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3976
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3982
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3978
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3979
    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3980
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    goto :goto_b

    .line 3993
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3994
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3995
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3996
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3822
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1101
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1102
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1105
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    .local v0, "absentReason":Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1110
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PERM_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    .end local v0    # "absentReason":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 1161
    return-void

    .line 1112
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1113
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:ABSENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1117
    .end local v0    # "absentReason":Ljava/lang/String;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1118
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1119
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:READY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1121
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1122
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1125
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1126
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PIN_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1128
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1129
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1130
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PUK_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1140
    :cond_4
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "NETWORK_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_1
    :try_start_1
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "PERSO_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1151
    :goto_2
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:NETWORK_LOCKED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1141
    :catch_0
    move-exception v1

    .line 1142
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: NETWORK_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1146
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1147
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: PERSO_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1154
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "lockedReason":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1155
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:UNKNOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    .prologue
    .line 4786
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    .line 4790
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    .line 4793
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    .line 4796
    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 4618
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4624
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 4641
    :cond_0
    :goto_0
    return-void

    .line 4627
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4632
    .local v0, "NetworkSubstring":Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 4633
    const-string v1, "334"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "716"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "734"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "704"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "706"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4634
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4635
    const v1, 0x7f0200e0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4636
    const v1, 0x7f020109

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4637
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMHDataNetType()V
    .locals 2

    .prologue
    .line 4551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4557
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4558
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4559
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4560
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4561
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4563
    :cond_0
    return-void
.end method

.method private final updateTMODataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f02010e

    const v4, 0x7f0200fe

    const v3, 0x7f0200c4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3405
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 3406
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3470
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3471
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3472
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3477
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3478
    return-void

    .line 3408
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3409
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3410
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3411
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3415
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3416
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3417
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3418
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3426
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 3427
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3429
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3430
    const v0, 0x7f0200cc

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3431
    const v0, 0x7f020103

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3435
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3436
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3437
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3443
    :pswitch_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 3444
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3446
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3447
    const v0, 0x7f0200e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3448
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3452
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3453
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3454
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3455
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3460
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3461
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3462
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 6

    .prologue
    const v5, 0x7f020297

    const v4, 0x7f020141

    .line 1394
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_2

    .line 1395
    const-string v3, "STATUSBAR-NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    if-eqz v3, :cond_1

    .line 1401
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    .line 1511
    :goto_0
    return-void

    .line 1404
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    .line 1405
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1412
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-eqz v3, :cond_5

    .line 1418
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_4

    .line 1420
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1421
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1434
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1435
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1440
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_9

    .line 1448
    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v3, :cond_8

    .line 1450
    :cond_7
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1451
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1453
    :cond_8
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1454
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1455
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 1461
    :cond_9
    const/4 v2, 0x0

    .line 1463
    .local v2, "psIconLevel":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_b

    .line 1464
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1485
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v3, :cond_c

    .line 1486
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too high"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1494
    :cond_a
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1497
    .local v1, "iconList":[I
    aget v3, v1, v0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1501
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1506
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_0

    .line 1480
    .end local v0    # "iconLevel":I
    .end local v1    # "iconList":[I
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    .line 1489
    :cond_c
    if-gez v0, :cond_a

    .line 1490
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too small"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2
.end method

.method private final updateVD2DataNetType()V
    .locals 3

    .prologue
    .line 4446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4448
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 4451
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4452
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4453
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4457
    :cond_0
    return-void
.end method

.method private final updateVIDDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0b0086

    const v6, 0x7f0200ff

    const v5, 0x7f0200fc

    const v4, 0x7f0200c5

    const v3, 0x7f0200c0

    .line 4460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 4462
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4470
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4471
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4472
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4473
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4484
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 4487
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4492
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4493
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4494
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4495
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4506
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 4507
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4512
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4513
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4514
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4527
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 4528
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4529
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4530
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 4534
    :cond_7
    return-void

    .line 4476
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4477
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4478
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 4498
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4499
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4500
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 4518
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 4519
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4520
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 4521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2
.end method

.method private final updateVZWDataNetType()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0b0086

    const v4, 0x7f0200fc

    const v3, 0x7f0200d4

    const v2, 0x7f0200c0

    .line 3484
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3598
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 3599
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3600
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3601
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3602
    const v0, 0x7f0200d7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3603
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3617
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3618
    return-void

    .line 3486
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_0

    .line 3487
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3488
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3489
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3490
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3491
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3498
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 3499
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3500
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3501
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3502
    const v0, 0x7f0200d6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3503
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3510
    :cond_1
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3511
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3512
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3513
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3520
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 3521
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3522
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3523
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3524
    const v0, 0x7f0200d8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3525
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3528
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3529
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3530
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3531
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3537
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 3538
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3539
    const v0, 0x7f0200df

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3540
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3541
    const v0, 0x7f0200d9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3545
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3546
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3547
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3548
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3555
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    .line 3556
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3557
    const v0, 0x7f0200be

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3558
    const v0, 0x7f0200fa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3559
    const v0, 0x7f0200d3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3560
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3567
    :cond_4
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 3568
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3569
    const v0, 0x7f0200be

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3570
    const v0, 0x7f0200fa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3571
    const v0, 0x7f0200d3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3572
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3582
    :cond_5
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3583
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3584
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3585
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3590
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3591
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3592
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3593
    const v0, 0x7f0200d5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3606
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3607
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3608
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3609
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3610
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2002
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v1, :cond_2

    .line 2003
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 2004
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v0, :cond_0

    .line 2005
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 2009
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v0, :cond_1

    .line 2010
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    if-eqz v0, :cond_1

    .line 2011
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 2017
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 2027
    :goto_0
    return-void

    .line 2020
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_3

    .line 2021
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 2025
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 2023
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v1, :cond_4

    const v0, 0x7f020169

    :cond_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_1
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1962
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1963
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1964
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 1998
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 1999
    return-void

    :cond_1
    move v4, v5

    .line 1964
    goto :goto_0

    .line 1967
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1968
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1970
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 1971
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 1973
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 1975
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1976
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 1977
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1979
    :cond_3
    if-eqz v1, :cond_5

    .line 1980
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 1985
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    .line 1986
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 1971
    goto :goto_2

    .line 1982
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 1989
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 1990
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1992
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1993
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 1994
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 2147
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 2148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 2149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 2150
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 2153
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 2162
    :goto_1
    return-void

    .line 2152
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 2156
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 2157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 2160
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2121
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2122
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 2123
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2124
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2126
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 2141
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    .line 2143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 2144
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 2126
    goto :goto_0

    .line 2128
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2129
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 2130
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2131
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 2133
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 2136
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 2138
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 2136
    goto :goto_2

    :cond_5
    move v3, v4

    .line 2138
    goto :goto_3
.end method

.method private final updateZIGDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0b0083

    const v3, 0x7f020106

    const/4 v2, 0x0

    .line 3294
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3338
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3339
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3340
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3345
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3346
    return-void

    .line 3296
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3297
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3298
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3303
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3304
    const v0, 0x7f0200da

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3305
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b008c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3314
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3315
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3316
    const v0, 0x7f0200ff

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3321
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3322
    const v0, 0x7f0200e0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3323
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3328
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3329
    const v0, 0x7f0200db

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3330
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 3331
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateZTMDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f0200e7

    .line 3705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 3706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3709
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3711
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateZTMDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3761
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 3762
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3768
    :goto_0
    return-void

    .line 3715
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 3716
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3722
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 3723
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3729
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3734
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 3735
    const v0, 0x7f0200eb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3737
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3742
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 3743
    const v0, 0x7f0200ec

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3745
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3753
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3757
    :pswitch_7
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3764
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateZVVDataNetType()V
    .locals 3

    .prologue
    const v2, 0x7f0200e7

    .line 3631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 3632
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3635
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3637
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateZVVDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3687
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 3688
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3694
    :goto_0
    return-void

    .line 3641
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 3642
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3648
    :cond_1
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 3649
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3655
    :cond_2
    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3660
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 3661
    const v0, 0x7f0200eb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3663
    :cond_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3668
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 3669
    const v0, 0x7f0200ec

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3671
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3679
    :pswitch_6
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3683
    :pswitch_7
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3690
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_0

    .line 3639
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    .line 545
    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    .line 541
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 552
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 2905
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-nez v11, :cond_1

    const-string v11, "enter"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2906
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    .line 2907
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    .line 2908
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    .line 2909
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    .line 2910
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    .line 2987
    :cond_0
    return-void

    .line 2911
    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v11, :cond_2

    const-string v11, "exit"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2912
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    .line 2913
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2914
    .local v1, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_0

    .line 2916
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v11, :cond_0

    const-string v11, "network"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2917
    const-string v11, "airplane"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2918
    .local v0, "airplane":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2919
    const-string v11, "show"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2920
    .local v9, "show":Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2921
    .restart local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const v11, 0x7f020138

    invoke-interface {v1, v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_1

    .line 2924
    .end local v1    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "show":Z
    :cond_3
    const-string v11, "fully"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2925
    .local v3, "fully":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2926
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    .line 2928
    :cond_4
    const-string v11, "wifi"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2929
    .local v10, "wifi":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 2930
    const-string v11, "show"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2931
    .restart local v9    # "show":Z
    const-string v11, "level"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2932
    .local v7, "level":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 2933
    const-string v11, "null"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, -0x1

    :goto_3
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    .line 2936
    :cond_5
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    if-gez v11, :cond_8

    const v5, 0x7f020169

    .line 2938
    .local v5, "iconId":I
    :goto_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    goto :goto_5

    .line 2926
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "iconId":I
    .end local v7    # "level":Ljava/lang/String;
    .end local v9    # "show":Z
    .end local v10    # "wifi":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2933
    .restart local v7    # "level":Ljava/lang/String;
    .restart local v9    # "show":Z
    .restart local v10    # "wifi":Ljava/lang/String;
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget v12, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_3

    .line 2936
    :cond_8
    sget-object v11, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    aget-object v11, v11, v12

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    aget v5, v11, v12

    goto :goto_4

    .line 2945
    .end local v7    # "level":Ljava/lang/String;
    .end local v9    # "show":Z
    :cond_9
    const-string v11, "mobile"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2946
    .local v8, "mobile":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2947
    const-string v11, "show"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2948
    .restart local v9    # "show":Z
    const-string v11, "datatype"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2949
    .local v2, "datatype":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 2950
    const-string v11, "1x"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f0200be

    :goto_6
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    .line 2969
    :cond_a
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 2970
    .local v6, "icons":[[I
    const-string v11, "level"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2971
    .restart local v7    # "level":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 2972
    const-string v11, "null"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, -0x1

    :goto_7
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    .line 2975
    :cond_b
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    if-gez v11, :cond_15

    const v5, 0x7f020141

    .line 2977
    .restart local v5    # "iconId":I
    :goto_8
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    goto :goto_9

    .line 2950
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "iconId":I
    .end local v6    # "icons":[[I
    .end local v7    # "level":Ljava/lang/String;
    :cond_c
    const-string v11, "3g"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const v11, 0x7f0200c0

    goto :goto_6

    :cond_d
    const-string v11, "4g"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const v11, 0x7f0200c5

    goto :goto_6

    :cond_e
    const-string v11, "e"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const v11, 0x7f0200da

    goto :goto_6

    :cond_f
    const-string v11, "g"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const v11, 0x7f0200db

    goto :goto_6

    :cond_10
    const-string v11, "h"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const v11, 0x7f0200de

    goto :goto_6

    :cond_11
    const-string v11, "lte"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const v11, 0x7f0200e0

    goto :goto_6

    :cond_12
    const-string v11, "roam"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    const v11, 0x7f0200e4

    goto/16 :goto_6

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 2972
    .restart local v6    # "icons":[[I
    .restart local v7    # "level":Ljava/lang/String;
    :cond_14
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    aget-object v12, v6, v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_7

    .line 2975
    :cond_15
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    aget-object v11, v6, v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    aget v5, v11, v12

    goto/16 :goto_8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2757
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2758
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2764
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2765
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2766
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2767
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2768
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2769
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2770
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2771
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2772
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2773
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2775
    const-string v0, "  mEmgcCallState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2776
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2778
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2779
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2780
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2781
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2782
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2783
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2784
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2785
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2788
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2789
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2790
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2791
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2792
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2797
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2799
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2800
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2801
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2803
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2804
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2805
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2807
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2808
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2809
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2811
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2812
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2813
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2818
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2820
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2821
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2822
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2823
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2824
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2829
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2831
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 2832
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2834
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2835
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2836
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2837
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2838
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2839
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2848
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2850
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2852
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2854
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2856
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2857
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2858
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2860
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2861
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2862
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2864
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2865
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2866
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2868
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2869
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2870
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2872
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2873
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2874
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2876
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2878
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2880
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    return-void

    .line 2758
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1681
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 1683
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1684
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 1685
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1686
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1692
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x7f0200e2

    const v3, 0x7f0200e0

    const/4 v5, 0x1

    const v2, 0x1040576

    const/4 v10, 0x0

    .line 830
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 831
    .local v7, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 834
    :cond_0
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - RSSI_CHANGED_ACTION, WIFI_STATE, NETWORK_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 836
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 969
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 840
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCmccCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsCmccCard:Z

    .line 841
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - ACTION_SIM_STATE_CHANGED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsCmccCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 844
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 845
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - SPN_STRINGS_UPDATED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 848
    .local v9, "plmn":Ljava/lang/String;
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    .line 849
    const-string v0, "TW_TAG"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 851
    const/4 v9, 0x0

    .line 855
    :cond_4
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 861
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 867
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 869
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 870
    .end local v9    # "plmn":Ljava/lang/String;
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 872
    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - CONNECTIVITY_ACTION, INET_CONDITION_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 875
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 876
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_8

    .line 878
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 890
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshLocale()V

    .line 891
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 881
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 882
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_1

    .line 885
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_1

    .line 893
    :cond_a
    const-string v0, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 894
    const-string v0, "ril.lte_wideband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 895
    .local v8, "currentBandwidth":Ljava/lang/String;
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - LTE_WIDEBAND_INFO :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 898
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v1, 0x7f0200c5

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-ne v0, v3, :cond_1

    .line 899
    :cond_b
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "LTE_WIDEBAND_INFO - Change to LTE+ !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 901
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 902
    const v0, 0x7f02010c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 903
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 906
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-ne v0, v4, :cond_1

    .line 907
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "LTE_WIDEBAND_INFO - Change to LTE !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 909
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 910
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    .line 911
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 915
    .end local v8    # "currentBandwidth":Ljava/lang/String;
    :cond_d
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 916
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshLocale()V

    .line 918
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 920
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 922
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 923
    :cond_e
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 926
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 928
    :cond_10
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 930
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    .line 932
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_11

    .line 933
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 935
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 936
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 939
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 945
    :cond_13
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const v1, 0x104059b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 947
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 948
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 952
    :cond_15
    const-string v0, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 953
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "START_NETWORK_BOOSTER - mNwboosterRilEnabled:true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 956
    :cond_16
    const-string v0, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 957
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "STOP_NETWORK_BOOSTER - mNwboosterRilEnabled:false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    .line 959
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 963
    :cond_17
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 965
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 10
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    const v5, 0x7f020126

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 730
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 561
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setRoamingIcon(I)V

    .line 562
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_7

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 567
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DATA_SUSPENDED : "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 610
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_e

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 624
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_3

    .line 626
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 627
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 704
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_10

    .line 706
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_f

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    .line 725
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    if-eqz v0, :cond_12

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_5
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto/16 :goto_0

    .line 571
    :cond_6
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: else : "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_1

    .line 576
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForJPN:Z

    if-eqz v0, :cond_a

    .line 578
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_9

    .line 580
    invoke-interface {p1, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 587
    :goto_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    goto/16 :goto_1

    .line 584
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_6

    .line 591
    :cond_a
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 593
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    .line 596
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v0, :cond_c

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_d

    :cond_b
    move v0, v1

    :goto_7
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setHasService(Z)V

    .line 602
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v0, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->shouldShowPermanentDataIcon()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setHasService(Z)V

    goto/16 :goto_1

    :cond_d
    move v0, v9

    .line 597
    goto :goto_7

    :cond_e
    move v0, v9

    .line 610
    goto/16 :goto_2

    .line 706
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_3

    .line 715
    :cond_10
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_11

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_8
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_8

    :cond_12
    move v1, v9

    .line 725
    goto/16 :goto_5
.end method

.method refreshViews()V
    .locals 20

    .prologue
    .line 2231
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 2233
    .local v7, "context":Landroid/content/Context;
    const/4 v6, 0x0

    .line 2234
    .local v6, "combinedSignalIconId":I
    const/4 v4, 0x0

    .line 2235
    .local v4, "combinedActivityIconId":I
    const-string v5, ""

    .line 2236
    .local v5, "combinedLabel":Ljava/lang/String;
    const-string v16, ""

    .line 2237
    .local v16, "wifiLabel":Ljava/lang/String;
    const-string v13, ""

    .line 2239
    .local v13, "mobileLabel":Ljava/lang/String;
    const-string v12, ""

    .line 2242
    .local v12, "mATTmobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v8

    .line 2244
    .local v8, "emergencyOnly":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_1a

    .line 2245
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2246
    const-string v13, ""

    .line 2391
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2c

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_29

    .line 2393
    const v17, 0x7f0b00b3

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2394
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 2432
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 2433
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_2b

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_2b

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 2436
    .local v14, "serviceState":I
    if-eqz v14, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v14, :cond_2

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v14, :cond_3

    .line 2442
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2448
    .end local v14    # "serviceState":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2458
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b002d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2460
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b008f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2464
    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "mBluetoothTethered: mDataTypeIconId is BT tether icon"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2467
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2468
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2471
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    const/4 v9, 0x1

    .line 2472
    .local v9, "ethernetConnected":Z
    :goto_4
    if-eqz v9, :cond_5

    .line 2473
    const v17, 0x7f0b00c2

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2476
    :cond_5
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    move/from16 v17, v0

    if-eqz v17, :cond_33

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-nez v17, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v17

    if-nez v17, :cond_33

    .line 2485
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0b0090

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2487
    const v17, 0x7f020138

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 2488
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2491
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2f

    .line 2495
    const-string v13, ""

    .line 2551
    :cond_8
    :goto_5
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    const v18, 0x7f020297

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2552
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2557
    :cond_a
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    if-eqz v17, :cond_b

    .line 2558
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingNotification()V

    .line 2586
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v4, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterRilEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    .line 2612
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    .line 2613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 2616
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 2621
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 2622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    .line 2627
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 2628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterDataTypeIconId:I

    .line 2630
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 2631
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterSettingEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterSettingEnabled:Z

    .line 2633
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterRilEnabled:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 2634
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNwboosterRilEnabled:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastNwboosterRilEnabled:Z

    .line 2639
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 2640
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 2655
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    .line 2656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 2660
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 2661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 2665
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    .line 2666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 2669
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v6, :cond_17

    .line 2670
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 2674
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 2675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 2679
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v4, :cond_19

    .line 2680
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 2684
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_39

    .line 2685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2686
    .local v2, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    if-ge v10, v2, :cond_39

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2688
    .local v15, "v":Landroid/widget/TextView;
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2689
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 2686
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 2263
    .end local v2    # "N":I
    .end local v9    # "ethernetConnected":Z
    .end local v10    # "i":I
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2267
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v17, :cond_1b

    .line 2268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 2274
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_27

    .line 2275
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2277
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    move/from16 v17, v0

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataTypeForSPR:Z

    if-eqz v17, :cond_20

    .line 2279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 2290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    if-eqz v17, :cond_1f

    .line 2291
    const v17, 0x7f02008f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2359
    :cond_1c
    :goto_7
    move-object v5, v13

    .line 2360
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2361
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2369
    :goto_8
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mPermanentDataIconOperator:Z

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->shouldShowPermanentDataIcon()Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 2371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_28

    .line 2372
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2376
    :goto_9
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 2381
    :cond_1d
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 2384
    :cond_1e
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2385
    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "Data Activity icon disapeared."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2281
    :pswitch_0
    const v17, 0x7f02008d

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_7

    .line 2284
    :pswitch_1
    const v17, 0x7f020090

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    .line 2287
    :pswitch_2
    const v17, 0x7f02008e

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    .line 2293
    :cond_1f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    .line 2297
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v17, :cond_24

    .line 2298
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    .line 2314
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    move/from16 v17, v0

    if-eqz v17, :cond_23

    .line 2315
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2321
    :goto_a
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v17, :cond_1c

    .line 2322
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataTypeIconIdForSPR()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto/16 :goto_7

    .line 2300
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_a

    .line 2303
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_a

    .line 2306
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_a

    .line 2309
    :pswitch_6
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v17, :cond_22

    .line 2310
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_a

    .line 2317
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_a

    .line 2325
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_2

    .line 2341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v17, v0

    if-eqz v17, :cond_26

    .line 2342
    const v17, 0x7f02013f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2349
    :goto_b
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v17, :cond_1c

    .line 2350
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c

    .line 2354
    const-string v17, "StatusBar.NetworkController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    .line 2327
    :pswitch_7
    const v17, 0x7f02013a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_b

    .line 2330
    :pswitch_8
    const v17, 0x7f020146

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_b

    .line 2333
    :pswitch_9
    const v17, 0x7f02013c

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2344
    :cond_26
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_b

    .line 2365
    :cond_27
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_8

    .line 2374
    :cond_28
    const v17, 0x7f020139

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_9

    .line 2396
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_3

    .line 2418
    :goto_c
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v17, :cond_2a

    .line 2419
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 2424
    :cond_2a
    sget-boolean v17, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v17, :cond_1

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2426
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTWifiActivityIcon()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2403
    :pswitch_a
    const v17, 0x7f02013a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_c

    .line 2406
    :pswitch_b
    const v17, 0x7f020146

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_c

    .line 2409
    :pswitch_c
    const v17, 0x7f02013c

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_c

    .line 2412
    :pswitch_d
    const v17, 0x7f02013f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_c

    .line 2446
    :cond_2b
    move-object/from16 v5, v16

    goto/16 :goto_2

    .line 2451
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2d

    .line 2452
    const-string v16, ""

    goto/16 :goto_3

    .line 2454
    :cond_2d
    const v17, 0x7f0b00b2

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    .line 2471
    :cond_2e
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2497
    .restart local v9    # "ethernetConnected":Z
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_32

    .line 2499
    const-string v16, ""

    .line 2501
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_30

    .line 2502
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_31

    .line 2503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2513
    :cond_30
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2514
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_5

    .line 2505
    :cond_31
    move-object v5, v13

    goto :goto_d

    .line 2510
    :cond_32
    const v17, 0x7f0b00b2

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2511
    move-object/from16 v5, v16

    goto :goto_d

    .line 2518
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_8

    if-nez v9, :cond_8

    .line 2522
    const v17, 0x7f0b00b2

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2524
    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v17, :cond_35

    sget-boolean v17, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v17, :cond_35

    .line 2525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_35

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .line 2527
    .restart local v14    # "serviceState":I
    if-eqz v14, :cond_34

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v14, :cond_34

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v14, :cond_35

    .line 2533
    :cond_34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2540
    .end local v14    # "serviceState":I
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_36

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2542
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_f
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2545
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2547
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    goto/16 :goto_5

    .line 2540
    :cond_36
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_e

    .line 2542
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_f

    .line 2607
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2608
    .local v3, "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_10

    .line 2694
    .end local v3    # "cluster":Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2695
    .restart local v2    # "N":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_11
    if-ge v10, v2, :cond_3b

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2697
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2698
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3a

    .line 2699
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2695
    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 2701
    :cond_3a
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 2706
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2707
    const/4 v10, 0x0

    :goto_13
    if-ge v10, v2, :cond_3c

    .line 2708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2709
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2707
    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    .line 2721
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2722
    const/4 v10, 0x0

    :goto_14
    if-ge v10, v2, :cond_3e

    .line 2723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2724
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_3d

    .line 2725
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2726
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2727
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2728
    const-string v17, "STATUSBAR-NetworkController"

    const-string v18, "update carrier label"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    .line 2730
    :cond_3d
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 2736
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3f

    .line 2737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 2740
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_40

    .line 2741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    .line 2746
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_41

    .line 2747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileActivityIconId:I

    .line 2750
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_42

    .line 2751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    .line 2754
    :cond_42
    return-void

    .line 2279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2298
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2325
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2400
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public setStackedMode(Z)V
    .locals 1
    .param p1, "stacked"    # Z

    .prologue
    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 826
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1824
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1827
    .local v0, "something":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1828
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 1829
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1830
    const/4 p1, 0x0

    .line 1835
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1836
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    const/4 v0, 0x1

    .line 1839
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1840
    if-eqz v0, :cond_2

    .line 1841
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    const/4 v0, 0x1

    .line 1846
    :cond_3
    if-eqz v0, :cond_8

    .line 1848
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_7

    .line 1849
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1850
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1851
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1874
    :goto_0
    return-void

    .line 1852
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_5

    .line 1854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1855
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1856
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_6

    .line 1857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1858
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1860
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1861
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1864
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1867
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_9

    .line 1868
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1869
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1871
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1886
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1887
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    .line 1889
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1890
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 1891
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1892
    const/4 p1, 0x0

    .line 1896
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1897
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    const/4 v0, 0x1

    .line 1900
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1901
    if-eqz v0, :cond_2

    .line 1902
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1904
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    const/4 v0, 0x1

    .line 1907
    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    .line 1908
    if-eqz v0, :cond_4

    .line 1909
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    const/4 v0, 0x1

    .line 1915
    :cond_5
    if-eqz v0, :cond_6

    .line 1916
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1921
    :goto_0
    return-void

    .line 1918
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
