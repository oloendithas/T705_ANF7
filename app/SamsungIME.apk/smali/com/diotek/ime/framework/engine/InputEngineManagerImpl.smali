.class public final Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;
.super Ljava/lang/Object;
.source "InputEngineManagerImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/InputEngineManager;


# static fields
.field private static final ENGINE_TYPE_CANDIDATE:I = 0x1

.field private static final ENGINE_TYPE_MAX:I = 0x2

.field private static final ENGINE_TYPE_RECOGNITION:I

.field private static sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;


# instance fields
.field private mCurrentEngineIndex:I

.field private mCurrentHWInputEngineIndex:I

.field private mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 32
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 34
    check-cast v0, [[Lcom/diotek/ime/framework/engine/InputEngine;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    .line 35
    iput v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    .line 36
    iput v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    .line 46
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 47
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;
    .locals 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-nez v0, :cond_0

    .line 40
    const-string v0, "SamsungIME"

    const-string v1, "Engine manager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-object v0
.end method

.method public static newInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    return-object v0
.end method


# virtual methods
.method public DLMAddWord([CS)S
    .locals 3
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->DLMAddWord([CS)S

    move-result v0

    .line 962
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public VOHWRCommitAndInit(I)V
    .locals 3
    .param p1, "cursor"    # I

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->CommitAndInitText(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public VOHWRSetChangeMode(II)V
    .locals 3
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->SetChangeMode(II)V

    .line 334
    :cond_0
    return-void
.end method

.method public VOHWRSetInsertMode(II)V
    .locals 3
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->SetInsertMode(II)V

    .line 344
    :cond_0
    return-void
.end method

.method public VOHWRaddTextToHWRPanel(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->addTextToHWRPanel(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 324
    :cond_0
    return v0
.end method

.method public VOHWRappendText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->appendText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    return-void
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->addMyWord(Ljava/lang/CharSequence;)I

    move-result v0

    .line 768
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public breakContext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 737
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->breakContext()V

    .line 741
    :cond_0
    return-void
.end method

.method public breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "longBeforeText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 857
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelTrace()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 988
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->cancelTrace()Z

    move-result v0

    .line 994
    :cond_0
    return v0
.end method

.method public checkChineseSequence()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1117
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->checkChineseSequence()V

    .line 1122
    :cond_0
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 3
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;
    .param p2, "posOfBeforeText"    # [I
    .param p3, "posOfAfterText"    # [I

    .prologue
    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V

    .line 853
    :cond_0
    return-void
.end method

.method public checkJapaneseSequence()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1126
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->checkJapaneseSequence()Z

    move-result v0

    .line 1131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearContext()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    .line 274
    :cond_1
    return v2
.end method

.method public clearContextForHwKeyboard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1086
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    .line 1093
    :cond_1
    return-void
.end method

.method public clearInkContext()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->clearInkContext()I

    .line 284
    :cond_0
    return v2
.end method

.method public convetCangjieSpell()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->convetCangjieSpell()Ljava/lang/CharSequence;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createInputEngineArray(I)Z
    .locals 2
    .param p1, "amount"    # I

    .prologue
    .line 461
    if-gtz p1, :cond_0

    .line 462
    const-string v0, "SamsungIME"

    const-string v1, "Module array creating fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    .line 468
    :goto_0
    return v0

    .line 466
    :cond_0
    const/4 v0, 0x2

    filled-new-array {p1, v0}, [I

    move-result-object v0

    const-class v1, Lcom/diotek/ime/framework/engine/InputEngine;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/diotek/ime/framework/engine/InputEngine;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    .line 468
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteWordFromLDB([CS)S
    .locals 3
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    const/4 v2, 0x0

    .line 977
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->deleteWordFromLDB([CS)S

    move-result v0

    .line 982
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 3
    .param p1, "bCommitSpace"    # Z

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->doNextWordPredictionForXt9(Z)I

    move-result v0

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 581
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->doNoteWordDoneForXt9(I)I

    move-result v0

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doNoteWordDoneForXt9WithoutIndex(I)I
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->doNoteWordDoneForXt9WithoutIndex(I)I

    move-result v0

    .line 596
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 3
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "length"    # S
    .param p3, "force"    # Z

    .prologue
    const/4 v2, 0x1

    .line 561
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v0

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public doResetMultitap()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 619
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->doResetMultitap()I

    move-result v0

    .line 623
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public findWordFromDLM([CS)Z
    .locals 3
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    const/4 v0, 0x0

    .line 1013
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->findWordFromDLM([CS)Z

    move-result v0

    .line 1017
    :cond_0
    return v0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 754
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    .line 759
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public freeResources()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 240
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_3

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v3

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->freeResources()I

    .line 246
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aput-object v2, v1, v3

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->freeResources()I

    .line 251
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, v0

    aput-object v2, v1, v4

    .line 242
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 254
    check-cast v1, [[Lcom/diotek/ime/framework/engine/InputEngine;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    .line 256
    sget-object v1, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    if-eqz v1, :cond_3

    .line 257
    sput-object v2, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->sInstance:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 260
    .end local v0    # "i":I
    :cond_3
    return v3
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1411
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveIndex([I)I
    .locals 3
    .param p1, "outIndex"    # [I

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getActiveIndex([I)I

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableLanguages(I)Ljava/util/List;
    .locals 3
    .param p1, "handwritingEngineIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1057
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->getAvailableLanguages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1063
    :goto_0
    return-object v1

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SamsungIME"

    const-string v2, "InputEngineManagerImpl.getAvailableLanguages() IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestCandidate()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1433
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getBestCandidate()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1439
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getChar(C)I
    .locals 3
    .param p1, "outChar"    # C

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getChar(C)I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 3
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getCharSequence(Ljava/lang/StringBuilder;I)I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCharSequenceForHwKeyboard(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 550
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getChineseWordCandidate(Ljava/util/ArrayList;I)I

    move-result v0

    .line 555
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1163
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getContextAwareUniqueID()Ljava/lang/String;

    move-result-object v0

    .line 1168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentEngineIndex()I
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    return v0
.end method

.method public getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "outSuggestion"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    .line 1145
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    .line 1150
    :cond_0
    return-void
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1107
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    .line 1112
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getExactCharSequence(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getHwrSuggestion(Ljava/util/ArrayList;)I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInputLanguageId()S
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1422
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getInputLanguageId()S

    move-result v0

    .line 1428
    :cond_0
    return v0
.end method

.method public getInputSequenceCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1307
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getInputSequenceCount()I

    move-result v0

    .line 1312
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    .line 430
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstallableLanguages(I)Ljava/util/List;
    .locals 3
    .param p1, "handwritingEngineIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->getInstallableLanguages()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1076
    :goto_0
    return-object v1

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "SamsungIME"

    const-string v2, "InputEngineManagerImpl.getInstallableLanguages() IndexOutOfBoundsException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyPositionByTap(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x0

    .line 1202
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getKeyPositionByTap(II)I

    move-result v0

    .line 1207
    :cond_0
    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "regions"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 1249
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getKeyPositions([Landroid/graphics/Rect;)I

    move-result v0

    .line 1253
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1192
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getMultiTapSequence(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    move-result v0

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 3
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "predictList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v0

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSuggestion(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, v2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 3
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p1, "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x1

    .line 198
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSuggestionActiveIndex()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 1024
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1025
    .local v0, "outIndex":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getActiveIndex([I)I

    .line 1026
    aget v1, v0, v1

    .line 1029
    .end local v0    # "outIndex":[I
    :cond_0
    return v1
.end method

.method public getSuggestionCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1043
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    .line 1045
    new-array v0, v4, [I

    .line 1046
    .local v0, "outCount":[I
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestionCount([I)I

    .line 1047
    aget v1, v0, v1

    .line 1050
    .end local v0    # "outCount":[I
    :cond_0
    return v1
.end method

.method public getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "isNextWordPrediction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V

    .line 193
    :cond_0
    return-void
.end method

.method public getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1136
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V

    .line 1141
    :cond_0
    return-void
.end method

.method public getVerbatim()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 889
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getVerbatim()Ljava/lang/String;

    move-result-object v0

    .line 895
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXt9AutoReplacementCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1443
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1445
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getXt9AutoReplacementCondition()Z

    move-result v0

    .line 1449
    :cond_0
    return v0
.end method

.method public getXt9LanguageId(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 1258
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 1260
    .local v1, "xt9Version":I
    const/4 v0, 0x0

    .line 1261
    .local v0, "indexEngine":I
    packed-switch v1, :pswitch_data_0

    .line 1270
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    .line 1271
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->getXt9LanguageId(I)I

    move-result v2

    .line 1273
    .end local v0    # "indexEngine":I
    .end local v1    # "xt9Version":I
    :goto_1
    return v2

    .line 1264
    .restart local v0    # "indexEngine":I
    .restart local v1    # "xt9Version":I
    :pswitch_0
    const/4 v0, 0x0

    .line 1265
    goto :goto_0

    .line 1267
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 1273
    .end local v0    # "indexEngine":I
    .end local v1    # "xt9Version":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    .line 1261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getXt9Version()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1182
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->getXt9Version()I

    move-result v0

    .line 1187
    :cond_0
    return v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1400
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInputSequence()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1221
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->hasInputSequence()Z

    move-result v0

    .line 1226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1378
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 3
    .param p1, "HWRKeyboard"    # Landroid/widget/FrameLayout;
    .param p2, "cursor"    # I

    .prologue
    const/4 v2, 0x0

    .line 675
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    .line 679
    :cond_0
    return-void
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "inCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputCharSequence(Ljava/lang/CharSequence;)I

    move-result v0

    .line 173
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKey(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKey(I)I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x0

    .line 782
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    .line 787
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyForHwKeyboard(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKey(I)I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyWithoutBuild(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    .line 1472
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKeyWithoutBuild(I)I

    move-result v0

    .line 1477
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x0

    .line 1462
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->inputKeyWithoutBuild(ILandroid/graphics/PointF;)I

    move-result v0

    .line 1467
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputString(Ljava/lang/StringBuilder;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 773
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->inputString(Ljava/lang/StringBuilder;)I

    move-result v0

    .line 777
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public inputStrokeData(III)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->inputStrokeData(III)Z

    move-result v0

    .line 104
    :cond_0
    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 3
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "pbAddSpace"    # [Z

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v0

    .line 636
    :cond_0
    return v0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isContainInLanguageDB(Ljava/lang/String;)Z

    move-result v0

    .line 1302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNumericCharacter(I)Z
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 406
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isNumericCharacter(I)Z

    move-result v0

    .line 411
    :cond_0
    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 1327
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isSentenceTermPunct(I)Z

    move-result v0

    .line 1332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 1317
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isSentenceTermPunct(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextCharacter(I)Z
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isTextCharacter(I)Z

    move-result v0

    .line 391
    :cond_0
    return v0
.end method

.method public isTextCharacterForHwKeyboard(I)Z
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isTextCharacter(I)Z

    move-result v0

    .line 401
    :cond_0
    return v0
.end method

.method public isTreatedAsLetter(I)Z
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x1

    .line 1337
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->isTreatedAsLetter(I)Z

    move-result v0

    .line 1342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 825
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->joinChunjiin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public joinNaragul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->joinNaragul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1389
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 935
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->learnSequence(Ljava/lang/String;)V

    .line 941
    :cond_0
    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 5
    .param p1, "suggestion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->learnTempSuggestion(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->learnTempSuggestion(Ljava/lang/String;)V

    .line 235
    :cond_1
    return-void
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)I
    .locals 3
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->onHwrPanelLongPressed(ILjava/lang/String;)I

    move-result v0

    .line 545
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processTrace([Landroid/graphics/PointF;IB)S
    .locals 3
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "bCurrIndexInList"    # B

    .prologue
    const/4 v2, 0x0

    .line 643
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/InputEngine;->processTrace([Landroid/graphics/PointF;IB)S

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->processWhenPickSuggestionManually(I)I

    .line 606
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    if-eq v1, v2, :cond_0

    .line 608
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->processWhenPickSuggestionManually(I)I

    .line 614
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public recognize(IZ)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->recognize(IZ)I

    move-result v0

    .line 514
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reflashSelectList()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->reflashSelectList()I

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public refreshContextBuffer(Z)I
    .locals 3
    .param p1, "containCurrentWord"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1278
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->refreshContextBuffer(Z)I

    move-result v0

    .line 1283
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public refreshContextBuffer(ZZ)I
    .locals 3
    .param p1, "containCurrentWord"    # Z
    .param p2, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1288
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->refreshContextBuffer(ZZ)I

    move-result v0

    .line 1293
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->release()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->release()V

    .line 698
    :cond_1
    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 923
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->removeCurrentTermFromTemporaryModel()V

    .line 930
    :cond_0
    return-void
.end method

.method public removeTerm(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->removeTerm(I)V

    .line 919
    :cond_0
    return-void
.end method

.method public replaceKey(ILandroid/graphics/PointF;)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/4 v2, 0x0

    .line 792
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->replaceKey(ILandroid/graphics/PointF;)I

    move-result v0

    .line 797
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resetDLMData()S
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1004
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->resetDLMData()S

    move-result v0

    .line 1008
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public resetTextFieldState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 945
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->resetTextFieldState()V

    .line 952
    :cond_0
    return-void
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1367
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 745
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setActiveWordStatusChangable(Z)V

    .line 750
    :cond_0
    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->setChineseFuzzyPinyin()V

    .line 449
    :cond_0
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 3
    .param p1, "nPhoneticIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setChinesePhoneticIndex(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 3
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1154
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setContextAwareUniqueID(Ljava/lang/String;)V

    .line 1159
    :cond_0
    return-void
.end method

.method public setCurrentEngineIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 500
    iget v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngine;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    .line 504
    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    .line 505
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 1347
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setFieldSpecificType(I)V

    .line 1353
    :cond_0
    return-void
.end method

.method public setHWInputEngineIndex(I)V
    .locals 0
    .param p1, "currentHWInputEngineIndex"    # I

    .prologue
    .line 1081
    iput p1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    .line 1082
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 867
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setHandler(Landroid/os/Handler;)V

    .line 873
    :cond_0
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/InputEngine;->setHwrPanelRect(IIII)V

    .line 670
    :cond_0
    return-void
.end method

.method public setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "recogintion"    # Lcom/diotek/ime/framework/engine/InputEngine;
    .param p3, "candidate"    # Lcom/diotek/ime/framework/engine/InputEngine;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    .line 474
    :cond_0
    const-string v0, "SamsungIME"

    const-string v2, "Input engine setting fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 483
    :goto_0
    return v0

    .line 477
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, p1

    aput-object p2, v2, v1

    .line 478
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, p1

    aget-object v1, v2, v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->init()I

    .line 480
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    aput-object p3, v1, v0

    .line 481
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngine;->init()I

    goto :goto_0
.end method

.method public setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "recogintion"    # Lcom/diotek/ime/framework/engine/InputEngine;
    .param p3, "candidate"    # Lcom/diotek/ime/framework/engine/InputEngine;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    array-length v2, v2

    if-gt v2, p1, :cond_1

    .line 489
    :cond_0
    const-string v0, "SamsungIME"

    const-string v2, "Input engine setting fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 495
    :goto_0
    return v0

    .line 492
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v2, v2, p1

    aput-object p2, v2, v1

    .line 493
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    aget-object v1, v1, p1

    aput-object p3, v1, v0

    goto :goto_0
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1357
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setIntentionalEvent(Ljava/lang/String;)V

    .line 1363
    :cond_0
    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 3
    .param p1, "trueOrFalse"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1173
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setIsPrivateImeOptionsCSC(Z)V

    .line 1178
    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 3
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    const/4 v2, 0x0

    .line 684
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 688
    :cond_0
    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->setKeyboardSize(II)V

    .line 660
    :cond_0
    return-void
.end method

.method public setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V
    .locals 3
    .param p1, "callBack"    # Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V

    .line 732
    :cond_0
    return-void
.end method

.method public setOptionsByState()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->setOptionsByState()I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setSuggestionActiveIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1034
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setActiveIndex(I)V

    .line 1039
    :cond_0
    return-void
.end method

.method public setVerbatim(Ljava/lang/String;)V
    .locals 3
    .param p1, "verbatim"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 878
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setVerbatim(Ljava/lang/String;)V

    .line 884
    :cond_0
    return-void
.end method

.method public setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 901
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    .line 908
    :cond_0
    return-void
.end method

.method public setXt9AutoReplacementCondition(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1453
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1454
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->setXt9AutoReplacementCondition(Z)V

    .line 1458
    :cond_0
    return-void
.end method

.method public splitHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAcuteAccentState(Z)V
    .locals 3
    .param p1, "isAcuteAccent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->updateAcuteAccentState(Z)V

    .line 723
    :cond_0
    return-void
.end method

.method public updateEngine()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, "result":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, "language":I
    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 356
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateEngine()I

    .line 357
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    .line 358
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngine;->setUsingLanguage(I)I

    .line 360
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateShiftState()V

    .line 361
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->setOptionsByState()I

    .line 364
    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    if-eq v3, v4, :cond_1

    .line 365
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateEngine()I

    .line 368
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->clearContext()I

    .line 369
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngine;->setUsingLanguage(I)I

    .line 371
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->updateShiftState()V

    .line 372
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v4, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentHWInputEngineIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngine;->setOptionsByState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1    # "language":I
    :cond_1
    :goto_0
    return v6

    .line 375
    .restart local v1    # "language":I
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "InputEngineManagerImpl"

    const-string v4, "InputEngineManagerImpl.updateEngine(): Reached in exception , Returned zero"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p2, "currentWord"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "touchInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;>;"
    const/4 v2, 0x0

    .line 1212
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    .line 1217
    :cond_0
    return-void
.end method

.method public updateLdbList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1232
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->ldbUpdate()V

    .line 1236
    :cond_0
    return-void
.end method

.method public updateLdbListDelete(I)V
    .locals 3
    .param p1, "ldbCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1241
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngine;->deleteLdb(I)V

    .line 1245
    :cond_0
    return-void
.end method

.method public updateSelectList()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1097
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->updateSelectList()I

    move-result v0

    .line 1102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateShiftState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->updateShiftState()V

    .line 457
    :cond_0
    return-void
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->wordSelected(ILjava/lang/CharSequence;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngine;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->writeDBdataToFileOnFinishInput()V

    .line 707
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v2, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v1, v1, v2

    aget-object v1, v1, v3

    if-eq v0, v1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngine;->writeDBdataToFileOnFinishInput()V

    .line 714
    :cond_0
    return-void
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 6
    .param p1, "psBuf"    # [C
    .param p2, "dwBufLen"    # I
    .param p3, "dwLdbNum"    # I
    .param p4, "bHighQuality"    # Z
    .param p5, "bSentenceBased"    # Z

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mInputEngines:[[Lcom/diotek/ime/framework/engine/InputEngine;

    iget v1, p0, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->mCurrentEngineIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/InputEngine;->writeWordToDLM([CIIZZ)S

    move-result v0

    .line 973
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
