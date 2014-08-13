.class public Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "TouchSensitivityQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-TouchSensitivityQuickSettingButton"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mTouchSensitivityObserver:Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b012e

    const v1, 0x7f0b0106

    const/4 v6, 0x0

    .line 44
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mTouchSensitivityObserver:Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;

    .line 46
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 47
    const v3, 0x7f020231

    const v4, 0x7f020230

    const v5, 0x7f02022f

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 60
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 62
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->getTouchSensitivityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 67
    return-void

    .line 55
    :cond_0
    const v0, 0x7f0201d1

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->getTouchSensitivityEnabled()Z

    move-result v0

    return v0
.end method

.method private getTouchSensitivityEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "auto_adjust_touch"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setTouchSensitivityEnabled(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_adjust_touch"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 135
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mTouchSensitivityObserver:Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_adjust_touch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mTouchSensitivityObserver:Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    return-void
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 85
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 86
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "STATUSBAR-TouchSensitivityQuickSettingButton"

    const-string v2, "onClick(): TouchSensitivity state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "STATUSBAR-TouchSensitivityQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    const-string v1, "STATUSBAR-TouchSensitivityQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TouchSensitivity onClick("

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
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 103
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->setTouchSensitivityEnabled(Z)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 4

    .prologue
    .line 110
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string v2, "STATUSBAR-TouchSensitivityQuickSettingButton"

    const-string v3, "onLongClick(): TouchSensitivity state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton;->mTouchSensitivityObserver:Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/TouchSensitivityQuickSettingButton$TouchSensitivityObserver;->onChange(Z)V

    .line 125
    return-void
.end method
