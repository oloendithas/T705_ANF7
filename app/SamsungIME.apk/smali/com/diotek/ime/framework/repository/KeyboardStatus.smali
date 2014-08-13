.class public Lcom/diotek/ime/framework/repository/KeyboardStatus;
.super Ljava/lang/Object;
.source "KeyboardStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;


# instance fields
.field private accuteState:Z

.field private holdDelay:I

.field private isBackNormalKeyFirstTap:Z

.field private isFirstLanguageChangeTap:Z

.field private isHardwareQwertyKeyInput:Z

.field private isMMKeyFirstTap:Z

.field private letterMode:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private phoneticSpellLayout:Z

.field private setupWizardRunning:Z

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const/16 v4, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->letterMode:Z

    .line 14
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->accuteState:Z

    .line 15
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->phoneticSpellLayout:Z

    .line 16
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setupWizardRunning:Z

    .line 17
    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isHardwareQwertyKeyInput:Z

    .line 18
    iput v4, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    .line 20
    iput-object v3, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    .line 21
    iput-object v3, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 23
    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isMMKeyFirstTap:Z

    .line 24
    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap:Z

    .line 25
    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isBackNormalKeyFirstTap:Z

    .line 28
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 29
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    .line 31
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    const-string v2, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v3, "settings_hold_delay_medium"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "selectedKeyboardSwipeSetting":Ljava/lang/String;
    const-string v1, "settings_hold_delay_short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const/16 v1, 0xc8

    iput v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    .line 44
    .end local v0    # "selectedKeyboardSwipeSetting":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v0    # "selectedKeyboardSwipeSetting":Ljava/lang/String;
    :cond_1
    const-string v1, "settings_hold_delay_medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    iput v4, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "settings_hold_delay_long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    iput v5, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    goto :goto_0

    .line 40
    :cond_3
    const-string v1, "settings_hold_delay_custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sp:Landroid/content/SharedPreferences;

    const-string v2, "settings_hold_delay_custom"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    goto :goto_0
.end method

.method public static getHoldDelay()I
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 127
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    return v0
.end method

.method public static isAccuteState()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 92
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->accuteState:Z

    return v0
.end method

.method public static isFirstKeyboardChangeTap()Z
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 148
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isBackNormalKeyFirstTap:Z

    return v0
.end method

.method public static isFirstLanguageChangeTap()Z
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 141
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap:Z

    return v0
.end method

.method public static isHardwareQwertyKeyInput()Z
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 120
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isHardwareQwertyKeyInput:Z

    return v0
.end method

.method public static isLetterMode()Z
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 85
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->letterMode:Z

    return v0
.end method

.method public static isMMKeyFirstTap()Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 134
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isMMKeyFirstTap:Z

    return v0
.end method

.method public static isPhoneticSpellLayout()Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 106
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->phoneticSpellLayout:Z

    return v0
.end method

.method public static isSetupWizardRunning()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 99
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setupWizardRunning:Z

    return v0
.end method

.method public static setAccuteState(Z)V
    .locals 1
    .param p0, "accuteState"    # Z

    .prologue
    .line 54
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 57
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->accuteState:Z

    .line 58
    return-void
.end method

.method public static setFirstKeyboardChangeTap(Z)V
    .locals 1
    .param p0, "tapValue"    # Z

    .prologue
    .line 166
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 169
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isBackNormalKeyFirstTap:Z

    .line 170
    return-void
.end method

.method public static setFirstLanguageChangeTap(Z)V
    .locals 1
    .param p0, "tapValue"    # Z

    .prologue
    .line 159
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 162
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isFirstLanguageChangeTap:Z

    .line 163
    return-void
.end method

.method public static setHardwareQwertyKeyInput(Z)V
    .locals 1
    .param p0, "isHardwareQwertyKeyInput"    # Z

    .prologue
    .line 110
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 113
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isHardwareQwertyKeyInput:Z

    .line 114
    return-void
.end method

.method public static setHoldDelay(I)V
    .locals 1
    .param p0, "holdDelay"    # I

    .prologue
    .line 75
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 78
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->holdDelay:I

    .line 79
    return-void
.end method

.method public static setIfSetupWizardRunning(Z)V
    .locals 1
    .param p0, "setupWizardRunning"    # Z

    .prologue
    .line 61
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 64
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setupWizardRunning:Z

    .line 65
    return-void
.end method

.method public static setLetterMode(Z)V
    .locals 1
    .param p0, "letterMode"    # Z

    .prologue
    .line 47
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 50
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->letterMode:Z

    .line 51
    return-void
.end method

.method public static setMMKeyFirstTap(Z)V
    .locals 1
    .param p0, "tapValue"    # Z

    .prologue
    .line 152
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 155
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isMMKeyFirstTap:Z

    .line 156
    return-void
.end method

.method public static setPhoneticSpellLayout(Z)V
    .locals 1
    .param p0, "use"    # Z

    .prologue
    .line 68
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/KeyboardStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    .line 71
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->sInstance:Lcom/diotek/ime/framework/repository/KeyboardStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/KeyboardStatus;->phoneticSpellLayout:Z

    .line 72
    return-void
.end method
