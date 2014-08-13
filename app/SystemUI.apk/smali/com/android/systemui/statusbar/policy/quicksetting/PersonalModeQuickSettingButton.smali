.class public Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PersonalModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;
    }
.end annotation


# static fields
.field private static final ACTION_SECRETMODE:Ljava/lang/String; = "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

.field private static final DB_PERSONAL_MODE_ON:Ljava/lang/String; = "personal_mode_enabled"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PersonalModeQuickSettingButton"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0126

    const v1, 0x7f0b00fe

    const/4 v6, 0x0

    .line 58
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 60
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 61
    const v3, 0x7f0201eb

    const v4, 0x7f0201ea

    const v5, 0x7f0201e9

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 73
    :goto_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    .line 75
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V

    .line 77
    return-void

    .line 69
    :cond_0
    const v0, 0x7f0201ec

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "personal_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 134
    .local v0, "state":I
    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    .line 135
    const-string v1, "STATUSBAR-PersonalModeQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PersonalMode  updateState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_3

    .line 137
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 138
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 142
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 140
    :cond_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V

    .line 84
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "STATUSBAR-PersonalModeQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v1, "STATUSBAR-PersonalModeQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersonalMode  onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 105
    const-string v1, "STATUSBAR-PersonalModeQuickSettingButton"

    const-string v2, "onClick(): Personal mode state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mState:Z

    if-eq v1, p1, :cond_0

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 112
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.personalpage.action.ACTION_SHOW_DISCLAIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.personalpage.service"

    const-string v2, "com.samsung.android.personalpage.service.PersonalPageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 3

    .prologue
    .line 122
    const-string v1, "STATUSBAR-PersonalModeQuickSettingButton"

    const-string v2, "PersonalMode  onLongClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PERSONALPAGE_ACTIVITY_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;->onChange(Z)V

    .line 161
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "personal_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->mPersonalModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    return-void
.end method
