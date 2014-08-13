.class public Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WifiCallingQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-WifiCallingQuickSettingButton"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mState:Z

.field private mWfcObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0128

    const v1, 0x7f0b0100

    const/4 v6, 0x0

    .line 32
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 26
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 34
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 35
    const v3, 0x7f020238

    const v4, 0x7f020237

    const v5, 0x7f020236

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->initLayout(IIIIIII)V

    .line 54
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mPhone:Landroid/telephony/TelephonyManager;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->getMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    .line 60
    const-string v0, "STATUSBAR-WifiCallingQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WfcObserver() initial - mIsWfcRegistered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->setActivateStatus(I)V

    .line 62
    return-void

    .line 43
    :cond_0
    const v0, 0x7f020239

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->getMode()Z

    move-result v0

    return v0
.end method

.method private getMode()Z
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegister(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    move-result-object v0

    .line 142
    .local v0, "registerStatus":Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mIsProcessing:Z

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    .line 151
    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "STATUSBAR-WifiCallingQuickSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "STATUSBAR-WifiCallingQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi calling onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 118
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->setActivateStatus(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->setMode(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    const-string v1, "com.samsung.tmowfc.wfcpref"

    const-string v2, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "STATUSBAR-WifiCallingQuickSettingButton"

    const-string v2, "Cannot find WfcSettings!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mWfcObserver:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->onChange(Z)V

    .line 135
    return-void
.end method
