.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final ABNORMAL_CHARGING_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charging"

.field static final ACTION_CABLE_CONNECTED:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_CABLE_CONNECTED"

.field static final ACTION_CABLE_DISCONNECTED:Ljava/lang/String; = "com.android.systemui.power.action.ACTION_CABLE_DISCONNECTED"

.field static final ACTION_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "android.intent.action.CHECK_COOLDOWN_LEVEL"

.field static final ACTION_COVER_REMOTEVIEWES_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_WARNING:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_WARNING"

.field static final ACTION_POWERSAVINGMODE_AUTO_ENABLE:Ljava/lang/String; = "android.settings.POWERSAVING_AUTO_ENABLE"

.field static final ACTION_SPEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field static final ACTION_START_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

.field static final ACTION_STOP_COVER_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_HEALTH_OVERHEATLIMIT:I = 0x8

.field static final BATTERY_HEALTH_UNDER_VOLTAGE:I = 0x9

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_OVERHEAT_SHUTDOWN_WARNING:I = 0x2

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SWELLING_PERIOD:I = 0xea60

.field static final CHARGING_INTERRUPTION_PERIOD:I = 0xea60

.field static final DEBUG:Z = false

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field static final EXTRA_BATTERY_OVERHEAT_LEVEL:Ljava/lang/String; = "battery_overheat_level"

.field static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field static final EXTRA_CHECK_COOLDOWN_LEVEL:Ljava/lang/String; = "check_cooldown_level"

.field static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final EXTRA_PENINSERT:Ljava/lang/String; = "penInsert"

.field static final EXTRA_REMOTEVIEWS:Ljava/lang/String; = "remote"

.field static final EXTRA_REMOTEVIEWS_TYPE:Ljava/lang/String; = "type"

.field static final EXTRA_REMOTEVIEWS_TYPE_BATTERY:Ljava/lang/String; = "battery"

.field static final EXTRA_REMOTEVIEWS_VISIBILITY:Ljava/lang/String; = "visibility"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final MAXIMUM_LOW_BATTERY_DUMP:I = 0x3

.field static final OVERHEAT_SHUTDOWN:Ljava/lang/String; = "OverheatShutdown"

.field static final OVERHEAT_SHUTDOWN_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_overheat_shutdown"

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final POWERSAVINGMODE_AUTO_THRESHOLD:I = 0x14

.field static final PRODUCT_DEV:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY:I = 0x9

.field static final SIOP_OVERHEAT_SHUTDOWN_IMMEDIATELY_ESTIMATED_TIME:I = 0x0

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING:I = 0x8

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_DELAY_TIME:I = 0xea60

.field static final SIOP_OVERHEAT_SHUTDOWN_WARNING_ESTIMATED_TIME:I = 0x7530

.field static final SLOW_CHARGING_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargingWarning"

.field static final SOC_SUDDEN_CHANGE_THRESHOLD:I = 0xa

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_BATTERY_SWELLING_WARNING:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_BATTERY_SWELLING_WARNING:I = 0x4

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final VRPOPUP_BUNDLE:Ljava/lang/String; = "com.samsung.android.hmt.vrsvc.vrpopup_bundle"

.field static final VRPOPUP_INTENT:Ljava/lang/String; = "com.samsung.android.intent.action.VR_POPUP"

.field static final VRPOPUP_PKG:Ljava/lang/String; = "popup_activity"

.field static final VRPOPUP_STRING:Ljava/lang/String; = "popup_string"

.field static final VRPOPUP_TYPE:Ljava/lang/String; = "popup_type"

.field static final WIRELESS_CHARGING_DURATION:I = 0xbb8


# instance fields
.field mATT:Z

.field mAbnormalChargingDialog:Landroid/app/AlertDialog;

.field mAbnormalChargingNotification:Landroid/app/Notification;

.field mAbnormalChargingTextView:Landroid/widget/TextView;

.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryOverheatLevel:I

.field mBatteryStatus:I

.field mBatterySwelling:Z

.field mBatterySwellingDialog:Landroid/app/AlertDialog;

.field mBatterySwellingLevel:I

