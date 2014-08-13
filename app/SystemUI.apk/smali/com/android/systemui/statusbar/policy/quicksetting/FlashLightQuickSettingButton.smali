.class public Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "FlashLightQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FlashLightController"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFlashLightObserver:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x7f0b021e

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 49
    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 50
    const v3, 0x7f0201c8

    const v4, 0x7f0201ca

    move-object v0, p0

    move v2, v1

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flash_light_start"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v5, v8

    :cond_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mState:Z

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mState:Z

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mFlashLightObserver:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;

    .line 62
    return-void

    .line 59
    :cond_1
    const/4 v8, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mFlashLightObserver:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "flash_light_start"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mFlashLightObserver:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 74
    const-string v0, "STATUSBAR-FlashLightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 77
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.flashlight.FlashLightDisplay"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "flash_light_start"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.flashlight.FlashLightDisplay"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
