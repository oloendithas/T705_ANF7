.class public Lcom/diotek/ime/framework/repository/InputStatus;
.super Ljava/lang/Object;
.source "InputStatus.java"


# static fields
.field public static INPUT_PROCESS_KEY:I

.field public static INPUT_PROCESS_TOUCH:I

.field private static sInstance:Lcom/diotek/ime/framework/repository/InputStatus;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mHangulDeleteLength:I

.field private mInputNumberOnComposing:Z

.field private mIsCjiTurboKeyLongpress:Z

.field private mIsComposedByRecapturing:Z

.field private mIsEnableTrace:Z

.field private mIsHwKeyInput:Z

.field private mIsKNOXStatus:Z

.field private mIsKeyLongpressed:Z

.field private mIsNoEmoticon:Z

.field private mIsPhonepadPopupNumberInput:Z

.field private mLastInputProcess:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_TOUCH:I

    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_KEY:I

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsEnableTrace:Z

    .line 22
    sget v0, Lcom/diotek/ime/framework/repository/InputStatus;->INPUT_PROCESS_TOUCH:I

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mLastInputProcess:I

    .line 24
    iput-object v1, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 25
    iput-object v1, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 28
    return-void
.end method

.method public static getHangulDeleteLength()I
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 128
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 130
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mHangulDeleteLength:I

    return v0
.end method

.method public static getLastInputProcess()I
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 224
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 226
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mLastInputProcess:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 32
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 34
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    .line 35
    iput-boolean v2, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mInputNumberOnComposing:Z

    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_HW_KEY_INPUT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsHwKeyInput:Z

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PHONE_POPUP_NUMBER_INPUT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsPhonepadPopupNumberInput:Z

    .line 38
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_RECAPTURING"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsComposedByRecapturing:Z

    .line 39
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_KEY_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKeyLongpressed:Z

    .line 40
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "HANGUL_DELETE_LENGTH"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mHangulDeleteLength:I

    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_CJI_TURBO_KEY_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsCjiTurboKeyLongpress:Z

    .line 42
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_IS_NO_EMOTICON_MODE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsNoEmoticon:Z

    .line 45
    :cond_0
    return-void
.end method

.method private initailize()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/InputStatus;->init()V

    .line 51
    :cond_1
    return-void
.end method

.method public static isCjiTurboKeyLongpress()Z
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 160
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 162
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsCjiTurboKeyLongpress:Z

    return v0
.end method

.method public static isComposedByRecapturing()Z
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 112
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 114
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsComposedByRecapturing:Z

    return v0
.end method

.method public static isEnableTrace()Z
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 208
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 210
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsEnableTrace:Z

    return v0
.end method

.method public static isHwKeyInput()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 56
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 58
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsHwKeyInput:Z

    return v0
.end method

.method public static isInputNumberOnComposing()Z
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 80
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 82
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mInputNumberOnComposing:Z

    return v0
.end method

.method public static isKNOXStatus()Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 192
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 194
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKNOXStatus:Z

    return v0
.end method

.method public static isKeyLongpressed()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 144
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 146
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKeyLongpressed:Z

    return v0
.end method

.method public static isNoEmoticonInput()Z
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 176
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 178
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsNoEmoticon:Z

    return v0
.end method

.method public static isPhonepadPopupNumberInput()Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 96
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 98
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsPhonepadPopupNumberInput:Z

    return v0
.end method

.method public static setEnableTrace(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 198
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 200
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 202
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsEnableTrace:Z

    .line 203
    return-void
.end method

.method public static setFlagCjiTurboKeyLongpress(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 150
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 152
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 154
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsCjiTurboKeyLongpress:Z

    .line 155
    return-void
.end method

.method public static setFlagComposedByRecapturing(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 102
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 104
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 106
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsComposedByRecapturing:Z

    .line 107
    return-void
.end method

.method public static setFlagHwKeyInput(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 62
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 64
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 66
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsHwKeyInput:Z

    .line 67
    return-void
.end method

.method public static setFlagInputNumberOnComposing(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 70
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 72
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 74
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mInputNumberOnComposing:Z

    .line 75
    return-void
.end method

.method public static setFlagKeyLongpressed(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 134
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 136
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 138
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKeyLongpressed:Z

    .line 139
    return-void
.end method

.method public static setFlagPhonepadPopupNumberInput(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 86
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 88
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 90
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsPhonepadPopupNumberInput:Z

    .line 91
    return-void
.end method

.method public static setHangulDeleteLength(I)V
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 118
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 120
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 122
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mHangulDeleteLength:I

    .line 123
    return-void
.end method

.method public static setKNOXStatus(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 182
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 184
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 186
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsKNOXStatus:Z

    .line 187
    return-void
.end method

.method public static setLastInputProcess(I)V
    .locals 1
    .param p0, "lastInputProcess"    # I

    .prologue
    .line 214
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 216
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 218
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mLastInputProcess:I

    .line 219
    return-void
.end method

.method public static setNoEmoticonInput(Z)V
    .locals 1
    .param p0, "flag"    # Z

    .prologue
    .line 166
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    .line 168
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->initailize()V

    .line 170
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputStatus;->mIsNoEmoticon:Z

    .line 171
    return-void
.end method