.field mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingRecoveryCount:I

.field mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

.field mBatterySwellingRecoveryLevel:I

.field mBatterySwellingRecoveryTemperature:I

.field mBatterySwellingRecoveryThreshold:I

.field mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

.field mBatterySwellingTask:Ljava/lang/Runnable;

.field mBatterySwellingTemperature:I

.field mBatteryTemperature:I

.field mCable:Z

.field mChargerVibration:Z

.field mChargingInterruptionDialog:Landroid/app/AlertDialog;

.field mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mChargingInterruptionTask:Ljava/lang/Runnable;

.field mCoverCamera:Z

.field mDeviceType:I

.field mDimKeeping:Z

.field mFTAMode:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mPlugType:I

.field mPowersavingmodeDialog:Landroid/app/AlertDialog;

.field mSIOPLevel:I

.field mSPen:Z

.field private mScreenOffTime:J

.field mThemeContext:Landroid/content/Context;

.field mVZW:Z

.field mWirelessChargingDialog:Landroid/app/AlertDialog;

.field mWirelessChargingTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 196
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 197
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 198
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 199
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 200
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 201
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 202
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 203
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 204
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 209
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 211
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 212
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    .line 213
    const/16 v0, 0x2b2

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    .line 214
    const/16 v0, 0x45

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    .line 215
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    .line 216
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    .line 218
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 219
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 227
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 250
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 254
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    .line 257
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 258
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    .line 392
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1193
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    .line 1260
    new-instance v0, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    .line 1413
    new-instance v0, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    .line 1584
    new-instance v0, Lcom/android/systemui/power/PowerUI$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$18;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 1591
    new-instance v0, Lcom/android/systemui/power/PowerUI$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$19;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 1775
    new-instance v0, Lcom/android/systemui/power/PowerUI$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$22;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 373
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 374
    const/4 v2, 0x1

    .line 386
    :cond_0
    :goto_0
    return v2

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 383
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 384
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 385
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 386
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 384
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 389
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelAbnormalChargingNotification()V
    .locals 3

    .prologue
    .line 1825
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1826
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1829
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1831
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1833
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 1765
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1766
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1769
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1771
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1773
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 1721
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1722
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1725
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1727
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1729
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissAbnormalChargingWarning()V
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1270
    :cond_0
    return-void
.end method

.method dismissBatterySwellingRecoveryNotice()V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1423
    :cond_0
    return-void
.end method

.method dismissBatterySwellingWarning()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1369
    return-void
.end method

.method dismissChargingInterruptionWarning()V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1135
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1138
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1106
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 855
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 858
    :cond_0
    return-void
.end method

.method dismissOverheatShutdownNotice()V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1613
    :cond_0
    return-void
.end method

.method dismissOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1527
    :cond_0
    return-void
.end method

.method dismissPowersavingmodeNotice()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1467
    :cond_0
    return-void
.end method

.method dismissWirelessChargingNotice()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1203
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1965
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1966
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1967
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1968
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1969
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1971
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1972
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1973
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1974
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1976
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1977
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1978
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1979
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1980
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1982
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1983
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1984
    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1985
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1986
    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1988
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1989
    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1992
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1993
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    return-void

    .line 1970
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1972
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method notifyAbnormalChargingNotification(I)V
    .locals 9
    .param p1, "messageId"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0191

    .line 1785
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1787
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 1788
    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargingNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :goto_0
    return-void

    .line 1794
    :cond_0
    if-ne v7, p1, :cond_2

    .line 1795
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b018e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1796
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1802
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 1803
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    .line 1804
    if-ne v7, p1, :cond_3

    .line 1805
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f02008a

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1806
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1811
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1812
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1813
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1816
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1817
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1819
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1821
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1798
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b018a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1799
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b018d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1808
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    const v6, 0x7f020296

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1809
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0b01a9

    const/4 v8, 0x0

    .line 1732
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 1733
    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :goto_0
    return-void

    .line 1737
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1739
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 1740
    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1744
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0175

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1745
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1747
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 1748
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1749
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f02018d

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1750
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1751
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1754
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1755
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1757
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1759
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v9, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1761
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1678
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    .line 1679
    .local v2, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1680
    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedNotificationMessagesState()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1718
    :goto_0
    return-void

    .line 1685
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1687
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    if-nez v3, :cond_1

    .line 1688
    const-string v8, "PowerUI"

    const-string v9, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1692
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0175

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1693
    .local v7, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0176

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1695
    .local v6, "text":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v8, :cond_2

    .line 1696
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1697
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v9, 0x7f0200a6

    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 1698
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    .line 1699
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 1700
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v6, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1703
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1704
    .local v1, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v8, v11, v1, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1706
    .local v4, "pi":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7, v6, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1708
    const/4 v8, 0x0

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1710
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1711
    .local v5, "powerManager":Landroid/os/PowerManager;
    if-nez v5, :cond_3

    .line 1712
    const-string v8, "PowerUI"

    const-string v9, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1715
    :cond_3
    const v8, 0x10000006

    const-string v9, "PowerUI"

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1717
    .local v0, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v8, 0x4e20

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0
.end method

