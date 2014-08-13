.class public Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "ToddlerModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;
    }
.end annotation


# static fields
.field private static final DB_TODDLER_MODE_ON:Ljava/lang/String; = "toddler_mode_switch"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-ToddlerModeController"


# instance fields
.field private isAirPlaneMode:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;

.field private mState:Z

.field private mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0127

    const v1, 0x7f0b00ff

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 104
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v9, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 72
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    .line 73
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 107
    const v3, 0x7f0201de

    const v4, 0x7f0201dd

    const v5, 0x7f0201dc

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 120
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    .line 122
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    const/4 v2, -0x2

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 127
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 130
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    const-string v1, "toddler"

    const v2, 0x7f02013e

    invoke-virtual {v0, v1, v2, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    const-string v1, "toddler"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 133
    return-void

    .line 115
    :cond_0
    const v0, 0x7f0201df

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    :cond_1
    move v0, v6

    .line 124
    goto :goto_1

    .line 125
    :cond_2
    const/4 v8, 0x2

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->setMode(Z)V

    return-void
.end method

.method private checkSimReady(Z)Z
    .locals 7
    .param p1, "mShowPopup"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 293
    .local v0, "SimState":I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_3

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 299
    if-nez p1, :cond_1

    .line 333
    :goto_0
    return v3

    .line 302
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0162

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 304
    const v4, 0x7f0b0163

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 314
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 317
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 323
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 325
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 326
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 330
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    goto :goto_1

    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_3
    move v3, v4

    .line 333
    goto :goto_0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(Z)V
    .locals 9
    .param p1, "mode"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 169
    if-nez p1, :cond_4

    move v0, v3

    .line 171
    .local v0, "mEnableConnectivity":Z
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "toddler_mode_switch"

    if-eqz p1, :cond_5

    move v5, v3

    :goto_1
    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 174
    const-string v5, "STATUSBAR-ToddlerModeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setConnectivity : set to  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->checkSimReady(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    const/4 v1, 0x0

    .line 182
    .local v1, "mPreviousMobileDataState":Z
    if-eqz p1, :cond_0

    .line 183
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 184
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toddler_mode_data_state"

    if-eqz v1, :cond_6

    move v5, v3

    :goto_2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    :cond_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_data_state"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_7

    move v1, v3

    .line 188
    :goto_3
    if-eqz v1, :cond_1

    .line 189
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 194
    .end local v1    # "mPreviousMobileDataState":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_3

    .line 195
    const/4 v2, 0x0

    .line 197
    .local v2, "mPreviousWifiState":Z
    if-eqz p1, :cond_2

    .line 198
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 199
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toddler_mode_wifi_state"

    if-eqz v2, :cond_8

    move v5, v3

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    :cond_2
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "toddler_mode_wifi_state"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_9

    move v2, v3

    .line 203
    :goto_5
    if-eqz v2, :cond_3

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 214
    .end local v2    # "mPreviousWifiState":Z
    :cond_3
    return-void

    .end local v0    # "mEnableConnectivity":Z
    :cond_4
    move v0, v4

    .line 169
    goto/16 :goto_0

    .restart local v0    # "mEnableConnectivity":Z
    :cond_5
    move v5, v4

    .line 171
    goto/16 :goto_1

    .restart local v1    # "mPreviousMobileDataState":Z
    :cond_6
    move v5, v4

    .line 184
    goto :goto_2

    :cond_7
    move v1, v4

    .line 187
    goto :goto_3

    .end local v1    # "mPreviousMobileDataState":Z
    .restart local v2    # "mPreviousWifiState":Z
    :cond_8
    move v5, v4

    .line 199
    goto :goto_4

    :cond_9
    move v2, v4

    .line 202
    goto :goto_5
.end method

.method private showConfirmPopup(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "theme":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 240
    const/4 v1, 0x5

    .line 243
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 245
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0b00ff

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    if-eqz p1, :cond_1

    const v2, 0x7f0b016e

    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 270
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 279
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 280
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 286
    return-void

    .line 245
    .end local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    const v2, 0x7f0b016f

    goto :goto_0

    .line 283
    .restart local v0    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    const/4 v6, -0x2

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 141
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "STATUSBAR-ToddlerModeController"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const-string v0, "STATUSBAR-ToddlerModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToddlerMode onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->showConfirmPopup(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 340
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$ToddlerModeSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mToddlerModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->onChange(Z)V

    .line 346
    return-void
.end method
