.class public Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "CarModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;
    }
.end annotation


# static fields
.field private static final DB_CAR_MODE_ON:Ljava/lang/String; = "car_mode_on"

.field private static final INTENT_CAR_MODE:Ljava/lang/String; = "android.settings.CAR_MODE_CHANGED"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-CarModeQuickSettingButton"


# instance fields
.field private mCarModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0b0129

    const v1, 0x7f0b0101

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 33
    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 35
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 36
    const v3, 0x7f0201bf

    const v4, 0x7f0201be

    const v5, 0x7f0201bd

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 49
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mCarModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;

    .line 52
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->getMode()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->getMode()I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mState:Z

    .line 55
    return-void

    .line 44
    :cond_0
    const v0, 0x7f0201c0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    .line 54
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    .prologue
    .line 22
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getMode()I
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

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
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 136
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mCarModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "car_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mCarModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 94
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    const-string v1, "STATUSBAR-CarModeQuickSettingButton"

    const-string v2, "onClick(): Car mode state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v2, :cond_2

    .line 101
    const-string v1, "STATUSBAR-CarModeQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    const-string v2, "STATUSBAR-CarModeQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Car Mode onClick("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mState:Z

    if-eq v2, p1, :cond_0

    .line 109
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 110
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->setMode(I)V

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mCarModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->onChange(Z)V

    .line 122
    return-void
.end method
