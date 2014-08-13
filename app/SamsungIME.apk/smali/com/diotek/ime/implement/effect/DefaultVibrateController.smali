.class public Lcom/diotek/ime/implement/effect/DefaultVibrateController;
.super Ljava/lang/Object;
.source "DefaultVibrateController.java"

# interfaces
.implements Lcom/diotek/ime/framework/effect/VibrateController;


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsNoteMode:Z

.field private mIsSystemSettingsVibrateOn:Z

.field private mIsTabletMode:Z

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrateOn:Z

    .line 23
    iput-object v3, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    .line 25
    iput-object v3, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrateDuration:J

    .line 28
    iput-boolean v2, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsSystemSettingsVibrateOn:Z

    .line 29
    iput-object v3, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 30
    iput-object v3, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 31
    iput-boolean v2, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsNoteMode:Z

    .line 32
    iput-boolean v2, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    .line 35
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 36
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 38
    return-void
.end method

.method private isFunctionKey(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 139
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    .line 140
    .local v1, "range":I
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 141
    .local v0, "method":I
    if-eq v0, v2, :cond_2

    .line 142
    if-nez v1, :cond_1

    .line 143
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 416
    :cond_0
    :goto_0
    :sswitch_0
    return v2

    .line 208
    :cond_1
    sparse-switch p1, :sswitch_data_1

    move v2, v3

    .line 274
    goto :goto_0

    .line 269
    :sswitch_1
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 270
    goto :goto_0

    .line 278
    :cond_2
    if-nez v1, :cond_3

    .line 279
    sparse-switch p1, :sswitch_data_2

    move v2, v3

    .line 347
    goto :goto_0

    .line 342
    :sswitch_2
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 343
    goto :goto_0

    .line 350
    :cond_3
    sparse-switch p1, :sswitch_data_3

    move v2, v3

    .line 416
    goto :goto_0

    .line 411
    :sswitch_3
    iget-object v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    if-nez v4, :cond_0

    move v2, v3

    .line 412
    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch

    .line 208
    :sswitch_data_1
    .sparse-switch
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x7a -> :sswitch_1
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 279
    :sswitch_data_2
    .sparse-switch
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x7a -> :sswitch_2
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch

    .line 350
    :sswitch_data_3
    .sparse-switch
        -0x1f4 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x7a -> :sswitch_3
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private isSystemSettingsVibrateOn()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsSystemSettingsVibrateOn:Z

    return v0
.end method

.method private setSystemSettingsVibrateOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsSystemSettingsVibrateOn:Z

    .line 119
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    .line 43
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrateDuration:J

    .line 44
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "NOTE_KEYPAD_TYPE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsNoteMode:Z

    .line 45
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    .line 48
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    .line 53
    return-void
.end method

.method public setMagnitudeLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 424
    return-void
.end method

.method public setVibrateOn(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrateOn:Z

    .line 115
    return-void
.end method

.method public updateVibrateFromSystemSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    .line 132
    const-string v3, "haptic_feedback_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->setSystemSettingsVibrateOn(Z)V

    .line 136
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method public vibrate(IZ)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "bump"    # Z

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrateOn:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->isFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "TABLET_8INCH"

    const-string v1, "TABLET_10INCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_FUNCTION_TABLET_10INCH:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "TABLET_8INCH"

    const-string v1, "TABLET_8INCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_FUNCTION_TABLET_8INCH:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_FUNCTION_TABLET:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_FUNCTION:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 72
    :cond_4
    if-eqz p2, :cond_8

    .line 73
    const-string v0, "TABLET_8INCH"

    const-string v1, "ENHANCED_F_J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_F_AND_J_ENHANCED:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 75
    :cond_5
    const-string v0, "TABLET_8INCH"

    const-string v1, "TABLET_10INCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_F_AND_J_TABLET_10INCH:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 77
    :cond_6
    const-string v0, "TABLET_8INCH"

    const-string v1, "TABLET_8INCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_F_AND_J_TABLET_8INCH:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 80
    :cond_7
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_F_AND_J:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    .line 83
    :cond_8
    iget-boolean v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mIsTabletMode:Z

    if-eqz v0, :cond_b

    .line 84
    const-string v0, "TABLET_8INCH"

    const-string v1, "TABLET_10INCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_GENERAL_TABLET_10INCH:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto/16 :goto_0

    .line 86
    :cond_9
    const-string v0, "TABLET_8INCH"

    const-string v1, "TABLET_8INCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_GENERAL_TABLET_8INCH:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto/16 :goto_0

    .line 89
    :cond_a
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_GENERAL_TABLET:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto/16 :goto_0

    .line 92
    :cond_b
    iget-object v0, p0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v1, Lcom/diotek/ime/implement/effect/DefaultVibrateController;->VIBE_KEY_GENERAL:[B

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    goto/16 :goto_0
.end method

.method public vibrate(IZZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "bump"    # Z
    .param p3, "up"    # Z

    .prologue
    .line 104
    return-void
.end method

.method public vibrateUseWeakenMagnitude(IZZ)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "bump"    # Z
    .param p3, "up"    # Z

    .prologue
    .line 109
    return-void
.end method
