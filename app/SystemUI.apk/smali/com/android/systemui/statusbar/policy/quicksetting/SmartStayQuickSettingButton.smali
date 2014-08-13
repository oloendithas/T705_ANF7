.class public Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SmartStayQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;
    }
.end annotation


# static fields
.field private static final DB_SMART_STAY_ON:Ljava/lang/String; = "intelligent_sleep_mode"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SmartStay"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b011a

    const v1, 0x7f0b00f2

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 52
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 54
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 55
    const v3, 0x7f02021a

    const v4, 0x7f020219

    const v5, 0x7f020218

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 67
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    .line 69
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z

    .line 74
    return-void

    .line 63
    :cond_0
    const v0, 0x7f02021b

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 70
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    .line 72
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 127
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 84
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 166
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setMode(I)V

    .line 168
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "STATUSBAR-SmartStay"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v0, "STATUSBAR-SmartStay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartStay onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const-string v0, "STATUSBAR-SmartStay"

    const-string v1, "onClick(): SmartStay state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 107
    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const v0, 0x7f0b0139

    const v1, 0x7f0b013a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 117
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 155
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->CHAGALL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->KLIMT:Z

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->onChange(Z)V

    .line 178
    return-void
.end method
