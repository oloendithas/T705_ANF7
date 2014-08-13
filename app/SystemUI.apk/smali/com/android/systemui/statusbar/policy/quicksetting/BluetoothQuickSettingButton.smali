.class public Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "BluetoothQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BluetoothQuickSettingButton"

.field private static final is3LMAllowed:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b0109

    const v1, 0x7f0b00e2

    const/4 v6, 0x0

    .line 72
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 48
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 75
    const v3, 0x7f0201b0

    const v4, 0x7f0201af

    const v5, 0x7f0201ae

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 87
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 88
    return-void

    .line 83
    :cond_0
    const v0, 0x7f0201b1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method private handleStateChanged(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 91
    packed-switch p1, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 93
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 100
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isBlocked(Landroid/os/IDeviceManager3LM;)Z
    .locals 1
    .param p1, "dm"    # Landroid/os/IDeviceManager3LM;

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "STATUSBAR-BluetoothQuickSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    :cond_2
    const-string v0, "STATUSBAR-BluetoothQuickSettingButton"

    const-string v1, "onClick(): Bluetooth state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 182
    if-eqz p1, :cond_5

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 191
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    goto :goto_0

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/BluetoothQuickSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$BluetoothSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
