.class public Lcom/diotek/ime/framework/input/hw/HwKeyManager;
.super Ljava/lang/Object;
.source "HwKeyManager.java"


# static fields
.field public static final INVALID_VALUE:I = -0xff

.field private static sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;


# instance fields
.field private altGrLt:Z

.field private mCurrentKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmptyKey:Z

.field private mKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhonepadCurrentKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonepadDefaultKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonepadKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    .line 21
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    .line 22
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    .line 24
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    .line 25
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    .line 26
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    .line 28
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    .line 29
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    .line 30
    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/input/hw/HwKeyManager;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    .line 35
    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->initialize()V

    .line 38
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final initialize()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/high16 v5, 0x40a00000

    .line 42
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    .line 44
    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;-><init>()V

    .line 46
    .local v0, "keyMapFactory":Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;
    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwKeyMapSet()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    .line 47
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 48
    const-string v3, "SamsungIME"

    const-string v4, "HwKeyManager::initialize() / Could not get the mKeyMapSet."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_GB"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 53
    .local v1, "tempKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    if-nez v1, :cond_2

    .line 54
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 55
    const-string v3, "SamsungIME"

    const-string v4, "Default H/W key map is en_US"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_US"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tempKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 60
    .restart local v1    # "tempKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwKeyInfo;>;"
    :cond_2
    iput-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    .line 66
    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwPhonepadKeyMapSet()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    .line 67
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    if-nez v3, :cond_3

    .line 68
    const-string v3, "SamsungIME"

    const-string v4, "HwKeyManager::initialize() / Could not get the mPhonepadKeyMapSet."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_GB"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 73
    .local v2, "tempPhonepadKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    if-nez v2, :cond_5

    .line 74
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 75
    const-string v3, "SamsungIME"

    const-string v4, "Default H/W key map is en_US"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_US"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempPhonepadKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 80
    .restart local v2    # "tempPhonepadKeyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;>;"
    :cond_5
    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    .line 81
    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private isLithuanianAltGr(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 265
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    .line 266
    .local v0, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v1

    .line 267
    .local v1, "sipLanuage":I
    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    if-eqz v2, :cond_2

    const/high16 v2, 0x6c740000

    if-ne v1, v2, :cond_2

    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    const/16 v2, 0x10

    if-le p1, v2, :cond_1

    :cond_0
    const/16 v2, 0x46

    if-ne p1, v2, :cond_2

    .line 269
    :cond_1
    const/4 v2, 0x1

    .line 271
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertCyrillicUmlaut(II)I
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "inputLanguage"    # I

    .prologue
    .line 219
    move v0, p1

    .line 221
    .local v0, "convertedCode":I
    const/high16 v1, 0x6b6b0000

    if-ne p2, v1, :cond_1

    .line 222
    sparse-switch p1, :sswitch_data_0

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 224
    :sswitch_0
    const/16 v0, 0x69

    .line 225
    goto :goto_0

    .line 227
    :sswitch_1
    const/16 v0, 0x6f

    .line 228
    goto :goto_0

    .line 230
    :sswitch_2
    const/16 v0, 0x71

    .line 231
    goto :goto_0

    .line 233
    :sswitch_3
    const/16 v0, 0x73

    .line 234
    goto :goto_0

    .line 236
    :sswitch_4
    const/16 v0, 0x77

    .line 237
    goto :goto_0

    .line 239
    :sswitch_5
    const/16 v0, 0x61

    .line 240
    goto :goto_0

    .line 242
    :sswitch_6
    const/16 v0, 0x70

    .line 243
    goto :goto_0

    .line 245
    :sswitch_7
    const/16 v0, 0x75

    .line 246
    goto :goto_0

    .line 248
    :sswitch_8
    const/16 v0, 0x79

    goto :goto_0

    .line 251
    :cond_1
    const/high16 v1, 0x756b0000

    if-ne p2, v1, :cond_0

    .line 252
    const/16 v1, 0x443

    if-ne p1, v1, :cond_0

    .line 253
    const/16 v0, 0x75

    goto :goto_0

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        0x433 -> :sswitch_7
        0x437 -> :sswitch_6
        0x439 -> :sswitch_2
        0x43d -> :sswitch_8
        0x445 -> :sswitch_5
        0x446 -> :sswitch_4
        0x448 -> :sswitch_0
        0x449 -> :sswitch_1
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method public getCharacter(IZZ)S
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "isShifted"    # Z
    .param p3, "isAltgred"    # Z

    .prologue
    const/4 v4, 0x0

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "info":Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    const/16 v0, -0xff

    .line 87
    .local v0, "charCode":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    .line 88
    .local v2, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    .line 89
    .local v3, "sipLanuage":I
    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 91
    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 92
    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    check-cast v1, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    .line 95
    .restart local v1    # "info":Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    :cond_0
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    check-cast v1, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    .line 99
    .restart local v1    # "info":Lcom/diotek/ime/framework/input/hw/HwKeyInfo;
    :cond_1
    if-eqz v1, :cond_a

    .line 100
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isLithuanianAltGr(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 101
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getAltgredChar()I

    move-result v0

    .line 102
    if-eqz p2, :cond_2

    .line 103
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedAltgredChar()I

    move-result v0

    .line 121
    :cond_2
    :goto_0
    const/16 v5, -0xff

    if-ne v0, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    .line 126
    :goto_1
    int-to-short v4, v0

    return v4

    .line 105
    :cond_4
    const v5, 0x66724652

    if-eq v3, v5, :cond_5

    const/high16 v5, 0x66720000

    if-ne v3, v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 106
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 107
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedChar()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_6
    if-nez p2, :cond_7

    if-nez p3, :cond_7

    .line 112
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getNormalChar()I

    move-result v0

    goto :goto_0

    .line 113
    :cond_7
    if-eqz p2, :cond_8

    if-nez p3, :cond_8

    .line 114
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedChar()I

    move-result v0

    goto :goto_0

    .line 115
    :cond_8
    if-nez p2, :cond_9

    if-eqz p3, :cond_9

    .line 116
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getAltgredChar()I

    move-result v0

    goto :goto_0

    .line 118
    :cond_9
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedAltgredChar()I

    move-result v0

    goto :goto_0

    .line 123
    :cond_a
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    goto :goto_1
.end method

.method public getNordicSymbolPopupKey(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 191
    move v0, p1

    .line 192
    .local v0, "popupCode":I
    sparse-switch p1, :sswitch_data_0

    .line 215
    :goto_0
    return v0

    .line 195
    :sswitch_0
    const/16 v0, 0x40

    .line 196
    goto :goto_0

    .line 200
    :sswitch_1
    const/16 v0, 0x7b

    .line 201
    goto :goto_0

    .line 204
    :sswitch_2
    const/16 v0, 0x5b

    .line 205
    goto :goto_0

    .line 208
    :sswitch_3
    const/16 v0, 0x5d

    .line 209
    goto :goto_0

    .line 212
    :sswitch_4
    const/16 v0, 0x7d

    goto :goto_0

    .line 192
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2f -> :sswitch_1
        0x30 -> :sswitch_4
        0x32 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method public getPhonepadCharacters(I)[I
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "info":Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    const/4 v1, 0x0

    .line 133
    .local v1, "keyCodes":[I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    check-cast v0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    .line 137
    .restart local v0    # "info":Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    check-cast v0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    .line 141
    .restart local v0    # "info":Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;
    :cond_1
    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getKeyCodes()[I

    move-result-object v1

    .line 143
    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 144
    aget v3, v1, v2

    const/16 v4, -0xff

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    .line 150
    :cond_3
    :goto_0
    return-object v1

    .line 147
    :cond_4
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    goto :goto_0
.end method

.method public isEmptyKey()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    return v0
.end method

.method public setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 6
    .param p1, "lang"    # Lcom/diotek/ime/framework/common/Language;

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHWKeyboardCountryCode(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_5

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "lt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    :cond_1
    const-string v1, "en_US"

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    .line 172
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    .line 173
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    .line 180
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 181
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    .line 184
    :cond_4
    return-void

    .line 161
    :cond_5
    const-string v2, "%s_%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public toggleAltGrLt()V
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
