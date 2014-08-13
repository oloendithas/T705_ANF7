.class public abstract Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.super Ljava/lang/Object;
.source "AbstractInputEngine.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/InputEngine;


# instance fields
.field protected final DEBUG:Z

.field protected mActiveIndex:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field protected mSuggestionCount:I

.field protected mXt9AutoReplacementCondition:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->DEBUG:Z

    .line 30
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 31
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 32
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 33
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 36
    iput v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    .line 38
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mXt9AutoReplacementCondition:Z

    .line 41
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 43
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 45
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 46
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 49
    :cond_0
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_2

    .line 51
    const-string v0, "SamsungIME"

    const-string v1, "Could not get InputManager instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_3

    .line 53
    const-string v0, "SamsungIME"

    const-string v1, "Could not get Reopository instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_1

    .line 55
    const-string v0, "SamsungIME"

    const-string v1, "Could not get ShiftController instance!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public CommitAndInitText(I)V
    .locals 0
    .param p1, "cursor"    # I

    .prologue
    .line 684
    return-void
.end method

.method public DLMAddWord([CS)S
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public SetChangeMode(II)V
    .locals 0
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 690
    return-void
.end method

.method public SetInsertMode(II)V
    .locals 0
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 696
    return-void
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public addTextToHWRPanel(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "Text"    # Ljava/lang/CharSequence;

    .prologue
    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method public appendText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "Text"    # Ljava/lang/CharSequence;

    .prologue
    .line 793
    return-void
.end method

.method public breakContext()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "longBeforeText"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelTrace()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public checkChineseSequence()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 0
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;
    .param p2, "posOfBeforeText"    # [I
    .param p3, "posOfAfterText"    # [I

    .prologue
    .line 476
    return-void
.end method

.method public checkJapaneseSequence()Z
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x1

    return v0
.end method

.method public clearContext()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public clearInkContext()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public convetCangjieSpell()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteLdb(I)V
    .locals 0
    .param p1, "ldbCode"    # I

    .prologue
    .line 656
    return-void
.end method

.method public deleteWordFromLDB([CS)S
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 1
    .param p1, "bCommitSpace"    # Z

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public doNoteWordDoneForXt9WithoutIndex(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public doRecaptureForXt9(Ljava/lang/String;SZ)I
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "length"    # S
    .param p3, "force"    # Z

    .prologue
    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method public doResetMultitap()I
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public findWordFromDLM([CS)Z
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "wBufLen"    # S

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public freeResources()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 778
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveIndex([I)I
    .locals 2
    .param p1, "outIndex"    # [I

    .prologue
    const/4 v1, 0x0

    .line 81
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    aput v0, p1, v1

    .line 82
    return v1
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBestCandidate()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 788
    const-string v0, ""

    return-object v0
.end method

.method public getChar(C)I
    .locals 1
    .param p1, "outChar"    # C

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;)I
    .locals 1
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getCharSequence(Ljava/lang/StringBuilder;I)I
    .locals 1
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 1
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
    .line 311
    .local p1, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentInputBuffer(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "outSuggestion"    # Ljava/lang/StringBuilder;

    .prologue
    .line 596
    return-void
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExactCharSequence(Ljava/lang/StringBuilder;)I
    .locals 1
    .param p1, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-result v0

    return v0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 1
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
    .line 170
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getInputLanguageId()S
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public getInputSequenceCount()I
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public getInputTransResult()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallableLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 635
    const/16 v0, -0x12c

    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "regions"    # [Landroid/graphics/Rect;

    .prologue
    .line 661
    const/4 v0, -0x1

    return v0
.end method

.method public getLanguageIDForEngine(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiTapSequence(I)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 630
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;)I
    .locals 1
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
    .line 263
    .local p1, "spellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I
    .locals 1
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
    .line 293
    .local p2, "predictList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;)I
    .locals 1
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
    .line 181
    .local p1, "outSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->getSuggestion(Ljava/util/ArrayList;Z)I

    move-result v0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1
    .param p2, "inputText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestion(Ljava/util/ArrayList;Z)I
    .locals 1
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
    .line 187
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestionCount([I)I
    .locals 2
    .param p1, "outCount"    # [I

    .prologue
    const/4 v1, 0x0

    .line 87
    iget v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mSuggestionCount:I

    aput v0, p1, v1

    .line 88
    return v1
.end method

.method public getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .locals 0
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
    .line 192
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "outCharSequence"    # Ljava/lang/StringBuilder;

    .prologue
    .line 592
    return-void
.end method

.method public getVerbatim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXt9AutoReplacementCondition()Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public getXt9LanguageId(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 671
    const/4 v0, -0x1

    return v0
.end method

.method public getXt9Version()I
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public getXt9Version([SS[S)S
    .locals 1
    .param p1, "psCodeVerBuf"    # [S
    .param p2, "wBufMaxSize"    # S
    .param p3, "pwBufSize"    # [S

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasInputSequence()Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 760
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 0
    .param p1, "HWRKeyboard"    # Landroid/widget/FrameLayout;
    .param p2, "cursor"    # I

    .prologue
    .line 678
    return-void
.end method

.method public inputCharSequence(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "inCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public inputKey(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public inputKey(ILandroid/graphics/PointF;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public inputKeyWithoutBuild(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 819
    const/4 v0, -0x1

    return v0
.end method

.method public inputKeyWithoutBuild(ILandroid/graphics/PointF;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 813
    const/4 v0, -0x1

    return v0
.end method

.method public inputString(Ljava/lang/StringBuilder;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public inputStrokeData(III)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "action"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z
    .locals 1
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "pbAddSpace"    # [Z

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method protected isLanguageForToUseBestWord()Z
    .locals 4

    .prologue
    .line 61
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "nLanguage":I
    sparse-switch v0, :sswitch_data_0

    .line 70
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 68
    :sswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method public isNumericCharacter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivateImeOptionsCSC()Z
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public isTextCharacter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public isTreatedAsLetter(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public joinChunjiin(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 463
    const/4 v0, 0x0

    return-object v0
.end method

.method public joinHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method public joinNaragul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 469
    const/4 v0, 0x0

    return-object v0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public ldbUpdate()V
    .locals 0

    .prologue
    .line 651
    return-void
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 446
    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 0
    .param p1, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 210
    return-void
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)I
    .locals 1
    .param p1, "selectedArrayIndex"    # I
    .param p2, "resultString"    # Ljava/lang/String;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public processTrace([Landroid/graphics/PointF;IB)S
    .locals 1
    .param p1, "pTracePoints"    # [Landroid/graphics/PointF;
    .param p2, "nTracePointCount"    # I
    .param p3, "bCurrIndexInList"    # B

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public recognize(IZ)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "force"    # Z

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public reflashSelectList()I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public refreshContextBuffer(Z)I
    .locals 1
    .param p1, "containCurrentWord"    # Z

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public refreshContextBuffer(ZZ)I
    .locals 1
    .param p1, "containCurrentWord"    # Z
    .param p2, "flag"    # Z

    .prologue
    .line 724
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public removeTerm(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 512
    return-void
.end method

.method public replaceKey(ILandroid/graphics/PointF;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public resetDLMData()S
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return v0
.end method

.method public resetTextFieldState()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 754
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActiveIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 77
    return-void
.end method

.method public setActiveWordStatusChangable(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 428
    return-void
.end method

.method public setChineseFuzzyPinyin()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 0
    .param p1, "nPhoneticIndex"    # I

    .prologue
    .line 252
    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "contextAwareUniqueID"    # Ljava/lang/String;

    .prologue
    .line 602
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 744
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 488
    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 386
    return-void
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 749
    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 0
    .param p1, "trueOrFalse"    # Z

    .prologue
    .line 614
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 392
    return-void
.end method

.method public setKeyboardOffset(II)V
    .locals 0
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 380
    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 374
    return-void
.end method

.method public setOnInputStrokeCallback(Lcom/diotek/ime/framework/engine/dhwr/AddStroke;)V
    .locals 0
    .param p1, "callBack"    # Lcom/diotek/ime/framework/engine/dhwr/AddStroke;

    .prologue
    .line 416
    return-void
.end method

.method public setOptionsByState()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public setUsingLanguage(I)I
    .locals 1
    .param p1, "languageCode"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public setVerbatim(Ljava/lang/String;)V
    .locals 0
    .param p1, "verbatim"    # Ljava/lang/String;

    .prologue
    .line 494
    return-void
.end method

.method public setVerbatirmsInPrediction(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 506
    .local p1, "verbatims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public setXt9AutoReplacementCondition(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 808
    return-void
.end method

.method public splitHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAcuteAccentState(Z)V
    .locals 0
    .param p1, "isAcuteAccent"    # Z

    .prologue
    .line 410
    return-void
.end method

.method public updateEngine()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p2, "currntWord"    # Ljava/lang/StringBuilder;
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
    .line 641
    .local p1, "touchInfos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;>;"
    return-void
.end method

.method public updateSelectList()I
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public updateShiftState()V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public writeWordToDLM([CIIZZ)S
    .locals 1
    .param p1, "psBuf"    # [C
    .param p2, "dwBufLen"    # I
    .param p3, "dwLdbNum"    # I
    .param p4, "bHighQuality"    # Z
    .param p5, "bSentenceBased"    # Z

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method
