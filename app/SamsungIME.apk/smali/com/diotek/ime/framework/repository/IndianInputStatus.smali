.class public Lcom/diotek/ime/framework/repository/IndianInputStatus;
.super Ljava/lang/Object;
.source "IndianInputStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mCombinationAvailable:Z

.field private mIsLowEnd:Z

.field private mUseToggleIndianConsonant:Z

.field private mUseToggleIndianConsonantLongpress:Z

.field private mUseToggleIndianVoMatra:Z

.field private mVowelRowMax:I

.field private mVowelRowShifted:Z

.field private mVowelRowState:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 19
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 23
    return-void
.end method

.method public static declared-synchronized IsLowEnd()Z
    .locals 2

    .prologue
    .line 105
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 107
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 109
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mIsLowEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getVowelRowMax()I
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 75
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 77
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getVowelRowState()I
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 59
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 61
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 27
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    .line 29
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "VOWEL_ROW_STATE"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowState:I

    .line 31
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "VOWEL_ROW_SHIFTED"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowShifted:Z

    .line 32
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "VOWEL_ROW_MAX"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowMax:I

    .line 33
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "IS_LOW_END"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mIsLowEnd:Z

    .line 34
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_TOGGLE_INDIAN_CONSONANT"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonant:Z

    .line 35
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_TOGGLE_INDIAN_CONSONANT_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonantLongpress:Z

    .line 36
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_USE_TOGGLE_INDIAN_VO_MATRA"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianVoMatra:Z

    .line 37
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_COMBINATION"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mCombinationAvailable:Z

    .line 40
    :cond_0
    return-void
.end method

.method private initailize()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->init()V

    .line 46
    :cond_1
    return-void
.end method

.method public static declared-synchronized isCombinationAvailable()Z
    .locals 2

    .prologue
    .line 169
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 171
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 173
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mCombinationAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isToggleIndianConsonantAvailable()Z
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 123
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 125
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isToggleIndianConsonantLongpressAvailable()Z
    .locals 2

    .prologue
    .line 137
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 139
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 141
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonantLongpress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isToggleIndianVoMatraAvailable()Z
    .locals 2

    .prologue
    .line 153
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 155
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 157
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianVoMatra:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isVowelRowShifted()Z
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 91
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 93
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowShifted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setCombinationAvailable(Z)V
    .locals 2
    .param p0, "combination"    # Z

    .prologue
    .line 161
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 163
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 165
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mCombinationAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v1

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLowEndFlag(Z)V
    .locals 2
    .param p0, "lowEnd"    # Z

    .prologue
    .line 97
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 99
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 101
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mIsLowEnd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v1

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setToggleIndianConsonantAvailable(Z)V
    .locals 2
    .param p0, "useToggleIndianConsonant"    # Z

    .prologue
    .line 113
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 115
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 117
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v1

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setToggleIndianConsonantLongpressAvailable(Z)V
    .locals 2
    .param p0, "useToggleIndianConsonantLongpress"    # Z

    .prologue
    .line 129
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 131
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 133
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianConsonantLongpress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setToggleIndianVoMatraAvailable(Z)V
    .locals 2
    .param p0, "useToggleIndianVoMatra"    # Z

    .prologue
    .line 145
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 147
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 149
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mUseToggleIndianVoMatra:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit v1

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVowelRowMax(I)V
    .locals 2
    .param p0, "max"    # I

    .prologue
    .line 65
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 67
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 69
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v1

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVowelRowShifted(Z)V
    .locals 2
    .param p0, "shifted"    # Z

    .prologue
    .line 81
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 83
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 85
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput-boolean p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowShifted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setVowelRowState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 49
    const-class v1, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    .line 51
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->initailize()V

    .line 53
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->sInstance:Lcom/diotek/ime/framework/repository/IndianInputStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/IndianInputStatus;->mVowelRowState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
