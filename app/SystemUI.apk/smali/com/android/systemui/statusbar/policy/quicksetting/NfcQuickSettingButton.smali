.class public Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "NfcQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final LOCKSTATUS_LOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_LOCK"

.field private static final LOCKSTATUS_UNLOCK_ACTION:Ljava/lang/String; = "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

.field private static final NFC_RW_P2P_SWITCH:Ljava/lang/String; = "nfc_rw_p2p_switch"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NfcQuickSettingButton"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b0121

    const v1, 0x7f0b00f9

    const/4 v6, 0x0

    .line 68
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 25
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_1

    .line 71
    const v3, 0x7f0201e4

    const v4, 0x7f0201e2

    const v5, 0x7f0201e0

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 84
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAttNfcIcon:Z

    if-eqz v0, :cond_0

    .line 85
    const v2, 0x7f0201e5

    const v3, 0x7f0201e3

    const v4, 0x7f0201e1

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setIcon(IIIIII)V

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 96
    return-void

    .line 79
    :cond_1
    const v0, 0x7f0201e6

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x2

    .line 99
    const-string v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 100
    const-string v1, "STATUSBAR-NfcQuickSettingButton"

    const-string v2, "NFC Service is not ready - handleStateChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    :pswitch_0
    return v0

    .line 104
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v0, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v0, "com.samsung.felica.action.LOCKSTATUS_UNLOCK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "STATUSBAR-NfcQuickSettingButton"

    const-string v1, "NFC Service is not ready - init"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 138
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 142
    :goto_1
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1
.end method

.method public onClick(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 150
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUsePermissionConfirmPopup:Z

    if-nez v4, :cond_1

    .line 151
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v4, :cond_1

    .line 152
    const-string v3, "STATUSBAR-NfcQuickSettingButton"

    const-string v4, "onClick(): Processing..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v4, "STATUSBAR-NfcQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v4, "nfc"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_2

    .line 161
    const-string v3, "STATUSBAR-NfcQuickSettingButton"

    const-string v4, "NFC Service is not ready - onClick"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_3

    .line 166
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v4, :cond_0

    .line 172
    :cond_3
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 173
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;

    move-result-object v0

    .line 174
    .local v0, "device":Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/app/enterprise/devicesettings/DeviceSettingsPolicy;->isNFCStateChangeAllowed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 175
    :cond_5
    const-string v3, "STATUSBAR-NfcQuickSettingButton"

    const-string v4, "onClick(): NFC state change is not allowed"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 186
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 188
    if-eqz p1, :cond_8

    .line 189
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 194
    :goto_1
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "mOperator":Ljava/lang/String;
    const-string v4, "DCM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "KDDI"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "nfc_rw_p2p_switch"

    if-eqz p1, :cond_9

    :goto_2
    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 191
    .end local v2    # "mOperator":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NfcQuickSettingButton;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1

    .line 197
    .restart local v2    # "mOperator":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x2

    goto :goto_2
.end method

.method public onLongClick()V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "operator":Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NfcOsaifukeitaiSettingsActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$NfcSettingsActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
