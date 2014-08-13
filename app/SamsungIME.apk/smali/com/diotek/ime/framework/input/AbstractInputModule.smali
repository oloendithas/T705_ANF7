.class public abstract Lcom/diotek/ime/framework/input/AbstractInputModule;
.super Ljava/lang/Object;
.source "AbstractInputModule.java"

# interfaces
.implements Lcom/diotek/ime/framework/input/InputModule;


# static fields
.field public static IS_PLUS_MYANMAR:Z

.field protected static mSwiftKeyCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field protected mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

.field protected mBackupCandidate:Ljava/lang/StringBuilder;

.field protected final mCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentSequenceString:Ljava/lang/StringBuilder;

.field protected mDeleteCount:I

.field protected mDirtyComposing:Z

.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field public mHWRCandidateStatus:I

.field protected mIgnorePredictionWord:Z

.field private mIndexOfInputBuffer:I

.field protected mInputLanguage:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsBeforeTraceInput:Z

.field protected mIsDisableAddwordbyCSC:Z

.field protected mIsDisableAddwordbyCheckLDB:Z

.field protected mIsKorMode:Z

.field protected mIsPredictionOn:Z

.field protected mIsTraceInput:Z

.field protected mIsTraceOn:Z

.field protected mIsVietnameseTelexInput:Z

.field protected mLastKeyCode:I

.field protected mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

.field protected mPickSuggestionIndex:I

.field protected mPosNextText:I

.field protected mPosPrevText:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field protected mStateCandidate:I

.field private mStatusLock:Z

.field private mTimeoutComposingLength:I

.field protected mTimmerHandler:Landroid/os/Handler;

.field protected mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

