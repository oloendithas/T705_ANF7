.class public Lcom/android/systemui/PhoneSettingService;
.super Landroid/app/Service;
.source "PhoneSettingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/PhoneSettingService$2;,
        Lcom/android/systemui/PhoneSettingService$SettingMode;
    }
.end annotation


# static fields
.field private static final DB_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DB_MULTI_WINDOW_MODE_ON:Ljava/lang/String; = "multi_window_enabled"

.field private static final DB_SMART_STAY_ON:Ljava/lang/String; = "intelligent_sleep_mode"

.field private static final DB_S_BEAM_ON:Ljava/lang/String; = "sbeam_mode"

.field private static final EVENT_SET_BLUETOOTH:I = 0x4

.field private static final EVENT_SET_NFC:I = 0x2

.field private static final EVENT_SET_POWER_SAVING:I = 0x6

.field private static final EVENT_SET_SBEAM:I = 0x3

.field private static final EVENT_SET_WIFI:I = 0x5

.field private static final PHONE_SETTING:Ljava/lang/String; = "android.intent.action.PHONE_SETTING"

.field private static final START_WFD_DIALOG:I = 0x1

.field static final TAG:Ljava/lang/String; = "PhoneSettingService"

.field private static final WIFI_AP_SAVED_STATE:Ljava/lang/String; = "wifi_ap_saved_state"

.field private static final WIFI_SAVED_STATE:Ljava/lang/String; = "wifi_saved_state"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mWifiEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 487
    new-instance v0, Lcom/android/systemui/PhoneSettingService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/PhoneSettingService$1;-><init>(Lcom/android/systemui/PhoneSettingService;)V

    iput-object v0, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/PhoneSettingService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/PhoneSettingService;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/PhoneSettingService;->startWfdPickerDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/PhoneSettingService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/PhoneSettingService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/PhoneSettingService;->setNfcMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/PhoneSettingService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/PhoneSettingService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/PhoneSettingService;->setSBeamMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/PhoneSettingService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/PhoneSettingService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/PhoneSettingService;->setBluetoothMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/PhoneSettingService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/PhoneSettingService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/PhoneSettingService;->setWifiMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/PhoneSettingService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/PhoneSettingService;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/PhoneSettingService;->setPowerSavingMode(Z)V

    return-void
.end method