.method playSound(I)V
    .locals 13
    .param p1, "soundType"    # I

    .prologue
    .line 1836
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1840
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1841
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1842
    .local v1, "audioMode":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    if-eq v9, v1, :cond_1

    const/4 v9, 0x3

    if-eq v9, v1, :cond_1

    .line 1843
    const-string v9, "PowerUI"

    const-string v10, "recording so doesn\'t play sound"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :goto_0
    return-void

    .line 1847
    .end local v1    # "audioMode":I
    :cond_0
    const/4 v1, 0x0

    .line 1850
    .restart local v1    # "audioMode":I
    :cond_1
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v9, :cond_2

    .line 1853
    const-string v9, "PowerUI"

    const-string v10, "playSound : NotificationPlayer is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    new-instance v9, Lcom/android/systemui/media/NotificationPlayer;

    const-string v10, "PowerUI"

    invoke-direct {v9, v10}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1856
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v9, :cond_2

    .line 1857
    const-string v9, "PowerUI"

    const-string v10, "playSound : fail to new NotificationPlayer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1863
    :cond_2
    if-eqz v0, :cond_6

    .line 1864
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 1869
    .local v5, "ringerMode":I
    :goto_1
    const/4 v9, 0x2

    if-ne v9, v5, :cond_3

    const/4 v9, 0x1

    if-ne v9, p1, :cond_3

    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    if-eqz v9, :cond_3

    .line 1870
    const/4 v5, 0x1

    .line 1871
    const-string v9, "PowerUI"

    const-string v10, "ring mode but vibrates in Note3"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "alertoncall_mode"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    const/4 v4, 0x1

    .line 1875
    .local v4, "notifyDuringCalls":Z
    :goto_2
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    .line 1876
    .local v8, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v8, :cond_5

    .line 1878
    :try_start_0
    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x4

    if-eq v9, v1, :cond_4

    const/4 v9, 0x3

    if-ne v9, v1, :cond_5

    .line 1881
    :cond_4
    if-eqz v4, :cond_8

    .line 1882
    const-string v9, "PowerUI"

    const-string v10, "calling so vibrate"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1883
    const/4 v5, 0x1

    .line 1895
    :cond_5
    :goto_3
    const/4 v9, 0x2

    if-ne v9, v5, :cond_9

    .line 1897
    packed-switch p1, :pswitch_data_0

    .line 1911
    :try_start_1
    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1915
    .local v6, "soundUri":Landroid/net/Uri;
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v9, v10, v6, v11, v12}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1916
    const-string v9, "PowerUI"

    const-string v10, "RINGER_MODE_NORMAL"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1945
    .end local v6    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1946
    .local v2, "exception":Ljava/lang/Exception;
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1866
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v4    # "notifyDuringCalls":Z
    .end local v5    # "ringerMode":I
    .end local v8    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_6
    const/4 v5, 0x2

    .restart local v5    # "ringerMode":I
    goto :goto_1

    .line 1874
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 1885
    .restart local v4    # "notifyDuringCalls":Z
    .restart local v8    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_8
    :try_start_2
    const-string v9, "PowerUI"

    const-string v10, "calling and doesn\'t notify during calls"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1889
    :catch_1
    move-exception v2

    .line 1890
    .local v2, "exception":Landroid/os/RemoteException;
    const-string v9, "PowerUI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : Exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1899
    .end local v2    # "exception":Landroid/os/RemoteException;
    :pswitch_0
    :try_start_3
    const-string v9, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1900
    .restart local v6    # "soundUri":Landroid/net/Uri;
    goto :goto_4

    .line 1902
    .end local v6    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "low_battery_sound"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1903
    .restart local v6    # "soundUri":Landroid/net/Uri;
    goto :goto_4

    .line 1905
    .end local v6    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string v9, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1906
    .restart local v6    # "soundUri":Landroid/net/Uri;
    goto :goto_4

    .line 1908
    .end local v6    # "soundUri":Landroid/net/Uri;
    :pswitch_3
    const-string v9, "system/media/audio/ui/TW_Battery_swelling_warning.ogg"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1909
    .restart local v6    # "soundUri":Landroid/net/Uri;
    goto :goto_4

    .line 1917
    .end local v6    # "soundUri":Landroid/net/Uri;
    :cond_9
    const/4 v9, 0x1

    if-ne v9, v5, :cond_b

    .line 1919
    packed-switch p1, :pswitch_data_1

    .line 1929
    const/16 v3, 0xb

    .line 1933
    .local v3, "hapticFeedback":I
    :goto_5
    new-instance v7, Landroid/os/SystemVibrator;

    invoke-direct {v7}, Landroid/os/SystemVibrator;-><init>()V

    .line 1934
    .local v7, "systemVibrator":Landroid/os/SystemVibrator;
    if-eqz v7, :cond_a

    .line 1935
    invoke-virtual {v7, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 1939
    :goto_6
    const-string v9, "PowerUI"

    const-string v10, "RINGER_MODE_VIBRATE"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1921
    .end local v3    # "hapticFeedback":I
    .end local v7    # "systemVibrator":Landroid/os/SystemVibrator;
    :pswitch_4
    const/16 v3, 0xa

    .line 1922
    .restart local v3    # "hapticFeedback":I
    goto :goto_5

    .line 1926
    .end local v3    # "hapticFeedback":I
    :pswitch_5
    const/16 v3, 0xb

    .line 1927
    .restart local v3    # "hapticFeedback":I
    goto :goto_5

    .line 1937
    .restart local v7    # "systemVibrator":Landroid/os/SystemVibrator;
    :cond_a
    const-string v9, "PowerUI"

    const-string v10, "playSound : fail to new SystemVibrator"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1940
    .end local v3    # "hapticFeedback":I
    .end local v7    # "systemVibrator":Landroid/os/SystemVibrator;
    :cond_b
    if-nez v5, :cond_c

    .line 1941
    const-string v9, "PowerUI"

    const-string v10, "RINGER_MODE_SILENT"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1943
    :cond_c
    const-string v9, "PowerUI"

    const-string v10, "unknown RINGER_MODE"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1897
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1919
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method sendLowBatteryIntentToHMT(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "pTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 1061
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.VR_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v0, "lowBattIntent":Landroid/content/Intent;
    const-string v1, "popup_type"

    const-string v2, "LOWBATT_POPUP"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v1, "popup_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1064
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1065
    return-void
.end method

.method showAbnormalChargingWarning(I)V
    .locals 12
    .param p1, "messageId"    # I

    .prologue
    const v11, 0x7f0b018f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1273
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "SHOULD_SHUT_DOWN"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_0

    move v4, v8

    .line 1275
    .local v4, "isShutdownOn":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 1276
    const-string v7, "PowerUI"

    const-string v8, "don\'t show Abnormal charging warning while Shutdown is ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :goto_1
    return-void

    .end local v4    # "isShutdownOn":Z
    :cond_0
    move v4, v7

    .line 1273
    goto :goto_0

    .line 1280
    .restart local v4    # "isShutdownOn":Z
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v9, :cond_2

    .line 1281
    const-string v7, "PowerUI"

    const-string v8, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1285
    :cond_2
    const-string v9, "PowerUI"

    const-string v10, "showAbnormalChargingWarning()"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 1291
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v10, "com.android.systemui.power_abnormal_charging"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1292
    .local v0, "abnormalChargeSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_5

    .line 1293
    if-ne v11, p1, :cond_4

    .line 1294
    const-string v9, "DoNotShowSlowChargingWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1295
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1297
    :cond_3
    const/4 v7, 0x3

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/4 v7, 0x4

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    const/16 v7, 0xa

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v7, v9, :cond_5

    .line 1298
    const-string v7, "PowerUI"

    const-string v8, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1302
    :cond_4
    const-string v9, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1303
    const-string v7, "PowerUI"

    const-string v8, "Incompatible charger warning doesn\'t show again"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1309
    :cond_5
    if-ne v11, p1, :cond_7

    .line 1310
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018e

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1312
    .local v5, "title":Ljava/lang/CharSequence;
    const/4 v7, 0x2

    iget v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v7, v9, :cond_6

    .line 1313
    const p1, 0x7f0b0190

    .line 1319
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    .line 1320
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1321
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1316
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v9, 0x7f0b018a

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1323
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    const/high16 v9, 0x7f040000

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1324
    .local v6, "v":Landroid/view/View;
    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    .line 1326
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    move v3, p1

    .line 1331
    .local v3, "finalMessageId":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1332
    .local v1, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1334
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1335
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v8, p0, v6, v0, v3}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1350
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1351
    .local v2, "d":Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1357
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 1358
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1359
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargingDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method showBatterySwellingRecoveryNotice()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1426
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_1

    .line 1428
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1429
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_1
    move v2, v3

    .line 1426
    goto :goto_0

    .line 1433
    .restart local v2    # "isShutdownOn":Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_3

    .line 1434
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1438
    :cond_3
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingRecoveryNotice()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 1442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1443
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1444
    const v3, 0x7f0b0181

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1445
    const v3, 0x7f0b0182

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1446
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1449
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$13;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1455
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1456
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1457
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryDialog:Landroid/app/AlertDialog;

    .line 1459
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showBatterySwellingWarning()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1372
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1374
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1375
    const-string v3, "PowerUI"

    const-string v4, "don\'t show Battery swelling warning while Shutdown is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v3

    .line 1372
    goto :goto_0

    .line 1379
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_2

    .line 1380
    const-string v3, "PowerUI"

    const-string v4, "FTA Mode is ON so don\'t show Battery swelling warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1384
    :cond_2
    const-string v4, "PowerUI"

    const-string v5, "showBatterySwellingWarning()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_3

    .line 1388
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1389
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1390
    const v3, 0x7f0b017f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1391
    const v3, 0x7f0b0180

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1392
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1394
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1395
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1401
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1402
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1403
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingDialog:Landroid/app/AlertDialog;

    .line 1405
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 1408
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 1410
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTask:Ljava/lang/Runnable;

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method showChargingInterruptionWarning()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1141
    const-string v5, "PowerUI"

    const-string v6, "showChargingInterruptionWarning()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1145
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1146
    const-string v4, "PowerUI"

    const-string v5, "don\'t show Charging interruption warning while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v4

    .line 1143
    goto :goto_0

    .line 1151
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v7, v5, :cond_2

    .line 1152
    const v3, 0x7f0b0172

    .line 1164
    .local v3, "messageId":I
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    .line 1165
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1190
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    goto :goto_1

    .line 1153
    .end local v3    # "messageId":I
    :cond_2
    const/4 v5, 0x7

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_3

    .line 1154
    const v3, 0x7f0b0173

    .restart local v3    # "messageId":I
    goto :goto_2

    .line 1155
    .end local v3    # "messageId":I
    :cond_3
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_4

    .line 1156
    const v3, 0x7f0b0171

    .restart local v3    # "messageId":I
    goto :goto_2

    .line 1157
    .end local v3    # "messageId":I
    :cond_4
    const/16 v5, 0x8

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_5

    .line 1158
    const v3, 0x7f0b0174

    .restart local v3    # "messageId":I
    goto :goto_2

    .line 1160
    .end local v3    # "messageId":I
    :cond_5
    const-string v4, "PowerUI"

    const-string v5, "status is NotCharging but health is wrong value"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1168
    .restart local v3    # "messageId":I
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1170
    const v4, 0x7f0b0170

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1171
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1172
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1175
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1185
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1186
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1187
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_3
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 1109
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 1113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1114
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1115
    const v2, 0x7f0b0020

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1116
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1117
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1120
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1127
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1128
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1129
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 1130
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 22

    .prologue
    .line 861
    const-string v19, "PowerUI"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    const-string v18, "showing"

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " low battery warning: level="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " ["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "]"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v3

    .line 872
    .local v3, "bucket":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "SHOULD_SHUT_DOWN"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v11, 0x1

    .line 873
    .local v11, "isShutdownOn":Z
    :goto_1
    if-eqz v11, :cond_3

    .line 874
    const-string v18, "PowerUI"

    const-string v19, "Shutdown is ON"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :cond_0
    :goto_2
    return-void

    .line 861
    .end local v3    # "bucket":I
    .end local v11    # "isShutdownOn":Z
    :cond_1
    const-string v18, "updating"

    goto/16 :goto_0

    .line 872
    .restart local v3    # "bucket":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 878
    .restart local v11    # "isShutdownOn":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const/16 v18, -0x2

    move/from16 v0, v18

    if-eq v0, v3, :cond_4

    .line 879
    const-string v18, "PowerUI"

    const-string v19, "FTA Mode is ON and Not critical Low battery"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 883
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 884
    const-string v18, "PowerUI"

    const-string v19, "cover camera is running so don\'t show Low battery warning"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 888
    :cond_5
    const/16 v18, -0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0178

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 902
    .local v16, "title":Ljava/lang/CharSequence;
    :goto_3
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerUI;->updateCoverLowBatteryWarning(Z)V

    .line 904
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b017a

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 926
    .local v13, "levelText":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1038
    :goto_5
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "power"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PowerManager;

    .line 1041
    .local v15, "powerManager":Landroid/os/PowerManager;
    if-nez v15, :cond_e

    .line 1042
    const-string v18, "PowerUI"

    const-string v19, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 891
    .end local v13    # "levelText":Ljava/lang/CharSequence;
    .end local v15    # "powerManager":Landroid/os/PowerManager;
    .end local v16    # "title":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0177

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 907
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b0179

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "levelText":Ljava/lang/CharSequence;
    goto :goto_4

    .line 932
    :cond_8
    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 935
    :cond_9
    const v6, 0x7f020007

    .line 939
    .local v6, "imageId":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v12

    .line 940
    .local v12, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 941
    invoke-virtual {v12}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedNotificationMessagesState()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 946
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f040002

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 948
    .local v17, "v":Landroid/view/View;
    const v18, 0x7f080007

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    const v18, 0x7f080008

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 960
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 961
    .local v2, "b":Landroid/app/AlertDialog$Builder;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 962
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 963
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 964
    const v18, 0x104000a

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 982
    const/4 v8, 0x0

    .line 988
    .local v8, "isEmergencyMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "kids_home_mode"

    const/16 v20, 0x0

    const/16 v21, -0x2

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/4 v9, 0x1

    .line 990
    .local v9, "isKidsMode":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "device_provisioned"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_d

    const/4 v10, 0x1

    .line 995
    .local v10, "isSetupwizard":Z
    :goto_7
    const v4, 0x7f0b017e

    .line 998
    .local v4, "buttonTextId":I
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.settings.POWER_SAVING_SETTINGS"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v18, 0x58800000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v18

    if-eqz v18, :cond_b

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    if-nez v10, :cond_b

    .line 1011
    new-instance v18, Lcom/android/systemui/power/PowerUI$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1021
    :cond_b
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1022
    .local v5, "d":Landroid/app/AlertDialog;
    new-instance v18, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1031
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x7d9

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setType(I)V

    .line 1032
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1034
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1035
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_5

    .line 988
    .end local v4    # "buttonTextId":I
    .end local v5    # "d":Landroid/app/AlertDialog;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "isKidsMode":Z
    .end local v10    # "isSetupwizard":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 990
    .restart local v9    # "isKidsMode":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_7

    .line 1045
    .end local v2    # "b":Landroid/app/AlertDialog$Builder;
    .end local v6    # "imageId":I
    .end local v8    # "isEmergencyMode":Z
    .end local v9    # "isKidsMode":Z
    .end local v12    # "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .end local v17    # "v":Landroid/view/View;
    .restart local v15    # "powerManager":Landroid/os/PowerManager;
    :cond_e
    const v18, 0x10000006

    const-string v19, "PowerUI"

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    .line 1047
    .local v14, "lowBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v18, 0x3a98

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showOverheatShutdownNotice()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1616
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 1618
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1619
    const-string v5, "PowerUI"

    const-string v6, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 1616
    goto :goto_0

    .line 1623
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_2

    .line 1624
    const-string v5, "PowerUI"

    const-string v6, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1628
    :cond_2
    const-string v6, "PowerUI"

    const-string v7, "showOverheatShutdownNotice()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v6, :cond_5

    .line 1634
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v6, v7, :cond_4

    .line 1635
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b019b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1636
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b019d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1646
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_3

    .line 1648
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1649
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1650
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1651
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1653
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/power/PowerUI$20;

    invoke-direct {v6, p0}, Lcom/android/systemui/power/PowerUI$20;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1661
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1662
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerUI$21;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$21;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1668
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1669
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1670
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownNoticeDialog:Landroid/app/AlertDialog;

    .line 1673
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1

    .line 1638
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b019a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1639
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b019c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1642
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01a1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1643
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01a2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method showOverheatShutdownWarning()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1530
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SHOULD_SHUT_DOWN"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 1532
    .local v2, "isShutdownOn":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 1533
    const-string v5, "PowerUI"

    const-string v6, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :goto_1
    return-void

    .end local v2    # "isShutdownOn":Z
    :cond_0
    move v2, v5

    .line 1530
    goto :goto_0

    .line 1537
    .restart local v2    # "isShutdownOn":Z
    :cond_1
    const-string v6, "PowerUI"

    const-string v7, "showOverheatShutdownWarning()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissOverheatShutdownNotice()V

    .line 1545
    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v6, :cond_4

    .line 1546
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0196

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1547
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0199

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "button_text":Ljava/lang/CharSequence;
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v6, v7, :cond_3

    .line 1549
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0198

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1559
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v6, :cond_2

    .line 1560
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1561
    .local v1, "d":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1562
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1563
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1564
    new-instance v5, Lcom/android/systemui/power/PowerUI$16;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$16;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v0, v5}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1571
    new-instance v5, Lcom/android/systemui/power/PowerUI$17;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$17;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1576
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1577
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1578
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 1581
    .end local v1    # "d":Landroid/app/ProgressDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1

    .line 1551
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0197

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1554
    .end local v0    # "button_text":Ljava/lang/CharSequence;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b019e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1555
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01a0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1556
    .restart local v0    # "button_text":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x7f0b019f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method showPowersavingmodeNotice()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1470
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SHOULD_SHUT_DOWN"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1472
    .local v3, "isShutdownOn":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1473
    const-string v4, "PowerUI"

    const-string v5, "don\'t show Power saving mode notice while Shutdown is ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :goto_1
    return-void

    .end local v3    # "isShutdownOn":Z
    :cond_0
    move v3, v4

    .line 1470
    goto :goto_0

    .line 1477
    .restart local v3    # "isShutdownOn":Z
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v5, :cond_2

    .line 1478
    const-string v4, "PowerUI"

    const-string v5, "FTA Mode is ON so don\'t show Power saving mode notice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1482
    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "showPowersavingmodeNotice()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_4

    .line 1486
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1487
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1488
    const v4, 0x7f0b016c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1489
    const v4, 0x7f0b016b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1491
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1492
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.settings.PSM_SETTINGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1495
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1496
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/power/PowerUI$14;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/power/PowerUI$14;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1506
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1507
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$15;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$15;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1513
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1514
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1515
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingmodeDialog:Landroid/app/AlertDialog;

    .line 1518
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    goto :goto_1
.end method

