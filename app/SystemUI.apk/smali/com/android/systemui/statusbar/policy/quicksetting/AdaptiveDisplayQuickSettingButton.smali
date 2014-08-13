.class public Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AdaptiveDisplayQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;
    }
.end annotation


# static fields
.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AdaptiveDisplayQuickSettingButton"


# instance fields
.field private mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0115

    const v1, 0x7f0b0107

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 85
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 87
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 88
    const v3, 0x7f020198

    const v4, 0x7f020197

    const v5, 0x7f020196

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 100
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 101
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->getAdaptiveDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_mode_automatic_setting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mState:Z

    .line 107
    return-void

    .line 96
    :cond_0
    const v0, 0x7f02022b

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    .line 105
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->getAdaptiveDisplayEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mState:Z

    return p1
.end method

.method private getAdaptiveDisplayEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

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

.method private setAdaptiveDisplayEnabled(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 173
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mState:Z

    if-eq v1, p1, :cond_0

    .line 174
    if-eqz p1, :cond_2

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    .end local v0    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 175
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v1, :cond_3

    .line 182
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ModePreviewTablet"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_3
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NewModePreview"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 127
    const-string v0, "STATUSBAR-AdaptiveDisplayQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptiveDisplay onClick("

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

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->setAdaptiveDisplayEnabled(Z)V

    .line 132
    return-void
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.ModePreviewTablet"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.NewModePreview"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;->onChange(Z)V

    .line 149
    return-void
.end method
