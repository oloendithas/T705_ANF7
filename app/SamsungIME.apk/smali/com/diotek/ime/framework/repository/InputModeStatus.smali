.class public Lcom/diotek/ime/framework/repository/InputModeStatus;
.super Ljava/lang/Object;
.source "InputModeStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mForceSetHWRMode:Z

.field private mHwrPreviousInputMethod:I

.field private mInputMethod:I

.field private mInputRange:I

.field private mIsHwrMode:Z

.field private mLastUsedMmKeyCode:I

.field private mMultiModalKeyInputMethod:I

.field private mNumberAndSymbolsKeypadType:I

.field private mPreferenceInputMethod:I

.field private mPreferenceInputMethodOnKor:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mForceSetHWRMode:Z

    .line 22
    iput-object v1, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 23
    iput-object v1, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 27
    return-void
.end method

.method public static declared-synchronized getHwrPreviousInputMethod()I
    .locals 2

    .prologue
    .line 86
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 88
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 90
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mHwrPreviousInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInputMethodStatus()I
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 56
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 58
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInputRange()I
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 72
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 74
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mInputRange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLastUsedMmKeyCode()I
    .locals 2

    .prologue
    .line 134
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 136
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 138
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mLastUsedMmKeyCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMultiModalKeyInputMethod()I
    .locals 2

    .prologue
    .line 118
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 120
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 122
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mMultiModalKeyInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNumberAndSymbolsKeypadType()I
    .locals 2

    .prologue
    .line 182
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 184
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 186
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mNumberAndSymbolsKeypadType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceInputMethod()I
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 104
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 106
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mPreferenceInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceInputMethodOnKor()I
    .locals 2

    .prologue
    .line 150
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 152
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 154
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mPreferenceInputMethodOnKor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 31
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 33
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mInputMethod:I

    .line 35
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_RANGE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mInputRange:I

    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PREVIOUS_INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mHwrPreviousInputMethod:I

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PREFERENCE_INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mPreferenceInputMethod:I

    .line 38
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "MM_KEY_INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mMultiModalKeyInputMethod:I

    .line 39
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "LAST_USED_MM_KEY_CODE"

    const/16 v2, -0x85

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mLastUsedMmKeyCode:I

    .line 40
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KOREAN_3X4_KEYPAD_TYPE_ON_KOR"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mPreferenceInputMethodOnKor:I

    .line 41
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "HWR_MODE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mIsHwrMode:Z

    .line 42
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mNumberAndSymbolsKeypadType:I

    .line 45
    :cond_0
    return-void
.end method

.method private declared-synchronized initailize()V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/InputModeStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized isForceSetHWRMode()Z
    .locals 2

    .prologue
    .line 206
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 208
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 210
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mForceSetHWRMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isHwrMode()Z
    .locals 2

    .prologue
    .line 166
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 168
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 170
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mIsHwrMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFlagIsHwrMode(Z)V
    .locals 2
    .param p0, "isHwr"    # Z

    .prologue
    .line 174
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 176
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 178
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mIsHwrMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v1

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setForceSetHWRMode(Z)V
    .locals 2
    .param p0, "forceSet"    # Z

    .prologue
    .line 198
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 200
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 202
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mForceSetHWRMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v1

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setHwrPreviousInputMethod(I)V
    .locals 2
    .param p0, "method"    # I

    .prologue
    .line 94
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 96
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 98
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mHwrPreviousInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v1

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setInputMethodStatus(I)V
    .locals 2
    .param p0, "method"    # I

    .prologue
    .line 62
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 64
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 66
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setInputRange(I)V
    .locals 2
    .param p0, "range"    # I

    .prologue
    .line 78
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 80
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 82
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mInputRange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLastUsedMmKeyCode(I)V
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 142
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 144
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 146
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mLastUsedMmKeyCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v1

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMultiModalKeyInputMethod(I)V
    .locals 2
    .param p0, "method"    # I

    .prologue
    .line 126
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 128
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 130
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mMultiModalKeyInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v1

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setNumberAndSymbolsKeypadType(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 190
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 192
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 194
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mNumberAndSymbolsKeypadType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit v1

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceInputMethod(I)V
    .locals 2
    .param p0, "method"    # I

    .prologue
    .line 110
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 112
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 114
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mPreferenceInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v1

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceInputMethodOnKor(I)V
    .locals 2
    .param p0, "method"    # I

    .prologue
    .line 158
    const-class v1, Lcom/diotek/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    .line 160
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->initailize()V

    .line 162
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->sInstance:Lcom/diotek/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/InputModeStatus;->mPreferenceInputMethodOnKor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit v1

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