.field private mWordDividerIndexList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mXt9Version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 57
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 58
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 59
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 60
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 61
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 62
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 63
    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    .line 64
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIgnorePredictionWord:Z

    .line 65
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 66
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    .line 67
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 68
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    .line 76
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    .line 79
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    .line 80
    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    .line 81
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 82
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    .line 83
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mXt9Version:I

    .line 86
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimeoutComposingLength:I

    .line 87
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    .line 88
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCheckLDB:Z

    .line 89
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDirtyComposing:Z

    .line 92
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsBeforeTraceInput:Z

    .line 94
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 96
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsVietnameseTelexInput:Z

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    .line 98
    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mHWRCandidateStatus:I

    .line 99
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStatusLock:Z

    .line 100
    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    .line 138
    new-instance v0, Lcom/diotek/ime/framework/input/AbstractInputModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/AbstractInputModule$1;-><init>(Lcom/diotek/ime/framework/input/AbstractInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 156
    new-instance v0, Lcom/diotek/ime/framework/input/AbstractInputModule$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/input/AbstractInputModule$2;-><init>(Lcom/diotek/ime/framework/input/AbstractInputModule;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    .line 162
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIndexOfInputBuffer:I

    .line 174
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 176
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 178
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    .line 179
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 182
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 183
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 184
    invoke-static {}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTrace:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 185
    invoke-static {}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->newInstance()Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    .line 186
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsKorMode:Z

    .line 189
    :cond_1
    return-void
.end method

.method private isEnableSwapPunctuation()Z
    .locals 2

    .prologue
    .line 791
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v1, 0x66720000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v1, 0x66724341

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v1, 0x66724652

    if-ne v0, v1, :cond_1

    .line 794
    :cond_0
    const/4 v0, 0x0

    .line 796
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAddwordbyCheckLDB(Z)V
    .locals 0
    .param p1, "isAddword"    # Z

    .prologue
    .line 1882
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCheckLDB:Z

    .line 1883
    return-void
.end method


# virtual methods
.method public VOHWRInitByCursorMove(I)V
    .locals 1
    .param p1, "curosr"    # I

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRCommitAndInit(I)V

    .line 1006
    return-void
.end method

.method public VOHWRSetChangeMode(II)V
    .locals 1
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRSetChangeMode(II)V

    .line 1011
    return-void
.end method

.method public VOHWRSetInsertMode(II)V
    .locals 1
    .param p1, "curBase"    # I
    .param p2, "curIndex"    # I

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->VOHWRSetInsertMode(II)V

    .line 1016
    return-void
.end method

.method public addMyWord(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method protected autoPeriod(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 846
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SETTINGS_DEFAULT_AUTO_PERIOD"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eq p1, v10, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 851
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 855
    invoke-interface {v2, v13, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 856
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 860
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 862
    .local v3, "length":I
    if-ge v3, v13, :cond_3

    .line 863
    if-ne v3, v12, :cond_0

    .line 864
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 865
    .local v1, "firstChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 866
    .local v4, "secondChar":C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    if-ne v4, v10, :cond_0

    .line 868
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 874
    .end local v1    # "firstChar":C
    .end local v4    # "secondChar":C
    :cond_3
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 875
    .restart local v1    # "firstChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 876
    .restart local v4    # "secondChar":C
    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 878
    .local v6, "thirdChar":C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    if-ne v4, v10, :cond_6

    if-ne v6, v10, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 884
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x68690000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x6d720000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x626e0000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x6e650000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x61730000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x6f720000

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x70610000

    if-ne v7, v8, :cond_8

    .line 887
    :cond_5
    const-string v0, "\u0964 "

    .line 897
    .local v0, "dotSpace":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v12, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 898
    invoke-interface {v2, v0, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 900
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->predictionWord()Z

    .line 901
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 903
    .end local v0    # "dotSpace":Ljava/lang/String;
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_7
    if-ne v6, v10, :cond_0

    .line 905
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoPeriod:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v8, 0x1f4

    invoke-virtual {p0, v7, v8}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    .line 888
    :cond_8
    iget v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v8, 0x6b6d0000

    if-ne v7, v8, :cond_9

    .line 889
    const-string v0, "\u17d4 "

    .restart local v0    # "dotSpace":Ljava/lang/String;
    goto :goto_1

    .line 890
    .end local v0    # "dotSpace":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 891
    :cond_a
    const-string v0, "\u3002"

    .restart local v0    # "dotSpace":Ljava/lang/String;
    goto :goto_1

    .line 894
    .end local v0    # "dotSpace":Ljava/lang/String;
    :cond_b
    const-string v0, ". "

    .restart local v0    # "dotSpace":Ljava/lang/String;
    goto :goto_1
.end method

.method public buildSuggestions()V
    .locals 0

    .prologue
    .line 2131
    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 0

    .prologue
    .line 1851
    return-void
.end method

.method public cancelUpdateSequenceAndSuggestionDelayForRecapture()V
    .locals 0

    .prologue
    .line 1983
    return-void
.end method

.method public cancelUpdateSuggestionDelay()V
    .locals 0

    .prologue
    .line 1973
    return-void
.end method

.method public clearAction()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 931
    return-void
.end method

.method protected clearCandidateList()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    sget-object v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 915
    sget-object v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 918
    :cond_1
    return-void
.end method

.method public closing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 922
    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 923
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    .line 924
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetPredictionWord()V

    .line 925
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    .line 926
    return-void
.end method

.method public commitHwrTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 495
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 496
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 497
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 498
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<AbstractInputModule> commitHwrTextAndInitComposing-(1) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 501
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 502
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<AbstractInputModule> commitHwrTextAndInitComposing-(2) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 506
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 507
    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1952
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1953
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1954
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1956
    :cond_0
    return-void
.end method

.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 413
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 414
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 415
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 416
    const/4 v1, 0x1

    .line 417
    .local v1, "isTACcomposible":Z
    const/4 v2, 0x1

    .line 418
    .local v2, "isZawComposable":Z
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v6, :cond_0

    .line 420
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    .line 423
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v6, v9, :cond_5

    .line 424
    const-string v3, ""

    .line 425
    .local v3, "leadingChar":Ljava/lang/String;
    invoke-interface {v0, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "leadingChar":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 426
    .restart local v3    # "leadingChar":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v3, ""

    .line 428
    :cond_1
    const-string v5, ""

    .line 429
    .local v5, "leadingStr2":Ljava/lang/String;
    const/4 v4, 0x0

    .line 430
    .local v4, "leadingChar2":I
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v7, 0x6d795a57

    if-ne v6, v7, :cond_3

    .line 431
    const/4 v6, 0x2

    invoke-interface {v0, v6, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "leadingStr2":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 432
    .restart local v5    # "leadingStr2":Ljava/lang/String;
    if-nez v5, :cond_2

    const-string v5, ""

    .line 433
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_3

    .line 434
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 438
    :cond_3
    if-eqz v3, :cond_4

    .line 439
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v6, v7}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v1

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v6, v7, v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v2

    .line 445
    :cond_4
    iget v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v6, v7}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-interface {v0, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 450
    .end local v3    # "leadingChar":Ljava/lang/String;
    .end local v4    # "leadingChar2":I
    .end local v5    # "leadingStr2":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 451
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 452
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<AbstractInputModule> commitTextAndInitComposing-(1) - Utils.getUsedTime() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_6
    invoke-interface {v0, p1, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 455
    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 456
    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<AbstractInputModule> commitTextAndInitComposing-(2) - Utils.getUsedTime() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_7
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 460
    :cond_8
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 466
    .end local v1    # "isTACcomposible":Z
    .end local v2    # "isZawComposable":Z
    :cond_9
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 467
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 468
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 471
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 472
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 473
    return-void
.end method

.method public commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 476
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 477
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 478
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 479
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<AbstractInputModule> commitTextAndInitComposingForThai-(1) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 483
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 484
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<AbstractInputModule> commitTextAndInitComposingForThai-(2) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 488
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 489
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 490
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 491
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 492
    return-void
.end method

.method public commitTextWithSuggestion(Ljava/lang/String;)V
    .locals 9
    .param p1, "verbatim"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 349
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 350
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_0

    .line 351
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 352
    new-instance v7, Landroid/text/SpannableString;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 353
    .local v7, "ss":Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/SuggestionSpan;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v8

    const-class v5, Lcom/sec/android/inputmethod/SuggestionPickReceiver;

    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v7, v0, v8, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 355
    invoke-interface {v6, v7, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 356
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 358
    .end local v7    # "ss":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method

.method protected convertComposingIToUpperCase()V
    .locals 6

    .prologue
    const/16 v5, 0x69

    const/16 v4, 0x49

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1826
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v1, 0x656e0000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v1, 0x656e4742

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v1, 0x656e5553

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v1, 0x656e4155

    if-ne v0, v1, :cond_1

    .line 1828
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1829
    invoke-static {v2, v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    .line 1830
    iput-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDirtyComposing:Z

    .line 1836
    :cond_1
    :goto_0
    return-void

    .line 1831
    :cond_2
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDirtyComposing:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1832
    invoke-static {v2, v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setCharAt(IC)V

    .line 1833
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDirtyComposing:Z

    goto :goto_0
.end method

.method protected doAutoCorrection(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 2005
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    .line 2007
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-static {v0, v1, p1}, Lcom/diotek/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrection(IILandroid/view/inputmethod/InputConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 2010
    :cond_0
    return-void
.end method

.method protected doAutoCorrection(Landroid/view/inputmethod/InputConnection;[I)V
    .locals 10
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "activeIndex"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2013
    const/4 v6, 0x0

    .line 2014
    .local v6, "candidateBeforeUpdate":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aget v3, p2, v8

    if-le v2, v3, :cond_0

    .line 2015
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v3, p2, v8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "candidateBeforeUpdate":Ljava/lang/CharSequence;
    check-cast v6, Ljava/lang/CharSequence;

    .line 2017
    .restart local v6    # "candidateBeforeUpdate":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v8}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 2018
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    .line 2019
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 2020
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 2021
    const/4 v0, 0x0

    .line 2022
    .local v0, "candidate":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aget v3, p2, v8

    if-le v2, v3, :cond_4

    .line 2023
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    aget v3, p2, v8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "candidate":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;

    .line 2027
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2028
    move-object v0, v6

    .line 2030
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "vabatim":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v7

    .line 2032
    .local v7, "inputMode":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v7, v9, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x8

    if-ne v7, v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2038
    if-eqz p1, :cond_3

    .line 2039
    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    invoke-interface {p1, v2, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2043
    :cond_3
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentCursorPosition()I

    move-result v2

    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrection(Ljava/lang/CharSequence;Ljava/lang/String;IIILandroid/view/inputmethod/InputConnection;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2046
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v8, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 2047
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextWithSuggestion(Ljava/lang/String;)V

    .line 2048
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    .line 2054
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 2061
    return-void

    .line 2025
    .end local v1    # "vabatim":Ljava/lang/String;
    .end local v7    # "inputMode":I
    :cond_4
    const-string v2, "SamsungIME"

    const-string v3, "mCandidates is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2050
    .restart local v1    # "vabatim":Ljava/lang/String;
    .restart local v7    # "inputMode":I
    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v8, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 2051
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 2052
    invoke-virtual {p0, v9}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_1
.end method

.method protected doNextWordPrediction(Z)V
    .locals 3
    .param p1, "bCommitSpace"    # Z

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNextWordPredictionForXt9(Z)I

    move-result v0

    .line 1150
    .local v0, "totalValue":I
    if-lez v0, :cond_1

    .line 1151
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    .line 1152
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1155
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1156
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1157
    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mHWRCandidateStatus:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getSuggestionByStatus(I)V

    .line 1161
    :goto_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 1162
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1163
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    .line 1165
    :cond_1
    return-void

    .line 1159
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    goto :goto_0
.end method

.method public endMultitapTimer()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 531
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 534
    return-void
.end method

.method public findWordInUDB(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public finishAndInitByCursorMove()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 988
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v2

    .line 989
    .local v2, "totalWordsCount":I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 990
    .local v0, "inputMethod":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->endMultitapTimer()V

    .line 991
    if-ne v0, v4, :cond_2

    .line 992
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v2, :cond_2

    .line 993
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 994
    new-array v1, v4, [I

    .line 995
    .local v1, "outIndex":[I
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 996
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->selectWordInList(I)V

    .line 998
    .end local v1    # "outIndex":[I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1001
    :cond_2
    return-void
.end method

.method public finishComposing(Z)V
    .locals 3
    .param p1, "resetComposing"    # Z

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 266
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 268
    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 272
    :cond_0
    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 275
    :cond_1
    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->resetTimeoutComposingLength()V

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 279
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDirtyComposing:Z

    .line 280
    return-void
.end method

.method public finishComposingWithoutInit()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 284
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 289
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    .line 292
    :cond_1
    return-void
.end method

.method protected getCurrentChineseModeMaxLength()I
    .locals 3

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1189
    .local v0, "length":I
    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v2, 0x7a685457

    if-ne v1, v2, :cond_0

    .line 1190
    const/16 v0, 0x1e

    .line 1199
    :goto_0
    return v0

    .line 1191
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v2, 0x7a68434e

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v2, 0x7a680000

    if-ne v1, v2, :cond_2

    .line 1193
    :cond_1
    const/16 v0, 0x19

    goto :goto_0

    .line 1194
    :cond_2
    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_3

    .line 1195
    const/16 v0, 0xf

    goto :goto_0

    .line 1197
    :cond_3
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public getCurrentLanguageID()I
    .locals 1

    .prologue
    .line 1388
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    return v0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    return v0
.end method

.method protected getEditorClass()I
    .locals 3

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "editorClass":I
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 233
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_0

    .line 234
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 237
    :cond_0
    return v0
.end method

.method public getFirstWordDividerIndex()I
    .locals 11

    .prologue
    .line 1208
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1209
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1270
    :cond_0
    :goto_0
    return v2

    .line 1212
    :cond_1
    const/4 v2, -0x1

    .line 1213
    .local v2, "lastDividerIndex":I
    const/16 v0, 0x1f4

    .line 1214
    .local v0, "MAX_SENTENCE_LENGTH":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1215
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_2

    .line 1216
    const/4 v2, 0x0

    goto :goto_0

    .line 1219
    :cond_2
    const/16 v9, 0x1f4

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1220
    .local v8, "text":Ljava/lang/String;
    if-nez v8, :cond_4

    .line 1221
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v9, :cond_3

    .line 1222
    const-string v9, "SamsungIME"

    const-string v10, "ERROR : getTextBeforeCursor retuen null !!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1227
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1228
    .local v6, "length":I
    const/4 v5, -0x1

    .line 1229
    .local v5, "lastSpaceIndex":I
    const/4 v3, -0x1

    .line 1230
    .local v3, "lastEnterIndex":I
    const/4 v4, -0x1

    .line 1231
    .local v4, "lastIndexOfDivider":I
    if-nez v6, :cond_5

    .line 1232
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 1233
    const/4 v2, 0x0

    goto :goto_0

    .line 1237
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1238
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1239
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1240
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1242
    sub-int v9, v6, v4

    const/16 v10, 0x40

    if-le v9, v10, :cond_6

    .line 1243
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    const/16 v10, 0x40

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1244
    const/4 v9, 0x0

    add-int/lit8 v10, v6, -0x40

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1265
    :goto_1
    const/4 v9, -0x1

    if-ne v4, v9, :cond_5

    .line 1267
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1268
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1245
    :cond_6
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 1246
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1247
    :cond_7
    add-int/lit8 v9, v6, -0x1

    if-ne v4, v9, :cond_a

    .line 1248
    const/4 v7, 0x0

    .line 1249
    .local v7, "numberOfDeletingChar":I
    :goto_2
    add-int/lit8 v9, v6, -0x1

    if-ne v4, v9, :cond_8

    if-ltz v4, :cond_8

    .line 1250
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1251
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1252
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1253
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1254
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1255
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1257
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    const/4 v9, 0x0

    :goto_3
    sub-int v9, v10, v9

    add-int v2, v9, v7

    .line 1258
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1259
    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1260
    goto :goto_1

    .line 1257
    :cond_9
    add-int/lit8 v9, v4, 0x1

    goto :goto_3

    .line 1261
    .end local v7    # "numberOfDeletingChar":I
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    sub-int v2, v9, v10

    .line 1262
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1263
    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public getHwrCandidateStatus()I
    .locals 1

    .prologue
    .line 2232
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mHWRCandidateStatus:I

    return v0
.end method

.method public getIndexOfInputBuffer()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIndexOfInputBuffer:I

    return v0
.end method

.method public getLastWordDividerIndex()I
    .locals 11

    .prologue
    .line 1275
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1276
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncSourceConnect()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1277
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1278
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 1279
    const/4 v2, 0x0

    .line 1349
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return v2

    .line 1281
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1287
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1288
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1291
    :cond_3
    const/4 v2, -0x1

    .line 1292
    .local v2, "lastDividerIndex":I
    const/16 v0, 0x1f4

    .line 1293
    .local v0, "MAX_SENTENCE_LENGTH":I
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1294
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_4

    .line 1295
    const/4 v2, 0x0

    goto :goto_0

    .line 1298
    :cond_4
    const/16 v9, 0x1f4

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1299
    .local v8, "text":Ljava/lang/String;
    if-nez v8, :cond_6

    .line 1300
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    if-eqz v9, :cond_5

    .line 1301
    const-string v9, "SamsungIME"

    const-string v10, "ERROR : getTextBeforeCursor retuen null !!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 1306
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1307
    .local v6, "length":I
    const/4 v5, -0x1

    .line 1308
    .local v5, "lastSpaceIndex":I
    const/4 v3, -0x1

    .line 1309
    .local v3, "lastEnterIndex":I
    const/4 v4, -0x1

    .line 1310
    .local v4, "lastIndexOfDivider":I
    if-nez v6, :cond_7

    .line 1311
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    .line 1312
    const/4 v2, 0x0

    goto :goto_0

    .line 1316
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1317
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1318
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1319
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1321
    sub-int v9, v6, v4

    const/16 v10, 0x40

    if-le v9, v10, :cond_8

    .line 1322
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    const/16 v10, 0x40

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1323
    const/4 v9, 0x0

    add-int/lit8 v10, v6, -0x40

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1344
    :goto_1
    const/4 v9, -0x1

    if-ne v4, v9, :cond_7

    .line 1346
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1347
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 1324
    :cond_8
    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    .line 1325
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1326
    :cond_9
    add-int/lit8 v9, v6, -0x1

    if-ne v4, v9, :cond_c

    .line 1327
    const/4 v7, 0x0

    .line 1328
    .local v7, "numberOfDeletingChar":I
    :goto_2
    add-int/lit8 v9, v6, -0x1

    if-ne v4, v9, :cond_a

    if-ltz v4, :cond_a

    .line 1329
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1330
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1331
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1332
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1333
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .line 1334
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1336
    :cond_a
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v9, -0x1

    if-ne v4, v9, :cond_b

    const/4 v9, 0x0

    :goto_3
    sub-int v9, v10, v9

    add-int v2, v9, v7

    .line 1337
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1338
    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1339
    goto :goto_1

    .line 1336
    :cond_b
    add-int/lit8 v9, v4, 0x1

    goto :goto_3

    .line 1340
    .end local v7    # "numberOfDeletingChar":I
    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    sub-int v2, v9, v10

    .line 1341
    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1342
    const/4 v9, 0x0

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public getPosNextText()I
    .locals 1

    .prologue
    .line 2100
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    return v0
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateCandidate()I
    .locals 1

    .prologue
    .line 1887
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    return v0
.end method

.method public getSuggestionByStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2188
    packed-switch p1, :pswitch_data_0

    .line 2214
    :goto_0
    return-void

    .line 2190
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 2191
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 2194
    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 2197
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    .line 2198
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 2199
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    sget-object v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V

    .line 2200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2201
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2202
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2203
    sget-object v2, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2201
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2208
    .end local v1    # "j":I
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    sget-object v3, Lcom/diotek/ime/framework/input/AbstractInputModule;->mSwiftKeyCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getSyllableDelimiter()I
    .locals 1

    .prologue
    .line 1874
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mXt9Version:I

    if-eqz v0, :cond_0

    .line 1875
    const/16 v0, 0x27

    .line 1877
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1a

    goto :goto_0
.end method

.method public getTimeoutComposingLength()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimeoutComposingLength:I

    return v0
.end method

.method public getWordToAddMyWordList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1854
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1855
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "ADDWORD_BACKUP_CADIDATE"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "backupCadidate":Ljava/lang/String;
    const-string v2, " + Add \"%s\" to my word list"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, "myWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getXt9Version()I
    .locals 1

    .prologue
    .line 1870
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mXt9Version:I

    return v0
.end method

.method public hasCurrentSequence()Z
    .locals 1

    .prologue
    .line 2069
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasKeyATInCurrentSequence()Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 2078
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->hasCurrentSequence()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return v3

    .line 2082
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2083
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2087
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2088
    .local v2, "textBeforeCursor":Ljava/lang/String;
    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2090
    .local v1, "textAfterCursor":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2094
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_2

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public hasWWWdotInCurrentSequence()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 2105
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->hasCurrentSequence()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2120
    :cond_0
    :goto_0
    return v2

    .line 2109
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2110
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2114
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2116
    .local v1, "textBeforeCursor":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2120
    const-string v3, "www."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "WWW."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public increaseDeleteCount()V
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    .line 1372
    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2135
    .local p1, "defaultCandidateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesDelayed(Ljava/util/ArrayList;I)V

    .line 2136
    return-void
.end method

.method public initComposingBuffer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 243
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 248
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 249
    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setAddwordbyCheckLDB(Z)V

    .line 251
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v2}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 257
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 260
    :cond_2
    return-void
.end method

.method public initDeleteCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1361
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isRecapture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    .line 1364
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1368
    :goto_0
    return-void

    .line 1366
    :cond_0
    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mDeleteCount:I

    goto :goto_0
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 0
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    .line 1020
    return-void
.end method

.method public initWordDividerIndexList()V
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mWordDividerIndexList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1204
    return-void
.end method

.method public initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    const-string v0, ""

    .line 106
    .local v0, "addWordType":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mXt9Version:I

    .line 107
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_AddWordType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    .line 109
    const-string v1, "Prompt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mXt9Version:I

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    .line 113
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 114
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v1, v2, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    .line 115
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "AUTO_SPACE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->init(IZ)V

    .line 116
    iput-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    .line 117
    return-void
.end method

.method public inputDisplayedRecognitionString()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method protected isAvailablePrediction()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1055
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return v2

    .line 1058
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1059
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1060
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1062
    .local v1, "nextChar":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 1064
    goto :goto_0

    .line 1065
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 1067
    goto :goto_0
.end method

.method public isBeforeTraceInput()Z
    .locals 1

    .prologue
    .line 1862
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsBeforeTraceInput:Z

    return v0
.end method

.method protected isEnableAutoCorrection()Z
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v0

    return v0
.end method

.method protected isEnableAutoCorrection(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection(C)Z

    move-result v0

    return v0
.end method

.method protected isKeycodeNotAcceptedFilename(I)Z
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 975
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 976
    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "stringValueofKeyCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e4742

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 978
    .local v0, "langId":I
    if-eqz v1, :cond_1

    const-string v2, "\\/:*?\"<>|;"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x7a680000

    const/high16 v3, -0x10000

    and-int/2addr v3, v0

    if-ne v2, v3, :cond_0

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_1

    .line 980
    :cond_0
    const/4 v2, 0x1

    .line 983
    .end local v0    # "langId":I
    .end local v1    # "stringValueofKeyCode":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLaoAcceptable()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1431
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v4

    const/high16 v5, 0x6c6f0000

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1433
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1434
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 1443
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v2

    .line 1437
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string v1, ""

    .line 1438
    .local v1, "leadingStr":Ljava/lang/String;
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "leadingStr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1439
    .restart local v1    # "leadingStr":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1441
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v2

    goto :goto_0

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "leadingStr":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 1443
    goto :goto_0
.end method

.method public isLaoAcceptable(I)Z
    .locals 9
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1447
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v7

    const/high16 v8, 0x6c6f0000

    if-ne v7, v8, :cond_4

    .line 1448
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1449
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1470
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v5

    .line 1453
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1454
    .local v3, "leadingStr":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1455
    .local v2, "leadingChar":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1456
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1461
    :cond_1
    :goto_1
    move v0, p1

    .line 1463
    .local v0, "followingChar":I
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1464
    invoke-static {}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v4

    .line 1465
    .local v4, "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    invoke-virtual {v4, p1}, Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v0

    .line 1468
    .end local v4    # "secKeyManager":Lcom/diotek/ime/framework/input/secondarykey/SecondaryKeyManager;
    :cond_2
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v5

    goto :goto_0

    .line 1457
    .end local v0    # "followingChar":I
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 1458
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "leadingChar":I
    .end local v3    # "leadingStr":Ljava/lang/CharSequence;
    :cond_4
    move v5, v6

    .line 1470
    goto :goto_0
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    .line 1530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedToAddUDB(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 1813
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1814
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->findWordInUDB(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1815
    .local v0, "retCode":I
    if-nez v0, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1816
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1817
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setAddwordbyCheckLDB(Z)V

    .line 1823
    .end local v0    # "retCode":I
    :cond_0
    :goto_0
    return-void

    .line 1819
    .restart local v0    # "retCode":I
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1820
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setAddwordbyCheckLDB(Z)V

    goto :goto_0
.end method

.method public isPredictionWord()Z
    .locals 1

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIgnorePredictionWord:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecapture()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1023
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v8, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return v7

    .line 1026
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1027
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SETTINGS_DEFAULT_RECAPTURE"

    invoke-interface {v8, v9, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    .line 1028
    .local v3, "isRecaptureOn":Z
    if-eqz v2, :cond_0

    .line 1029
    invoke-interface {v2, v7}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1033
    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1034
    .local v4, "lastChar":Ljava/lang/String;
    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1036
    .local v5, "nextChar":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1037
    .local v0, "availableLastChar":Z
    const/4 v1, 0x0

    .line 1039
    .local v1, "availableNextChar":Z
    if-eqz v4, :cond_2

    .line 1040
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_7

    move v0, v6

    .line 1043
    :cond_2
    :goto_1
    if-eqz v5, :cond_5

    .line 1044
    if-eqz v5, :cond_8

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, " "

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "\n"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_4
    move v1, v6

    .line 1047
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    if-eqz v1, :cond_0

    :cond_6
    if-eqz v3, :cond_0

    move v7, v6

    .line 1048
    goto :goto_0

    :cond_7
    move v0, v7

    .line 1040
    goto :goto_1

    :cond_8
    move v1, v7

    .line 1044
    goto :goto_2
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    .prologue
    .line 2125
    const/4 v0, 0x0

    return v0
.end method

.method public isThaiAcceptable()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1415
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v4

    const/high16 v5, 0x74680000

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1417
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1418
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 1427
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v2

    .line 1421
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    const-string v1, ""

    .line 1422
    .local v1, "leadingStr":Ljava/lang/String;
    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1    # "leadingStr":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1423
    .restart local v1    # "leadingStr":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1425
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v2

    goto :goto_0

    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "leadingStr":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 1427
    goto :goto_0
.end method

.method public isThaiAcceptable(Z)Z
    .locals 9
    .param p1, "isThaiMultitapComposing"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1498
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v6

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_5

    .line 1499
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1500
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1522
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v4

    .line 1503
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v0

    .line 1504
    .local v0, "follwingChar":I
    const-string v3, ""

    .line 1505
    .local v3, "leadingStr":Ljava/lang/String;
    invoke-interface {v1, v8, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "leadingStr":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1506
    .restart local v3    # "leadingStr":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v3, ""

    .line 1508
    :cond_1
    const/4 v2, 0x0

    .line 1509
    .local v2, "leadingChar":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 1510
    if-nez p1, :cond_2

    .line 1511
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 1520
    :cond_2
    :goto_1
    invoke-static {v0, v2}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v4

    goto :goto_0

    .line 1513
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 1514
    if-eqz p1, :cond_4

    .line 1515
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 1517
    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .end local v0    # "follwingChar":I
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "leadingChar":I
    .end local v3    # "leadingStr":Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 1522
    goto :goto_0
.end method

.method protected isTimerRunning(Lcom/diotek/ime/framework/input/InputModule$Timer;)Z
    .locals 1
    .param p1, "run"    # Lcom/diotek/ime/framework/input/InputModule$Timer;

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/diotek/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isZawgyiAcceptable(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1473
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v8

    const v9, 0x6d795a57

    if-ne v8, v9, :cond_5

    .line 1474
    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1475
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 1495
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :goto_0
    return v6

    .line 1478
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1479
    .local v4, "leadingStr":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1480
    .local v2, "leadingChar":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1481
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1485
    :cond_1
    :goto_1
    const/4 v8, 0x2

    invoke-interface {v1, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1486
    .local v5, "leadingStr2":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1487
    .local v3, "leadingChar2":I
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1488
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1492
    :cond_2
    :goto_2
    move v0, p1

    .line 1493
    .local v0, "followingChar":I
    invoke-static {v0, v2, v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v6

    goto :goto_0

    .line 1482
    .end local v0    # "followingChar":I
    .end local v3    # "leadingChar2":I
    .end local v5    # "leadingStr2":Ljava/lang/CharSequence;
    :cond_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 1483
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 1489
    .restart local v3    # "leadingChar2":I
    .restart local v5    # "leadingStr2":Ljava/lang/CharSequence;
    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v7, :cond_2

    .line 1490
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_2

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "leadingChar":I
    .end local v3    # "leadingChar2":I
    .end local v4    # "leadingStr":Ljava/lang/CharSequence;
    .end local v5    # "leadingStr2":Ljava/lang/CharSequence;
    :cond_5
    move v6, v7

    .line 1495
    goto :goto_0
.end method

.method protected nomalizerFormNFC()V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v1, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "normalizedString":Ljava/lang/String;
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public onCharacterKeyForHwKeyboard(I[I)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 1909
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContextForHwKeyboard()V

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->isTextCharacterForHwKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processKeyForHwKeyboard(I[I)V

    .line 1917
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    .line 1918
    return-void

    .line 1915
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processSymbolicKey(I[I)V

    goto :goto_0
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected onKeyDownUpHandle(I)V
    .locals 1
    .param p1, "keyCodes"    # I

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 1146
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 213
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->endMultitapTimer()V

    .line 215
    invoke-static {p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 218
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    .line 220
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    .line 221
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v1, 0x6b6f0000

    if-eq v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(Ljava/lang/CharSequence;)V

    .line 224
    :cond_1
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceInput:Z

    .line 226
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 22
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 552
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v15, 0x0

    .line 553
    .local v15, "isOnlyDoAddword":Z
    if-eqz v11, :cond_0

    .line 554
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v12

    .line 555
    .local v12, "isCompletionOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v13

    .line 556
    .local v13, "isLandscape":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v6

    .line 557
    .local v6, "completions":[Landroid/view/inputmethod/CompletionInfo;
    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    if-eqz v6, :cond_1

    .line 558
    if-ltz p1, :cond_0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 559
    aget-object v5, v6, p1

    .line 560
    .local v5, "completion":Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v11, v5}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 709
    .end local v5    # "completion":Landroid/view/inputmethod/CompletionInfo;
    .end local v6    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v12    # "isCompletionOn":Z
    .end local v13    # "isLandscape":Z
    :cond_0
    :goto_0
    return-void

    .line 563
    .restart local v6    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .restart local v12    # "isCompletionOn":Z
    .restart local v13    # "isLandscape":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v18

    const/high16 v19, 0x74680000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 564
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 565
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 566
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 569
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v4

    .line 570
    .local v4, "candidateStatus":I
    const/4 v8, 0x0

    .line 572
    .local v8, "enableAutoSpaceForNextWordPrediction":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 573
    if-nez v4, :cond_e

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isNeedToAddUDB(Ljava/lang/CharSequence;)V

    .line 582
    :cond_3
    :goto_1
    if-nez v15, :cond_1a

    .line 583
    invoke-interface {v11}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 584
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    if-nez v4, :cond_11

    .line 586
    new-instance v18, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct/range {v18 .. v18}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v10

    .line 587
    .local v10, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v10, :cond_10

    iget-object v0, v10, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 588
    iget v0, v10, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    move/from16 v18, v0

    iget v0, v10, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    move/from16 v19, v0

    add-int v7, v18, v19

    .line 589
    .local v7, "cursorLocation":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v18, v0

    add-int v9, v7, v18

    .line 590
    .local v9, "endOfselectedText":I
    if-gt v7, v9, :cond_f

    .line 591
    move/from16 v17, v7

    .line 592
    .local v17, "startPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 593
    move/from16 v0, v17

    invoke-interface {v11, v0, v9}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 601
    .end local v7    # "cursorLocation":I
    .end local v9    # "endOfselectedText":I
    .end local v17    # "startPosition":I
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 602
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 603
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 604
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 615
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_4
    :goto_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 616
    if-eqz v8, :cond_5

    .line 617
    const/16 v18, 0x20

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 619
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isThaiAcceptable()Z

    move-result v18

    if-nez v18, :cond_6

    .line 622
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 625
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 626
    invoke-interface {v11}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 627
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 631
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v3, v0, [I

    .line 632
    .local v3, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    move/from16 v16, v0

    .line 635
    .local v16, "pickSuggestionIndex":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "ADDWORD_BACKUP_CADIDATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCheckLDB:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 646
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    .line 652
    :cond_7
    :goto_5
    const/16 v18, 0x0

    aget v18, v3, v18

    if-ltz v18, :cond_8

    const/16 v18, 0x0

    aget v18, v3, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    aget v20, v3, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    aget v21, v3, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    .line 655
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 657
    :cond_9
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_18

    .line 658
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 660
    const/16 v18, 0x20

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    .line 672
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getCurrentLanguageID()I

    move-result v18

    const/high16 v19, 0x74680000

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    .line 673
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V

    .line 678
    :goto_7
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->replaceSpaceToSymbol()V

    .line 682
    :cond_a
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPickSuggestionIndex:I

    .line 683
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 684
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    .line 688
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v20, -0x1

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    .line 693
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v14

    .line 695
    .local v14, "isNextWordPredictionOn":Z
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    if-nez v4, :cond_d

    .line 698
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->doNextWordPrediction(Z)V

    .line 704
    .end local v3    # "activeIndex":[I
    .end local v14    # "isNextWordPredictionOn":Z
    .end local v16    # "pickSuggestionIndex":I
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_0

    .line 575
    :cond_e
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 577
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 579
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 595
    .restart local v7    # "cursorLocation":I
    .restart local v9    # "endOfselectedText":I
    .restart local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 598
    .end local v7    # "cursorLocation":I
    .end local v9    # "endOfselectedText":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v11, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    .line 605
    .end local v10    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    if-nez v4, :cond_13

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNextWordPrediction()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 608
    const/4 v8, 0x1

    .line 610
    :cond_12
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_3

    .line 611
    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 612
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setPredictionWord(Z)V

    goto/16 :goto_3

    .line 639
    .restart local v3    # "activeIndex":[I
    .restart local v16    # "pickSuggestionIndex":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v20, v3, v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "ADDWORD_BACKUP_CADIDATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 649
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v3, v19

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto/16 :goto_5

    .line 663
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    goto/16 :goto_6

    .line 666
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_6

    .line 669
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_6

    .line 675
    :cond_19
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 701
    .end local v3    # "activeIndex":[I
    .end local v16    # "pickSuggestionIndex":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mBackupCandidate:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/diotek/ime/framework/engine/InputEngineManager;->addMyWord(Ljava/lang/CharSequence;)I

    goto/16 :goto_8
.end method

.method public postUpdateSequenceAndSuggestionDelayForRecapture(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 1978
    return-void
.end method

.method public predictionWord()Z
    .locals 15

    .prologue
    const/16 v12, 0x27

    const/4 v14, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1546
    const/4 v4, 0x0

    .line 1549
    .local v4, "isPredictSelectWord":Z
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v11, :cond_1

    .line 1626
    :cond_0
    :goto_0
    return v9

    .line 1553
    :cond_1
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v11

    iput-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 1554
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    .line 1556
    .local v3, "inputRange":I
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11, v9}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->isShown()Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v11

    if-nez v11, :cond_3

    if-ne v3, v10, :cond_5

    .line 1560
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1561
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1562
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_0

    .line 1564
    :cond_4
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v14}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_0

    .line 1569
    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    .line 1570
    .local v2, "inputMode":I
    const/16 v11, 0x8

    if-eq v2, v11, :cond_6

    const/4 v11, 0x7

    if-ne v2, v11, :cond_7

    .line 1571
    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    .line 1572
    .local v7, "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->isPopKeyboardShown()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1577
    .end local v7    # "popupKeyboardView":Lcom/diotek/ime/framework/view/PopupKeyboardView;
    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1578
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_d

    .line 1579
    invoke-interface {v1, v9}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1580
    .local v8, "selectedText":Ljava/lang/CharSequence;
    if-eqz v8, :cond_a

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_a

    .line 1581
    new-array v0, v10, [I

    .line 1582
    .local v0, "activeIndex":[I
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v13

    int-to-short v13, v13

    invoke-interface {v11, v12, v13, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v11

    if-nez v11, :cond_8

    .line 1583
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1584
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1585
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v11, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1586
    iget-object v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1587
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1588
    iput v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 1589
    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move v9, v10

    .line 1590
    goto/16 :goto_0

    .line 1592
    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1593
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v14}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1595
    :cond_9
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1596
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1597
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0

    .line 1602
    .end local v0    # "activeIndex":[I
    :cond_a
    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1603
    .local v5, "lastChar":Ljava/lang/String;
    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1605
    .local v6, "nextChar":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v11, :cond_d

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_b

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v12, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_d

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_d

    .line 1612
    :cond_c
    const/4 v4, 0x1

    .line 1615
    .end local v5    # "lastChar":Ljava/lang/String;
    .end local v6    # "nextChar":Ljava/lang/String;
    .end local v8    # "selectedText":Ljava/lang/CharSequence;
    :cond_d
    if-eqz v4, :cond_e

    .line 1616
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processPredictionWordXT9()Z

    move-result v11

    if-eqz v11, :cond_e

    move v9, v10

    .line 1617
    goto/16 :goto_0

    .line 1620
    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1621
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v14}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1623
    :cond_f
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1624
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1625
    iget-object v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 12

    .prologue
    const/16 v9, 0x27

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1630
    const/4 v2, 0x0

    .line 1632
    .local v2, "isPredictSelectWord":Z
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v6, :cond_1

    .line 1687
    :cond_0
    :goto_0
    return v8

    .line 1635
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 1636
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1637
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_6

    .line 1638
    invoke-interface {v1, v8}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1639
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1640
    new-array v0, v7, [I

    .line 1641
    .local v0, "activeIndex":[I
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-short v10, v10

    invoke-interface {v6, v9, v10, v7}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v6

    if-nez v6, :cond_3

    .line 1642
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1643
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1644
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1645
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1646
    iput v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1647
    iput v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 1648
    iput v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    move v8, v7

    .line 1649
    goto :goto_0

    .end local v0    # "activeIndex":[I
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_2
    move v6, v8

    .line 1635
    goto :goto_1

    .line 1651
    .restart local v0    # "activeIndex":[I
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1652
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1654
    :cond_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1655
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1656
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0

    .line 1661
    .end local v0    # "activeIndex":[I
    :cond_5
    invoke-interface {v1, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1662
    .local v3, "lastChar":Ljava/lang/String;
    invoke-interface {v1, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1664
    .local v4, "nextChar":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 1676
    .end local v3    # "lastChar":Ljava/lang/String;
    .end local v4    # "nextChar":Ljava/lang/String;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_6
    :goto_2
    if-eqz v2, :cond_a

    .line 1677
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processPredictionWordXT9()Z

    move-result v6

    if-eqz v6, :cond_a

    move v8, v7

    .line 1678
    goto/16 :goto_0

    .line 1666
    .restart local v3    # "lastChar":Ljava/lang/String;
    .restart local v4    # "nextChar":Ljava/lang/String;
    .restart local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_7
    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_6

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_9

    :cond_8
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_6

    .line 1673
    :cond_9
    const/4 v2, 0x1

    goto :goto_2

    .line 1681
    .end local v3    # "lastChar":Ljava/lang/String;
    .end local v4    # "nextChar":Ljava/lang/String;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1682
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1684
    :cond_b
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1685
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1686
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public previewTrace(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1846
    return-void
.end method

.method protected processKeyForHwKeyboard(I[I)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1925
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1926
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    .line 1928
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1929
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    .line 1930
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    .line 1933
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v3, 0x6b6f0000

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1934
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSwiftKeyHangulCharSequenceHwKeyboard(ILjava/lang/StringBuilder;)V

    .line 1939
    :goto_0
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    .line 1940
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 1941
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v1

    .line 1942
    .local v1, "composing":C
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    .line 1943
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->commitText(Ljava/lang/CharSequence;)V

    .line 1944
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 1945
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 1949
    .end local v1    # "composing":C
    :goto_1
    return-void

    .line 1936
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKeyForHwKeyboard(I)I

    .line 1937
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCharSequenceForHwKeyboard(Ljava/lang/StringBuilder;)I

    goto :goto_0

    .line 1947
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    goto :goto_1
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v4, 0x1

    .line 934
    const/4 v3, 0x0

    .line 935
    .local v3, "nIndex":I
    const/4 v2, 0x0

    .line 937
    .local v2, "nCodeLength":I
    if-nez p2, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 941
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p2

    if-ge v0, v5, :cond_4

    .line 942
    aget v5, p2, v0

    if-ne p1, v5, :cond_3

    .line 943
    move v3, v0

    .line 948
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 944
    :cond_3
    aget v5, p2, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 945
    move v2, v0

    .line 950
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 951
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 954
    :cond_5
    if-le v2, v4, :cond_0

    .line 955
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_8

    move v1, v4

    .line 956
    .local v1, "isVietToneNPredictionOn":Z
    :goto_2
    if-nez v3, :cond_6

    .line 957
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mLastKeyCode:I

    add-int/lit8 v6, v2, -0x1

    aget v6, p2, v6

    if-eq v5, v6, :cond_6

    add-int/lit8 v5, v2, -0x1

    aget v5, p2, v5

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isKeycodeNotAcceptedFilename(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 964
    :cond_6
    :goto_3
    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(C)V

    .line 965
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 966
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V

    .line 967
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 968
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mMultitap:Lcom/diotek/ime/framework/input/InputModule$Timer;

    const/16 v5, 0x5dc

    invoke-virtual {p0, v4, v5}, Lcom/diotek/ime/framework/input/AbstractInputModule;->startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    .line 955
    .end local v1    # "isVietToneNPredictionOn":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 961
    .restart local v1    # "isVietToneNPredictionOn":Z
    :cond_9
    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_3
.end method

.method protected processPredictionWordXT9()Z
    .locals 23

    .prologue
    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1693
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v8, 0x0

    .line 1694
    .local v8, "longPrevText":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1695
    .local v7, "longNextText":Ljava/lang/String;
    const-string v18, ""

    .line 1696
    .local v18, "shortPrevText":Ljava/lang/String;
    const-string v17, ""

    .line 1697
    .local v17, "shortNextText":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1698
    .local v19, "shortText":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "prevIndexOfSpace":I
    const/4 v15, 0x0

    .local v15, "prevIndexOfEnter":I
    const/4 v14, 0x0

    .line 1699
    .local v14, "prevIndexOfDevider":I
    const/4 v11, 0x0

    .local v11, "nextIndexOfSpace":I
    const/4 v10, 0x0

    .local v10, "nextIndexOfEnter":I
    const/4 v9, 0x0

    .line 1700
    .local v9, "nextIndexOfDevider":I
    const/4 v13, 0x0

    .local v13, "posPrevText":I
    const/4 v12, 0x0

    .line 1702
    .local v12, "posNextText":I
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v4, v0, [I

    .line 1703
    .local v4, "activeIndex":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1705
    if-eqz v6, :cond_1

    .line 1706
    const/16 v20, 0x40

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "longPrevText":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1707
    .restart local v8    # "longPrevText":Ljava/lang/String;
    const/16 v20, 0x40

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7    # "longNextText":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 1713
    .restart local v7    # "longNextText":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    .line 1714
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 1715
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1716
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1717
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_2

    .line 1718
    move-object/from16 v18, v8

    .line 1722
    :goto_1
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    .line 1723
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 1724
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v5, v20, -0x1

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_0

    .line 1725
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v20

    if-nez v20, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x27

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1727
    add-int/lit8 v20, v5, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 1728
    sub-int v20, v13, v5

    add-int/lit8 v13, v20, -0x1

    .line 1734
    .end local v5    # "i":I
    :cond_0
    if-eqz v7, :cond_a

    .line 1735
    const/16 v20, 0x20

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 1736
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1737
    if-ltz v11, :cond_4

    if-ltz v10, :cond_4

    .line 1738
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1747
    :goto_3
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_7

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_7

    .line 1748
    move-object/from16 v17, v7

    .line 1754
    :goto_4
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_a

    .line 1755
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    if-nez v20, :cond_9

    .line 1756
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 1757
    const/16 v20, 0x0

    .line 1800
    :goto_5
    return v20

    .line 1709
    :cond_1
    const-string v8, ""

    .line 1710
    const-string v7, ""

    goto/16 :goto_0

    .line 1720
    :cond_2
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1724
    .restart local v5    # "i":I
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 1739
    .end local v5    # "i":I
    :cond_4
    if-ltz v11, :cond_5

    .line 1740
    move v9, v11

    goto :goto_3

    .line 1741
    :cond_5
    if-ltz v10, :cond_6

    .line 1742
    move v9, v10

    goto :goto_3

    .line 1744
    :cond_6
    const/4 v9, -0x1

    goto :goto_3

    .line 1749
    :cond_7
    if-nez v9, :cond_8

    .line 1750
    const-string v17, ""

    goto :goto_4

    .line 1752
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    .line 1759
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12

    .line 1760
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_a

    .line 1761
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    if-nez v20, :cond_c

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isUnicodeIdentifierPart(C)Z

    move-result v20

    if-nez v20, :cond_c

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x27

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 1763
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1764
    move v12, v5

    .line 1772
    .end local v5    # "i":I
    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    move/from16 v20, v0

    const/high16 v21, 0x6b6f0000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 1773
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1777
    :goto_7
    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x40

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 1778
    const/16 v20, 0x40

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 1781
    :cond_b
    if-eqz v19, :cond_e

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_e

    .line 1782
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 1783
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1760
    .restart local v5    # "i":I
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 1775
    .end local v5    # "i":I
    :cond_d
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    .line 1785
    :cond_e
    if-eqz v19, :cond_10

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v20

    if-eqz v20, :cond_f

    .line 1787
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 1788
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1790
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1794
    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 1795
    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 1796
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 1797
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 1799
    :cond_10
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    .line 1800
    const/16 v20, 0x0

    goto/16 :goto_5
.end method

.method protected processReCaptureForXT9(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    const/16 v13, 0x43

    const/4 v12, -0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1074
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1080
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    new-array v0, v11, [I

    .line 1081
    .local v0, "activeIndex":[I
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1083
    if-eqz v2, :cond_4

    .line 1084
    const/16 v7, 0x40

    invoke-interface {v2, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1085
    .local v4, "longText":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1086
    const-string v4, ""

    .line 1091
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 1092
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "lastIndexOfSpecialChar":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1093
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1097
    :cond_1
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1102
    .end local v3    # "lastIndexOfSpecialChar":I
    .local v5, "shortText":Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_2

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    :cond_2
    if-ne p1, v12, :cond_7

    .line 1104
    invoke-virtual {p0, v13}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 1142
    :cond_3
    :goto_3
    return-void

    .line 1089
    .end local v4    # "longText":Ljava/lang/String;
    .end local v5    # "shortText":Ljava/lang/String;
    :cond_4
    const-string v4, ""

    .restart local v4    # "longText":Ljava/lang/String;
    goto :goto_0

    .line 1092
    .restart local v3    # "lastIndexOfSpecialChar":I
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1099
    .end local v3    # "lastIndexOfSpecialChar":I
    :cond_6
    const-string v5, ""

    .restart local v5    # "shortText":Ljava/lang/String;
    goto :goto_2

    .line 1106
    :cond_7
    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1107
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->trim()V

    .line 1109
    if-eqz v2, :cond_3

    .line 1110
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    int-to-short v9, v9

    invoke-interface {v7, v8, v9, v10}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    move-result v7

    if-eqz v7, :cond_9

    .line 1112
    if-ne p1, v12, :cond_8

    .line 1113
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposingWithoutInit()V

    .line 1114
    invoke-virtual {p0, v13}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    .line 1115
    invoke-static {v10}, Lcom/diotek/ime/framework/input/ComposingTextManager;->setLength(I)V

    goto :goto_3

    .line 1117
    :cond_8
    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/input/AbstractInputModule;->finishComposing(Z)V

    goto :goto_3

    .line 1121
    :cond_9
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    .line 1122
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1123
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    .line 1124
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    .line 1125
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1127
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1129
    new-instance v7, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v7}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v2, v7, v10}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 1130
    .local v1, "et":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 1131
    .local v6, "textlength":I
    if-eqz v1, :cond_a

    iget v7, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-lt v7, v6, :cond_a

    .line 1132
    iget v7, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    sub-int/2addr v7, v6

    iget v8, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v2, v7, v8}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 1137
    :goto_4
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setComposingText()V

    .line 1138
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1139
    iput v10, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    goto :goto_3

    .line 1134
    :cond_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-interface {v2, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4
.end method

.method public processRecaptureXT9()V
    .locals 1

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->processPredictionWordXT9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    :goto_0
    return-void

    .line 1904
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->showDefaultSymbolCandidate()V

    goto :goto_0
.end method

.method protected abstract processSymbolicKey(I[I)V
.end method

.method public processVietnameseTone(IZ)V
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "isPrediction"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1392
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 1394
    .local v1, "inputMethod":I
    iget v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v4, 0x76690000

    if-ne v3, v4, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1395
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v1, v5, :cond_1

    const/16 v3, 0x30

    if-ne p1, v3, :cond_1

    .line 1397
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1398
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_2

    .line 1412
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    return-void

    .line 1401
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1402
    .local v2, "leadingChar":Ljava/lang/String;
    if-nez v2, :cond_3

    const-string v2, ""

    .line 1404
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1405
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    const/4 v4, -0x5

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1406
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    .line 1407
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto :goto_0
.end method

.method public removeTerm(I)V
    .locals 0
    .param p1, "idx"    # I

    .prologue
    .line 1841
    return-void
.end method

.method protected replaceSpaceToSymbol()V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 801
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 802
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 807
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 811
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 813
    .local v2, "length":I
    if-lt v2, v8, :cond_0

    .line 817
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 818
    .local v0, "firstChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 819
    .local v4, "secondChar":C
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 821
    .local v6, "thirdChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    if-ne v4, v7, :cond_0

    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 825
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    if-eq v7, v8, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3f

    if-eq v7, v8, :cond_2

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    if-ne v7, v8, :cond_4

    .line 826
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    :goto_1
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 834
    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 835
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 836
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 837
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 838
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    .line 840
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearAction()V

    goto :goto_0

    .line 830
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public resetPredictionWord()V
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIgnorePredictionWord:Z

    .line 1539
    return-void
.end method

.method public resetTimeoutComposingLength()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->setTimeoutComposingLength(I)V

    .line 136
    return-void
.end method

.method protected selectWordInList(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 537
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 538
    .local v0, "inputMethod":I
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    .line 539
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCSC:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsDisableAddwordbyCheckLDB:Z

    if-eqz v1, :cond_1

    .line 540
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 541
    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto :goto_0
.end method

.method protected sendEnterKeyHandle()V
    .locals 4

    .prologue
    .line 1168
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v0

    .line 1169
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x40000000

    and-int/2addr v2, v0

    if-nez v2, :cond_2

    .line 1172
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1173
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 1174
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isEnterForWebNavigation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1175
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1183
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 1177
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    .line 1181
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/AbstractInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    .prologue
    .line 1385
    return-void
.end method

.method public setAutoSpaceOn(Z)V
    .locals 1
    .param p1, "autoSpaceOn"    # Z

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mAutoSpaceController:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setAutoSpaceOn(Z)V

    .line 1990
    :cond_0
    return-void
.end method

.method public setBeforeTraceInput(Z)V
    .locals 0
    .param p1, "traceInput"    # Z

    .prologue
    .line 1866
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsBeforeTraceInput:Z

    .line 1867
    return-void
.end method

.method public setComposingText()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 295
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 296
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 297
    const/4 v2, 0x1

    .line 298
    .local v2, "isComposible":Z
    iget v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_3

    .line 299
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 300
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 302
    invoke-interface {v0, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "leadingChar":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 304
    invoke-static {v3}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getVietnameseLeadingChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->getHashCode()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v5, v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietnameseAcceptable(II)Z

    move-result v2

    .line 306
    if-eqz v2, :cond_2

    .line 307
    invoke-interface {v0, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "normalizedChar":Ljava/lang/String;
    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    .line 315
    .end local v3    # "leadingChar":Ljava/lang/String;
    .end local v4    # "normalizedChar":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->nomalizerFormNFC()V

    .line 316
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 317
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 346
    .end local v2    # "isComposible":Z
    :cond_1
    :goto_1
    return-void

    .line 311
    .restart local v2    # "isComposible":Z
    .restart local v3    # "leadingChar":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initComposingBuffer()V

    goto :goto_0

    .line 319
    .end local v3    # "leadingChar":Ljava/lang/String;
    :cond_3
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 320
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<AbstractInputModule> setComposingText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    .line 325
    .local v1, "inputmethod":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSearchInputType()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableAutoCorrection()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isAccessibilityEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    if-eq v1, v8, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyComma()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyQuestion()Z

    move-result v5

    if-nez v5, :cond_7

    .line 328
    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    .line 329
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateSelectList()I

    .line 330
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 332
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    .line 335
    :goto_2
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 340
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 341
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 342
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<AbstractInputModule> setComposingText-(2) - Utils.getUsedTime() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 334
    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    goto :goto_2
.end method

.method public setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 394
    if-eqz p1, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->nomalizerFormNFC()V

    .line 396
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<AbstractInputModule> setComposingTextWithoutBatch-(1) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 400
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<AbstractInputModule> setComposingTextWithoutBatch-(2) - Utils.getUsedTime() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    return-void
.end method

.method public setDeleteCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "lastChar"    # Ljava/lang/String;

    .prologue
    .line 1375
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->initDeleteCount()V

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_0
    goto :goto_0
.end method

.method public setHwrCandidateStatus(IZ)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "toggleStatusLock"    # Z

    .prologue
    .line 2218
    if-eqz p2, :cond_0

    .line 2219
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStatusLock:Z

    if-eqz v0, :cond_3

    .line 2220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStatusLock:Z

    .line 2225
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStatusLock:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_2

    .line 2226
    :cond_1
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mHWRCandidateStatus:I

    .line 2228
    :cond_2
    return-void

    .line 2222
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStatusLock:Z

    goto :goto_0
.end method

.method public setIndexOfInputBuffer(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIndexOfInputBuffer:I

    .line 171
    return-void
.end method

.method public setPredictionWord(Z)V
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 1534
    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIgnorePredictionWord:Z

    .line 1535
    return-void
.end method

.method public setTimeoutComposingLength(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimeoutComposingLength:I

    .line 128
    return-void
.end method

.method public setVietnameseTelexComposing()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 361
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 362
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 363
    invoke-interface {v2, v8}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 364
    .local v5, "selectedText":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 391
    .end local v5    # "selectedText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 368
    .restart local v5    # "selectedText":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 369
    const/16 v6, 0x8

    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 370
    .local v1, "getTextBeforeCursor":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 371
    const-string v1, ""

    .line 373
    :cond_2
    const/16 v6, 0xa

    const/16 v7, 0x20

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "longBeforeText":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 376
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v3}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakCurrentWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "currentWord":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isVietUnicode(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 380
    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 381
    invoke-static {}, Lcom/diotek/ime/framework/repository/PackageStatus;->getPackageName()Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    .line 382
    .local v4, "packageName":Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;
    sget-object v6, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->HWORD_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->HCELL_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;->HSHOW_PACKAGE_NAME:Lcom/diotek/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-ne v4, v6, :cond_4

    .line 383
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 384
    const/4 v6, 0x1

    invoke-interface {v2, v0, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 386
    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentCursorPosition()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentCursorPosition()I

    move-result v7

    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method protected showDefaultSymbolCandidate()V
    .locals 2

    .prologue
    .line 1891
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    .line 1894
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 1895
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    .line 1896
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    .line 1897
    return-void
.end method

.method protected startTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;I)V
    .locals 3
    .param p1, "timer"    # Lcom/diotek/ime/framework/input/InputModule$Timer;
    .param p2, "msec"    # I

    .prologue
    .line 520
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 521
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    return-void
.end method

.method protected stopTimer(Lcom/diotek/ime/framework/input/InputModule$Timer;)V
    .locals 1
    .param p1, "timer"    # Lcom/diotek/ime/framework/input/InputModule$Timer;

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/diotek/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    .line 516
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mTimmerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    return-void
.end method

.method protected swapPunctuation()V
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 751
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 752
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->isEnableSwapPunctuation()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 761
    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 762
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 766
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 768
    .local v2, "length":I
    if-lt v2, v8, :cond_0

    .line 772
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 773
    .local v0, "firstChar":C
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 774
    .local v4, "secondChar":C
    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 776
    .local v6, "thirdChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x20

    if-ne v4, v7, :cond_0

    const-string v7, ".,;!?\u061b\u060c\u061f"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 784
    invoke-interface {v1, v11, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 785
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 786
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method public toUpperCaseOfTurkish(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1992
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 1993
    const/16 v0, 0x130

    .line 1999
    :goto_0
    return v0

    .line 1994
    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    .line 1995
    const/16 p1, 0x49

    move v0, p1

    goto :goto_0

    .line 1996
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1997
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1999
    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 2

    .prologue
    .line 713
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->clearCandidateList()V

    .line 714
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mHWRCandidateStatus:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/AbstractInputModule;->getSuggestionByStatus(I)V

    .line 722
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 724
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getHwrSuggestion(Ljava/util/ArrayList;)I

    goto :goto_0

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    goto :goto_0
.end method

.method public updatePredictionSettingAndEngine()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsPredictionOn:Z

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_TRACE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mIsTraceOn:Z

    .line 123
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateEngine()I

    .line 124
    return-void
.end method

.method protected updateSequence(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 727
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    :goto_0
    return-void

    .line 730
    :cond_0
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 731
    iput v4, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 732
    new-array v1, v5, [I

    .line 733
    .local v1, "posPrevText":[I
    new-array v0, v5, [I

    .line 735
    .local v0, "posNextText":[I
    if-nez p1, :cond_1

    .line 736
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 740
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v1, v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V

    .line 741
    aget v2, v1, v4

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosPrevText:I

    .line 742
    aget v2, v0, v4

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mPosNextText:I

    .line 743
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 744
    iput v5, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    goto :goto_0

    .line 738
    :cond_1
    iput-object p1, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 746
    :cond_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/diotek/ime/framework/input/AbstractInputModule;->mStateCandidate:I

    goto :goto_0
.end method

.method public updateSuggestion()V
    .locals 0

    .prologue
    .line 1964
    return-void
.end method

.method public updateSuggestionDelay()V
    .locals 0

    .prologue
    .line 1968
    return-void
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 0

    .prologue
    .line 1960
    return-void
.end method