.method private changePhoneSetting(Lcom/android/systemui/PhoneSettingService$SettingMode;Z)V
    .locals 7
    .param p1, "mode"    # Lcom/android/systemui/PhoneSettingService$SettingMode;
    .param p2, "enabled"    # Z

    .prologue
    const-wide/16 v5, 0xbb8

    const/4 v2, 0x0

    .line 159
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 161
    .local v0, "arg1":I
    :goto_0
    sget-object v3, Lcom/android/systemui/PhoneSettingService$2;->$SwitchMap$com$android$systemui$PhoneSettingService$SettingMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 218
    :goto_1
    return-void

    .end local v0    # "arg1":I
    :cond_0
    move v0, v2

    .line 159
    goto :goto_0

    .line 163
    .restart local v0    # "arg1":I
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAutoRotateMode(Z)V

    goto :goto_1

    .line 166
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 167
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 170
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setLocationMode(Z)V

    goto :goto_1

    .line 173
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setMobileDataMode(Z)V

    goto :goto_1

    .line 176
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 177
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 180
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setMultiWindowMode(Z)V

    goto :goto_1

    .line 183
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setSyncMode(Z)V

    goto :goto_1

    .line 186
    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 187
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 190
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setDormantMode(Z)V

    goto :goto_1

    .line 193
    :pswitch_9
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 194
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 197
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_a
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 198
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 201
    .end local v1    # "msg":Landroid/os/Message;
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setDrivingMode(Z)V

    goto :goto_1

    .line 204
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setSmartStayMode(Z)V

    goto :goto_1

    .line 207
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAirplaneMode(Z)V

    goto :goto_1

    .line 210
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setWiFiHotspotMode(Z)V

    goto :goto_1

    .line 213
    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/android/systemui/PhoneSettingService;->setAllShareCastMode(Z)V

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private setAirplaneMode(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 420
    .local v1, "mode":Z
    :goto_0
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setAirplaneMode : mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    const-string v2, "PhoneSettingService"

    const-string v3, "setAirplaneMode : ECM exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    :goto_1
    return-void

    .end local v1    # "mode":Z
    :cond_1
    move v1, v3

    .line 418
    goto :goto_0

    .line 427
    .restart local v1    # "mode":Z
    :cond_2
    if-eq v1, p1, :cond_0

    .line 428
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 432
    const-string v2, "state"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    move v3, v2

    .line 428
    goto :goto_2
.end method

.method private setAutoRotateMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 223
    .local v1, "mode":Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAutoRotateMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eq v1, p1, :cond_0

    .line 226
    :try_start_0
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 227
    .local v2, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_2

    .line 228
    invoke-interface {v2}, Landroid/view/IWindowManager;->thawRotation()V

    .line 236
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :cond_0
    :goto_1
    return-void

    .line 221
    .end local v1    # "mode":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    .restart local v1    # "mode":Z
    .restart local v2    # "wm":Landroid/view/IWindowManager;
    :cond_2
    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    .end local v2    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v3, "PhoneSettingService"

    const-string v4, "Unable to save auto-rotate setting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setBluetoothMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 239
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 240
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 241
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method private setDormantMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 335
    .local v0, "mode":Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDormantMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eq v0, p1, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "dormant_switch_onoff"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    :cond_0
    return-void

    .end local v0    # "mode":Z
    :cond_1
    move v0, v2

    .line 333
    goto :goto_0

    .restart local v0    # "mode":Z
    :cond_2
    move v2, v1

    .line 337
    goto :goto_1
.end method

.method private setDrivingMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 400
    .local v0, "mode":Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDrivingMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-eq v0, p1, :cond_0

    .line 402
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "driving_mode_on"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    :cond_0
    return-void

    .end local v0    # "mode":Z
    :cond_1
    move v0, v2

    .line 398
    goto :goto_0

    .restart local v0    # "mode":Z
    :cond_2
    move v2, v1

    .line 402
    goto :goto_1
.end method

.method private setLocationMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 255
    .local v1, "mode":Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLocationMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eq v1, p1, :cond_0

    .line 257
    if-eqz p1, :cond_2

    .line 258
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "location_mode"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.GPS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .end local v1    # "mode":Z
    :cond_1
    move v1, v2

    .line 253
    goto :goto_0

    .line 261
    .restart local v1    # "mode":Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private setMobileDataMode(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 270
    iget-object v5, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 272
    .local v0, "airplaneMode":Z
    :goto_0
    if-ne v0, v4, :cond_2

    .line 273
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : airplaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    :goto_1
    return-void

    .end local v0    # "airplaneMode":Z
    :cond_1
    move v0, v4

    .line 270
    goto :goto_0

    .line 277
    .restart local v0    # "airplaneMode":Z
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 278
    .local v3, "simState":I
    if-eqz v3, :cond_3

    if-ne v3, v4, :cond_4

    .line 279
    :cond_3
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : simState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 285
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 287
    .local v2, "mode":Z
    const-string v4, "PhoneSettingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMobileDataMode : mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eq v2, p1, :cond_0

    .line 289
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_1
.end method

.method private setMultiWindowMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 344
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 346
    .local v0, "mode":Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMultiWindowMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-eq v0, p1, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "multi_window_enabled"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    :cond_0
    return-void

    .end local v0    # "mode":Z
    :cond_1
    move v0, v2

    .line 344
    goto :goto_0

    .restart local v0    # "mode":Z
    :cond_2
    move v2, v1

    .line 348
    goto :goto_1
.end method

.method private setNfcMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 365
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNfcMode : enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 368
    const-string v2, "PhoneSettingService"

    const-string v3, "NFC Service is not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 373
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_1

    .line 374
    const-string v2, "PhoneSettingService"

    const-string v3, "nfcAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 380
    .local v1, "nfcState":I
    if-eqz p1, :cond_3

    .line 381
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 382
    const-string v2, "PhoneSettingService"

    const-string v3, "NFC activate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 385
    :cond_2
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid NFC state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 389
    const-string v2, "PhoneSettingService"

    const-string v3, "NFC deactivate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 392
    :cond_4
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid NFC state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPowerSavingMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 295
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSavingMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "psm_switch"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    return-void

    .line 296
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setSBeamMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "sbeam_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 356
    .local v1, "mode":Z
    :goto_0
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSBeamMode : mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    if-eq v1, p1, :cond_0

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "turn_on"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 354
    .end local v1    # "mode":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setSilentMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 302
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentMode : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 304
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 306
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 309
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 312
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setSmartStayMode(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 410
    .local v0, "mode":Z
    :goto_0
    const-string v3, "PhoneSettingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartStayMode : mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eq v0, p1, :cond_0

    .line 412
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 415
    :cond_0
    return-void

    .end local v0    # "mode":Z
    :cond_1
    move v0, v2

    .line 408
    goto :goto_0

    .restart local v0    # "mode":Z
    :cond_2
    move v2, v1

    .line 412
    goto :goto_1
.end method

.method private setSyncMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 318
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 319
    .local v0, "mode":Z
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncMode : mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eq v0, p1, :cond_0

    .line 321
    invoke-static {p1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method private setWiFiHotspotMode(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 438
    const-string v5, "PhoneSettingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWiFiHotspotMode enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-ne p1, v3, :cond_1

    move v0, v3

    .line 440
    .local v0, "mode":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 441
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 443
    .local v2, "wifiState":I
    if-ne v0, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 445
    :cond_0
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 446
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_saved_state"

    invoke-static {v3, v4, v0, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 448
    iget-object v3, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_saved_state"

    invoke-static {v3, v4, v0, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 454
    :goto_1
    return-void

    .end local v0    # "mode":I
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v2    # "wifiState":I
    :cond_1
    move v0, v4

    .line 439
    goto :goto_0

    .line 451
    .restart local v0    # "mode":I
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    .restart local v2    # "wifiState":I
    :cond_2
    const/4 v5, 0x0

    if-ne v0, v3, :cond_3

    :goto_2
    invoke-virtual {v1, v5, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method private setWifiMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 326
    const-string v1, "PhoneSettingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiMode : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 328
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/PhoneSettingService;->mWifiEnabled:Z

    .line 330
    return-void
.end method

.method private startWfdPickerDialog()V
    .locals 3

    .prologue
    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_dialog_once"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 482
    const-string v1, "tag_write_if_success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 485
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "PhoneSettingService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 79
    const-string v0, "PhoneSettingService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 98
    const-string v11, "PhoneSettingService"

    const-string v12, "onStartCommand"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    .line 101
    iget-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/PhoneSettingService;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/PhoneSettingService;->mWifiEnabled:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.PHONE_SETTING"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 107
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 108
    .local v3, "extra":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 109
    const-string v11, "setting_value"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "phoneSetting":Ljava/lang/String;
    const-string v11, "PhoneSettingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onStartCommand : phonesetting = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    .line 116
    .local v2, "enabled":Z
    invoke-static {}, Lcom/android/systemui/PhoneSettingService$SettingMode;->values()[Lcom/android/systemui/PhoneSettingService$SettingMode;

    move-result-object v1

    .local v1, "arr$":[Lcom/android/systemui/PhoneSettingService$SettingMode;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v10, v1, v4

    .line 117
    .local v10, "s":Lcom/android/systemui/PhoneSettingService$SettingMode;
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    .line 119
    .local v5, "index":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v5, v11, :cond_1

    .line 155
    .end local v1    # "arr$":[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .end local v2    # "enabled":Z
    .end local v3    # "extra":Landroid/os/Bundle;
    .end local v4    # "i$":I
    .end local v5    # "index":I
    .end local v6    # "len$":I
    .end local v9    # "phoneSetting":Ljava/lang/String;
    .end local v10    # "s":Lcom/android/systemui/PhoneSettingService$SettingMode;
    :cond_0
    const/4 v11, 0x2

    return v11

    .line 122
    .restart local v1    # "arr$":[Lcom/android/systemui/PhoneSettingService$SettingMode;
    .restart local v2    # "enabled":Z
    .restart local v3    # "extra":Landroid/os/Bundle;
    .restart local v4    # "i$":I
    .restart local v5    # "index":I
    .restart local v6    # "len$":I
    .restart local v9    # "phoneSetting":Ljava/lang/String;
    .restart local v10    # "s":Lcom/android/systemui/PhoneSettingService$SettingMode;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 124
    .local v7, "mode":I
    const/4 v0, 0x1

    .line 125
    .local v0, "applicable":Z
    const-string v11, "Silent"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 126
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_3

    .line 127
    const/4 v7, 0x0

    .line 135
    :goto_1
    if-eqz v0, :cond_2

    .line 136
    invoke-direct {p0, v7}, Lcom/android/systemui/PhoneSettingService;->setSilentMode(I)V

    .line 116
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_4

    .line 129
    const/4 v7, 0x1

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x32

    if-ne v11, v12, :cond_5

    .line 131
    const/4 v7, 0x2

    goto :goto_1

    .line 133
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 139
    :cond_6
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_7

    .line 140
    const/4 v2, 0x1

    .line 147
    :goto_3
    if-eqz v0, :cond_2

    .line 148
    invoke-direct {p0, v10, v2}, Lcom/android/systemui/PhoneSettingService;->changePhoneSetting(Lcom/android/systemui/PhoneSettingService$SettingMode;Z)V

    goto :goto_2

    .line 141
    :cond_7
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x31

    if-ne v11, v12, :cond_8

    .line 142
    const/4 v2, 0x0

    goto :goto_3

    .line 144
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected setAllShareCastMode(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 457
    const-string v2, "PhoneSettingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllShareCastMode : enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 459
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v0, :cond_0

    .line 460
    if-eqz p1, :cond_3

    .line 461
    const-string v2, "wlan.wfd.settingontop"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    iget-boolean v2, p0, Lcom/android/systemui/PhoneSettingService;->mWifiEnabled:Z

    if-eqz v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 466
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/PhoneSettingService;->startWfdPickerDialog()V

    goto :goto_0

    .line 471
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 474
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/PhoneSettingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