.method showWirelessChargingNotice(I)V
    .locals 8
    .param p1, "messageId"    # I

    .prologue
    const v6, 0x7f0b0185

    .line 1209
    const v4, 0x7f0b0187

    if-ne v4, p1, :cond_2

    .line 1210
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0184

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1215
    .local v3, "title":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1217
    .local v2, "text":Ljava/lang/CharSequence;
    if-ne v6, p1, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    if-eqz v4, :cond_0

    .line 1218
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0186

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1221
    :cond_0
    if-ne v6, p1, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v4, :cond_1

    .line 1222
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0189

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1225
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_3

    .line 1226
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1227
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1255
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1257
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 1258
    :goto_2
    return-void

    .line 1212
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0183

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1230
    .restart local v2    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v4, :cond_4

    .line 1231
    const-string v4, "PowerUI"

    const-string v5, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1236
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1237
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1238
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1239
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1241
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1242
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1250
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1251
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1252
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargingDialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public start()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 262
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 264
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v8

    .line 266
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v4, v7

    .line 269
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 270
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 272
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 273
    .local v3, "powerManager":Landroid/os/PowerManager;
    if-nez v3, :cond_4

    .line 274
    const-string v4, "PowerUI"

    const-string v5, "start : fail to get PowerManager reference"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_1
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "characteristics":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 283
    iput v9, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 288
    :goto_2
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v4, :cond_0

    .line 292
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mThemeContext:Landroid/content/Context;

    .line 293
    const-string v4, "PowerUI"

    const-string v5, "Dark theme"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.spen_usp"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    .line 297
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : S Pen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v4, "VZW"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 300
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 304
    :goto_3
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : VZW customer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v4, "ATT"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 307
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    .line 311
    :goto_4
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : ATT customer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hlte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ha3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "ro.product.device"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "h3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    :cond_1
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mChargerVibration:Z

    .line 317
    :cond_2
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-eq v9, v4, :cond_8

    .line 318
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    .line 322
    :goto_5
    const-string v4, "PowerUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start : Dim keeping = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v4, 0x46

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    .line 331
    const/16 v4, 0x45

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    .line 332
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    .line 333
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v4, :cond_9

    .line 334
    const/16 v4, 0x258

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 335
    const/16 v4, 0x24e

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    .line 341
    :goto_6
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string v5, "PowerUI"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 342
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 345
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v4, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v4, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v4, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v4, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v4, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v4, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 360
    return-void

    .line 270
    .end local v0    # "characteristics":Ljava/lang/String;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto/16 :goto_0

    .line 276
    .restart local v3    # "powerManager":Landroid/os/PowerManager;
    :cond_4
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    .line 277
    const v4, 0x3000000a

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    .line 278
    const-string v4, "PowerUI"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .line 285
    .restart local v0    # "characteristics":Ljava/lang/String;
    :cond_5
    iput v7, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_2

    .line 302
    :cond_6
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto/16 :goto_3

    .line 309
    :cond_7
    iput-boolean v8, p0, Lcom/android/systemui/power/PowerUI;->mATT:Z

    goto/16 :goto_4

    .line 320
    :cond_8
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    goto/16 :goto_5

    .line 337
    :cond_9
    const/16 v4, 0x2bc

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    .line 338
    const/16 v4, 0x2b2

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    goto/16 :goto_6
.end method

.method turnOnScreen()V
    .locals 5

    .prologue
    .line 1951
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1952
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1953
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :goto_0
    return-void

    .line 1958
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateCoverLowBatteryWarning(Z)V
    .locals 4
    .param p1, "visibility"    # Z

    .prologue
    .line 1051
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040003

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1052
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string v2, "visibility"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1054
    const-string v2, "type"

    const-string v3, "battery"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const-string v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1056
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1057
    return-void
.end method
