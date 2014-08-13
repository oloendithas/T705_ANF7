.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirGestureQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;
    }
.end annotation


# static fields
.field private static final DB_AIR_GESTURE:Ljava/lang/String; = "air_motion_engine"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AirGesture"


# instance fields
.field private mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0124

    const v1, 0x7f0b00fc

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 55
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 57
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 58
    const v3, 0x7f02019b

    const v4, 0x7f02019a

    const v5, 0x7f020199

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 70
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mState:Z

    .line 77
    return-void

    .line 66
    :cond_0
    const v0, 0x7f02019c

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    .line 75
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 129
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_engine"

    const/4 v4, -0x2

    invoke-static {v2, v3, p1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 136
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 5

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "theme":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    .line 183
    const/4 v1, 0x5

    .line 185
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b01c7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    .line 208
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 209
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 215
    return-void

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method public doNext()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->showConfirmPopup()V

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 224
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "air_motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 83
    return-void
.end method

.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x2

    const/4 v7, 0x0

    .line 163
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_glance_view"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 164
    .local v5, "QuickGlance":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_scroll"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 165
    .local v3, "AirScroll":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_turn"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 166
    .local v4, "AirTurn":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_item_move"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 167
    .local v1, "AirMove":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_clip"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 168
    .local v2, "AirPin":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "air_motion_call_accept"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 170
    .local v0, "AirCallAccept":I
    or-int v8, v5, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v1

    or-int/2addr v8, v2

    or-int/2addr v8, v0

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "STATUSBAR-AirGesture"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "STATUSBAR-AirGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirGesture onClick("

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

    .line 100
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const-string v0, "STATUSBAR-AirGesture"

    const-string v1, "onClick(): AirGesture state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 109
    if-eqz p1, :cond_4

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    const v0, 0x7f0b012f

    const v1, 0x7f0b0130

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    .line 122
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 123
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 175
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$AirMotionSettingActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton;->mAirGestureObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirGestureQuickSettingButton$AirGestureObserver;->onChange(Z)V

    .line 236
    return-void
.end method
