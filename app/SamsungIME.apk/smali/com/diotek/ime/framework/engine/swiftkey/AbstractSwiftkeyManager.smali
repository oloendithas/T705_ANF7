.class public abstract Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;
.super Ljava/lang/Object;
.source "AbstractSwiftkeyManager.java"

# interfaces
.implements Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;


# static fields
.field private static final ADD_NON_INITIAL_EXPANDED:Z = true

.field private static final MIN_CHARS:I = 0x2

.field protected static korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;


# instance fields
.field private final DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

.field private final INTENTIONAL_EVENT_SYMBOL:Ljava/lang/String;

.field private mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

.field private mAppendVerbatimInSequence:Z

.field private mCachedSequence:Lcom/touchtype_fluency/Sequence;

.field private mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field protected mCandidateWordNumber:I

.field protected mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field protected mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

.field protected mContactSpecificID:Ljava/lang/String;

.field protected mCurrentKeyPressModelName:Ljava/lang/String;

.field private final mDLMLocker:Ljava/lang/String;

.field private mDefaultExclusionPattern:Ljava/util/regex/Pattern;

.field protected mDiableTempDynamicModel:Z

.field protected mDirtyDynamicModel:Z

.field protected mDirtyKeyPressModel:Z

.field protected mDirtyTempDynamicModel:Z

.field protected mEnableContactSpecificContext:Z

.field private mExclusionPattern:Ljava/util/regex/Pattern;

.field protected mFieldSpecificType:I

.field protected mInputBuffer:Ljava/lang/StringBuilder;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mIntentionalEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAddDefaultSymbol:Z

.field protected mIsAlreadyAddTouchHistory:Z

.field private mIsPreviewFlow:Z

.field private final mKPMLocker:Ljava/lang/String;

.field protected mKeyPressModelDir:Ljava/lang/String;

.field private mLayoutKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPredictions:Lcom/touchtype_fluency/Predictions;

.field protected mPredictor:Lcom/touchtype_fluency/Predictor;

.field private mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

.field private mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field private mPreviewFlowTouchPointIndex:I

.field private mPreviewSequence:Lcom/touchtype_fluency/Sequence;

.field protected mReady:Z

.field protected mReservePredictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

.field protected mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

.field protected mSwiftKeySession:Lcom/touchtype_fluency/Session;

.field protected mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

.field protected mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

.field protected mTokenizer:Lcom/touchtype_fluency/Tokenizer;

.field protected mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

.field private mTouchHistoryRepository:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/TouchHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mTrainer:Lcom/touchtype_fluency/Trainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getInstance(Lcom/touchtype_fluency/LoggingListener;)Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 47
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    .line 48
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    .line 49
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    .line 50
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    .line 51
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    .line 52
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 53
    iput v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 54
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKeyPressModelDir:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 56
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 57
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    .line 58
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    .line 59
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    .line 61
    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

    .line 62
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    .line 64
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    .line 68
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 69
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 72
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    .line 73
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    .line 75
    iput v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    .line 78
    const-string v0, "_-\'&"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->INTENTIONAL_EVENT_SYMBOL:Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, ","

    aput-object v2, v0, v1

    const-string v1, "?"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "!"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    .line 85
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    .line 88
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    .line 89
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    .line 90
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    .line 91
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

    .line 92
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 93
    iput v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    .line 96
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedSequence:Lcom/touchtype_fluency/Sequence;

    .line 97
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 98
    const-string v0, "dlmLocker"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDLMLocker:Ljava/lang/String;

    .line 99
    const-string v0, "kpmLocker"

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mKPMLocker:Ljava/lang/String;

    .line 100
    const-string v0, "\\d{4,}"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mExclusionPattern:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "\\d{4,7}"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDefaultExclusionPattern:Ljava/util/regex/Pattern;

    .line 103
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    .line 105
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 107
    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    .line 109
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    return-void
.end method

.method private declared-synchronized addDefaultSymbolLayoutKey()V
    .locals 2

    .prologue
    .line 1223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1225
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->setLayoutKeys(Ljava/util/Set;)V

    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    :cond_0
    monitor-exit p0

    return-void

    .line 1223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private buildCorrectiosInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 4
    .param p1, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "postSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 1057
    invoke-direct {p0, p1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    .line 1058
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 1059
    const-string v1, "input-model"

    const-string v2, "allow-wildcards-at-start"

    invoke-virtual {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1060
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-direct {p0, p4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilterForCorrection(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/touchtype_fluency/Predictor;->getCorrections(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    .line 1061
    .local v0, "predictions":Lcom/touchtype_fluency/Predictions;
    const-string v1, "input-model"

    const-string v2, "allow-wildcards-at-start"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1062
    return-object v0
.end method

.method private buildPredictionListener(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V
    .locals 2
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "count"    # I

    .prologue
    .line 996
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {p0, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    .line 997
    return-void
.end method

.method private displayLogForInitialOnly(JLcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V
    .locals 6
    .param p1, "startTime"    # J
    .param p3, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p4, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 1726
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-nez v2, :cond_1

    .line 1739
    :cond_0
    return-void

    .line 1729
    :cond_1
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPredictions time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preSequence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchHistory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwiftKeySDK version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "korInitialInputLibrary version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered prediction list : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1736
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v2, v0}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v1

    .line 1737
    .local v1, "p":Lcom/touchtype_fluency/Prediction;
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getFieldSpecificID(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1429
    packed-switch p1, :pswitch_data_0

    .line 1437
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1431
    :pswitch_0
    const-string v0, "RECIPIENT"

    goto :goto_0

    .line 1433
    :pswitch_1
    const-string v0, "EMAIL"

    goto :goto_0

    .line 1435
    :pswitch_2
    const-string v0, "URL"

    goto :goto_0

    .line 1429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1066
    if-eqz p1, :cond_4

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v1, "dynamicPredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v5, "othersPredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1070
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/touchtype_fluency/Prediction;

    .line 1071
    .local v6, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v6}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v8

    .line 1072
    .local v8, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1073
    .local v0, "contains":Z
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1074
    .local v7, "tag":Ljava/lang/String;
    const-string v9, "source"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "dynamic.lm"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1075
    const/4 v0, 0x1

    .line 1076
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    .end local v7    # "tag":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_0

    .line 1081
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1084
    .end local v0    # "contains":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v8    # "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v9, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$2;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1092
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1095
    .end local v1    # "dynamicPredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    .end local v5    # "othersPredictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    :goto_1
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getResultsFilterForCorrection(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7
    .param p1, "count"    # I

    .prologue
    .line 1101
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    sget-object v4, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->RETROSPECTIVE_CORRECT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    sget-object v5, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->AGGRESSIVE:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    sget-object v6, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method private isEnableContactSpecificContext(Lcom/touchtype_fluency/Sequence;)Z
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportRestrictedIndianLanguage()Z
    .locals 2

    .prologue
    .line 1742
    const-string v0, ""

    .line 1748
    .local v0, "CommonRegion":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method private learnStringWithExclusionPattern(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1396
    sget-object v1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1397
    const/4 v1, 0x0

    .line 1400
    :goto_0
    return v1

    .line 1399
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mExclusionPattern:Ljava/util/regex/Pattern;

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1400
    .local v0, "t_matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private parseSwiftKeyVersion()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 149
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "version":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "verStrings":[Ljava/lang/String;
    sget-object v4, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 152
    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 153
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    .local v0, "first":Ljava/lang/Integer;
    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 155
    .local v1, "second":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 156
    sget-object v4, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 163
    .end local v0    # "first":Ljava/lang/Integer;
    .end local v1    # "second":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local v0    # "first":Ljava/lang/Integer;
    .restart local v1    # "second":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 158
    sget-object v4, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 160
    sget-object v4, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    goto :goto_0
.end method

.method private processPreviewFlow(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V
    .locals 2
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "count"    # I

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v0, v1, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionListener(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1305
    return-void
.end method

.method private declared-synchronized removeDefaultSymbolLayoutKey()V
    .locals 2

    .prologue
    .line 1232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->DEFAULT_SYMBOL_LAYOUT_KEY:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1234
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->setLayoutKeys(Ljava/util/Set;)V

    .line 1235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    :cond_0
    monitor-exit p0

    return-void

    .line 1232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "reset"    # Z

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isEnableContactSpecificContext(Lcom/touchtype_fluency/Sequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    .line 1360
    const/4 v0, 0x1

    .line 1365
    :goto_0
    return v0

    .line 1362
    :cond_0
    if-eqz p2, :cond_1

    .line 1363
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    .line 1365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    .line 1421
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eqz v0, :cond_0

    .line 1422
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFieldSpecificID(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    .line 1426
    :goto_0
    return-void

    .line 1424
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private verifyFieldSpecificFormat(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1441
    packed-switch p2, :pswitch_data_0

    .line 1447
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1443
    :pswitch_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    .line 1445
    :pswitch_1
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    .line 1441
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "index"    # I

    .prologue
    .line 1477
    const-string v1, ""

    .line 1479
    .local v1, "szReturn":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/Sequence;->termAt(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1487
    :goto_0
    return-object v1

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v2, :cond_0

    .line 1482
    const-string v2, "SamsungIME"

    const-string v3, "Sequence.termAt() IndexOutOfBoundsException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1484
    :cond_0
    const-string v2, "SamsungIME"

    const-string v3, "Unknown exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;
    .locals 4
    .param p1, "seq"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "index"    # I

    .prologue
    .line 1463
    const-string v1, ""

    .line 1465
    .local v1, "szReturn":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/touchtype_fluency/Sequence;->remove(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1473
    :goto_0
    return-object v1

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/Exception;
    instance-of v2, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v2, :cond_0

    .line 1468
    const-string v2, "SamsungIME"

    const-string v3, "Sequence.remove() IndexOutOfBoundsException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1470
    :cond_0
    const-string v2, "SamsungIME"

    const-string v3, "Unknown exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addCPPhrase(ILjava/lang/String;)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "phrase"    # Ljava/lang/String;

    .prologue
    .line 1656
    const/4 v0, 0x0

    return v0
.end method

.method public addCPSpell(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 1645
    return-void
.end method

.method public addString(Ljava/lang/String;)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\'"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .local v2, "touchHistoryTokenizer":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 745
    .local v1, "token":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 746
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 747
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 751
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 752
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    .line 753
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "touchHistoryTokenizer":Ljava/util/StringTokenizer;
    :goto_1
    return-void

    .line 755
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "token":Ljava/lang/String;
    .restart local v2    # "touchHistoryTokenizer":Ljava/util/StringTokenizer;
    :cond_2
    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 756
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 757
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 760
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "touchHistoryTokenizer":Ljava/util/StringTokenizer;
    :cond_3
    new-instance v3, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 761
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 762
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public addTouchHistory(Ljava/lang/Character;)V
    .locals 2
    .param p1, "character"    # Ljava/lang/Character;

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    if-nez v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :goto_1
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    goto :goto_0

    .line 717
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAlreadyAddTouchHistory:Z

    goto :goto_1
.end method

.method public addTouchPoint(ILandroid/graphics/PointF;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 730
    if-eqz p2, :cond_0

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    new-instance v0, Lcom/touchtype_fluency/Point;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 732
    .local v0, "touchPoint":Lcom/touchtype_fluency/Point;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v1, v0, v2}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    .line 733
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    .end local v0    # "touchPoint":Lcom/touchtype_fluency/Point;
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    .line 736
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public buildPredictionListener(Lcom/touchtype_fluency/Sequence;)V
    .locals 3
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearReservePredictions()V

    .line 992
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iget v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;

    .line 993
    return-void
.end method

.method public buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;
    .locals 10
    .param p1, "preSequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "postSequnece"    # Lcom/touchtype_fluency/Sequence;
    .param p3, "count"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1000
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1001
    .local v6, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1002
    if-ge p3, v9, :cond_0

    .line 1003
    iget p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 1005
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 1006
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->removeDefaultSymbolLayoutKey()V

    .line 1010
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez p2, :cond_5

    .line 1011
    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {p1, v7}, Lcom/touchtype_fluency/Sequence;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v6, v7}, Lcom/touchtype_fluency/TouchHistory;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1012
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1034
    :goto_1
    return-object v7

    .line 1008
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->addDefaultSymbolLayoutKey()V

    goto :goto_0

    .line 1014
    :cond_3
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .line 1015
    .local v0, "cachedSequence":Lcom/touchtype_fluency/Sequence;
    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->getType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1016
    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1017
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 1018
    .local v1, "cachedTouchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v1, v6}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 1019
    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 1020
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1021
    .local v4, "startTime":J
    invoke-virtual {p0, p1, v6, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1023
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, "composingText":Ljava/lang/String;
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    const/4 v8, 0x2

    invoke-virtual {v7, v2, v8}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->isKoreanInitialOnly(Ljava/lang/String;I)Z

    move-result v3

    .line 1025
    .local v3, "isKoreanInitialOnly":Z
    if-eqz v3, :cond_4

    .line 1026
    sget-object v7, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->korInitialInputLibrary:Lcom/touchtype/samsung/supportlibrary/SupportLibrary;

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v7, v8, v2, v3, v9}, Lcom/touchtype/samsung/supportlibrary/SupportLibrary;->reorderPredictions(Lcom/touchtype_fluency/Predictions;Ljava/lang/String;ZZ)Lcom/touchtype_fluency/Predictions;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1028
    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v8

    invoke-interface {v8}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->endChonjiinFlow(Lcom/touchtype_fluency/CharacterMap;)V

    .line 1034
    .end local v0    # "cachedSequence":Lcom/touchtype_fluency/Sequence;
    .end local v1    # "cachedTouchHistory":Lcom/touchtype_fluency/TouchHistory;
    .end local v2    # "composingText":Ljava/lang/String;
    .end local v3    # "isKoreanInitialOnly":Z
    .end local v4    # "startTime":J
    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    goto :goto_1

    .line 1031
    :cond_5
    invoke-virtual {p0, v8, v8}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 1032
    invoke-direct {p0, p1, v6, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildCorrectiosInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v7

    iput-object v7, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    goto :goto_2
.end method

.method protected buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "count"    # I

    .prologue
    .line 1038
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    .line 1039
    iget p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCandidateWordNumber:I

    .line 1041
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->removeDefaultSymbolLayoutKey()V

    .line 1046
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_1
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->addDefaultSymbolLayoutKey()V

    goto :goto_0
.end method

.method protected buildPredictionsInternal(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;
    .locals 3
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "count"    # I

    .prologue
    .line 1050
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    .line 1051
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 1052
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-virtual {p0, p3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/touchtype_fluency/Predictor;->getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    .line 1053
    .local v0, "predictions":Lcom/touchtype_fluency/Predictions;
    return-object v0
.end method

.method public cancelPreviewFlow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1308
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    if-eqz v1, :cond_0

    .line 1309
    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    .line 1310
    iput v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    .line 1311
    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    .line 1312
    const/4 v0, 0x1

    .line 1314
    :cond_0
    return v0
.end method

.method public changeChineseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 1
    .param p2, "isStroke"    # Z
    .param p3, "langCode"    # Ljava/lang/String;
    .param p4, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p5, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1673
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public changeJapaneseInputType(Ljava/util/List;ZLjava/lang/String;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)Z
    .locals 1
    .param p2, "isPhonepadMode"    # Z
    .param p3, "langCode"    # Ljava/lang/String;
    .param p4, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p5, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1678
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public checkPostPosition(Ljava/lang/String;)Z
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 1691
    const/4 v0, 0x0

    return v0
.end method

.method public choosePrediction(Lcom/touchtype_fluency/Sequence;I)V
    .locals 6
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "index"    # I

    .prologue
    .line 1128
    if-ltz p2, :cond_1

    .line 1129
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    if-le v4, p2, :cond_2

    .line 1130
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4, p2}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    .line 1131
    .local v2, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v3

    .line 1132
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1133
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v4, v3}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    .line 1134
    .local v1, "pickSequence":Lcom/touchtype_fluency/Sequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1135
    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_0
    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v4

    const-string v5, "verbatim"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1138
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnTempDynamicModel(Ljava/lang/String;)V

    .line 1146
    .end local v0    # "i":I
    .end local v1    # "pickSequence":Lcom/touchtype_fluency/Sequence;
    .end local v2    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1141
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, p2, :cond_1

    .line 1143
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public choosePrediction(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V
    .locals 3
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    .line 1149
    if-eqz p2, :cond_0

    .line 1150
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p2}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    .line 1151
    .local v1, "pickSequence":Lcom/touchtype_fluency/Sequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1152
    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    .end local v0    # "i":I
    .end local v1    # "pickSequence":Lcom/touchtype_fluency/Sequence;
    :cond_0
    return-void
.end method

.method public clearContext()V
    .locals 2

    .prologue
    .line 861
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 862
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 864
    return-void
.end method

.method public clearContextExceptTouchHistory()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 868
    return-void
.end method

.method public clearIntentionalEvents()V
    .locals 2

    .prologue
    .line 1458
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    .line 1459
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->setIntentionalEvents(Ljava/util/Set;)V

    .line 1460
    return-void
.end method

.method protected clearReservePredictions()V
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1183
    return-void
.end method

.method public clearTouchHistoryRepository()V
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 699
    return-void
.end method

.method public createSession()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 112
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-nez v1, :cond_0

    .line 113
    const-string v1, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-nez v1, :cond_1

    .line 116
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    .line 119
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    .line 121
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    .line 122
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->parseSwiftKeyVersion()V

    .line 125
    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    .line 127
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->newInstance()Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    .line 128
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    goto :goto_0
.end method

.method public deleteKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 767
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 768
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 769
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 778
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 775
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    move v0, v1

    .line 778
    goto :goto_0
.end method

.method public deleteLastInputKey()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 783
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 785
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableContactSpecificContext()V
    .locals 1

    .prologue
    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    .line 1347
    return-void
.end method

.method public enableAllModel()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->allModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    .line 404
    :cond_0
    return-void
.end method

.method public enableContactSpecificContext()V
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    .line 1343
    return-void
.end method

.method public enableLanguageModel(Ljava/lang/String;)Z
    .locals 4
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "currentLanguageID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v1, "selectTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v2, "dynamic"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v2, "ll"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/util/Collection;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->enableModels(Lcom/touchtype_fluency/TagSelector;)V

    .line 395
    const/4 v2, 0x1

    .line 397
    .end local v0    # "currentLanguageID":Ljava/lang/String;
    .end local v1    # "selectTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 1717
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClosestKey(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 792
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    new-instance v2, Lcom/touchtype_fluency/Point;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/KeyPressModel;->closestKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "closestKey":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 796
    aget-object v1, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 799
    .end local v0    # "closestKey":[Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getContactSpecificID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    return-object v0
.end method

.method public getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 5
    .param p1, "contextText"    # Ljava/lang/String;
    .param p2, "langID"    # I

    .prologue
    .line 936
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v2, :cond_2

    .line 937
    const/high16 v2, 0x76690000

    if-ne p2, v2, :cond_1

    .line 938
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    .line 939
    .local v1, "sequence":Lcom/touchtype_fluency/Sequence;
    const-string v0, ""

    .line 940
    .local v0, "currentWord":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 941
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 942
    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 943
    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v0

    .line 947
    :cond_0
    new-instance v2, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v2, v1, v0}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    .line 952
    .end local v0    # "currentWord":Ljava/lang/String;
    .end local v1    # "sequence":Lcom/touchtype_fluency/Sequence;
    :goto_0
    return-object v2

    .line 949
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    const/4 v3, 0x6

    invoke-interface {v2, p1, v3}, Lcom/touchtype_fluency/Tokenizer;->splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    goto :goto_0

    .line 952
    :cond_2
    new-instance v2, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v3, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v3}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;
    .locals 4
    .param p1, "contextText"    # Ljava/lang/String;
    .param p2, "currentText"    # Ljava/lang/String;

    .prologue
    .line 928
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v1, :cond_0

    .line 929
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 930
    .local v0, "sequence":Lcom/touchtype_fluency/Sequence;
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-direct {v1, v0, p2}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    .line 932
    .end local v0    # "sequence":Lcom/touchtype_fluency/Sequence;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/touchtype_fluency/ContextCurrentWord;

    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFieldSpecificType()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    return v0
.end method

.method public getFirtstTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "contextText"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 957
    const-string v1, ""

    .line 958
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v2, :cond_0

    .line 959
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 960
    .local v0, "sequence":Lcom/touchtype_fluency/Sequence;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 961
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 962
    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 963
    invoke-virtual {p0, v0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v1

    .line 968
    .end local v0    # "sequence":Lcom/touchtype_fluency/Sequence;
    :cond_0
    return-object v1
.end method

.method public getFullCPSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1652
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputBuffer()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getKey(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;IIZ)I
    .locals 2
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "history"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "isPredictionOn"    # Z

    .prologue
    .line 847
    const-string v0, "ko"

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0, p3, p4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getMostLikelyKey(II)I

    move-result v0

    .line 851
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I

    move-result v0

    goto :goto_0
.end method

.method protected getKeyModelHashCode(Ljava/util/HashMap;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 645
    .local p1, "coordinates":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v0, "allkeys":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 648
    .local v7, "points":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/KeyShape;>;"
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 650
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/KeyShape;

    .line 651
    .local v3, "coordinate":Lcom/touchtype_fluency/KeyShape;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 652
    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Character;

    .local v2, "arr$":[Ljava/lang/Character;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 654
    .local v1, "alternative":Ljava/lang/Character;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 655
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 657
    .end local v1    # "alternative":Ljava/lang/Character;
    :cond_0
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 659
    .end local v2    # "arr$":[Ljava/lang/Character;
    .end local v3    # "coordinate":Lcom/touchtype_fluency/KeyShape;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    return v8
.end method

.method protected getKeyModelHashCodeEx(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 633
    .local p1, "coordinates":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    const/4 v1, 0x0

    .line 634
    .local v1, "hash":I
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 635
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    mul-int/lit16 v4, v1, 0x10f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/KeyShape;

    invoke-virtual {v3}, Lcom/touchtype_fluency/KeyShape;->hashCode()I

    move-result v3

    add-int v1, v4, v3

    .line 636
    mul-int/lit16 v4, v1, 0x10f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v4, v3

    goto :goto_0

    .line 638
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    :cond_0
    return v1
.end method

.method public getLastTokenFromSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contextText"    # Ljava/lang/String;

    .prologue
    .line 972
    const-string v1, ""

    .line 973
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 975
    .local v0, "sequence":Lcom/touchtype_fluency/Sequence;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 976
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 977
    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 978
    invoke-virtual {v0}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeGetInSequence(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    move-result-object v1

    .line 983
    .end local v0    # "sequence":Lcom/touchtype_fluency/Sequence;
    :cond_0
    return-object v1
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;II)I
    .locals 6
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "history"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 817
    const-string v1, "SamsungIME"

    const-string v2, "[AbstractSwiftkeyManager-getMostLikelyCharacter]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    new-instance v3, Lcom/touchtype_fluency/Point;

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-direct {v3, v4, v5}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->chooseMostLikelyCharacter(Lcom/touchtype_fluency/Predictor;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "character":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 827
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 830
    .end local v0    # "character":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;III)I
    .locals 5
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "history"    # Lcom/touchtype_fluency/TouchHistory;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "idx"    # I

    .prologue
    .line 837
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    new-instance v2, Lcom/touchtype_fluency/Point;

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-interface {v1, p1, p2, v2, p5}, Lcom/touchtype_fluency/Predictor;->getMostLikelyCharacter(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Point;I)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "character":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 840
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 843
    .end local v0    # "character":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getMostLikelyKey(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 803
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    new-instance v2, Lcom/touchtype_fluency/Point;

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/KeyPressModel;->mostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "closestKey":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v5

    if-eqz v1, :cond_0

    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 807
    aget-object v1, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 810
    .end local v0    # "closestKey":[Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPhoneticSpellGroup(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "langID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1661
    .local p1, "outSpellGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public getPredictions()Lcom/touchtype_fluency/Predictions;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method public getPredictionsAsArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/touchtype_fluency/Prediction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-nez v0, :cond_0

    .line 1115
    const/4 v0, 0x0

    .line 1120
    :goto_0
    return-object v0

    .line 1117
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1120
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getPredictor()Lcom/touchtype_fluency/Predictor;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    return-object v0
.end method

.method public getPreviewFlowPredicions()Lcom/touchtype_fluency/Predictions;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

    return-object v0
.end method

.method public getReservePredictions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract getResultsFilter(I)Lcom/touchtype_fluency/ResultsFilter;
.end method

.method public getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p2, "languageID"    # I
    .param p3, "contextText"    # Ljava/lang/String;
    .param p4, "currentText"    # Ljava/lang/String;
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, "outCharSequences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .line 1188
    .local v4, "sequence":Lcom/touchtype_fluency/Sequence;
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-eqz v6, :cond_3

    .line 1189
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v6, p3}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v4

    .line 1193
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v4, v6}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1194
    const/4 v5, 0x0

    .line 1195
    .local v5, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    const/high16 v6, 0x6b6f0000

    if-ne p2, v6, :cond_4

    .line 1196
    new-instance v5, Lcom/touchtype_fluency/TouchHistory;

    .end local v5    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-static {p4}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    .line 1200
    .restart local v5    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 1201
    invoke-static {p2}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    .line 1203
    :cond_0
    invoke-virtual {p0, v4, v5, p5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v3

    .line 1204
    .local v3, "predictions":Lcom/touchtype_fluency/Predictions;
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1205
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->enableAllModel()V

    .line 1207
    :cond_1
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Prediction;

    .line 1208
    .local v1, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v1}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    .line 1209
    .local v2, "predictionText":Ljava/lang/String;
    if-eqz v2, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xfffc

    if-eq v6, v7, :cond_2

    .line 1210
    const/high16 v6, 0x74680000

    if-ne p2, v6, :cond_5

    .line 1211
    const-string v6, "\\p{Space}"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1212
    const-string v6, "\\u200b"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1213
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1191
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v2    # "predictionText":Ljava/lang/String;
    .end local v3    # "predictions":Lcom/touchtype_fluency/Predictions;
    .end local v5    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    :cond_3
    new-instance v4, Lcom/touchtype_fluency/Sequence;

    .end local v4    # "sequence":Lcom/touchtype_fluency/Sequence;
    invoke-direct {v4}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .restart local v4    # "sequence":Lcom/touchtype_fluency/Sequence;
    goto :goto_0

    .line 1198
    .restart local v5    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    :cond_4
    new-instance v5, Lcom/touchtype_fluency/TouchHistory;

    .end local v5    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-direct {v5, p4}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    .restart local v5    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    goto :goto_1

    .line 1215
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "prediction":Lcom/touchtype_fluency/Prediction;
    .restart local v2    # "predictionText":Ljava/lang/String;
    .restart local v3    # "predictions":Lcom/touchtype_fluency/Predictions;
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1219
    .end local v1    # "prediction":Lcom/touchtype_fluency/Prediction;
    .end local v2    # "predictionText":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public getSwiftKeyConfigurationURL(Z)Ljava/lang/String;
    .locals 2
    .param p1, "isCA"    # Z

    .prologue
    .line 170
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->parseSwiftKeyVersion()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_4

    :cond_1
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heatnfc3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    :cond_2
    if-eqz p1, :cond_3

    .line 180
    const-string v0, "http://touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-CA-v1.1.json"

    .line 215
    :goto_0
    return-object v0

    .line 182
    :cond_3
    const-string v0, "http://touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-v1.1.json"

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_6

    .line 188
    if-eqz p1, :cond_5

    .line 189
    const-string v0, "http://touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-CA-v1.1.json"

    goto :goto_0

    .line 191
    :cond_5
    const-string v0, "http://touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-v1.1.json"

    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_8

    .line 194
    if-eqz p1, :cond_7

    .line 195
    const-string v0, "http://skslm.swiftkey.net/samsung/downloads/v1.2-CA/languagePacks.json"

    goto :goto_0

    .line 197
    :cond_7
    const-string v0, "http://skslm.swiftkey.net/samsung/downloads/v1.2/languagePacks.json"

    goto :goto_0

    .line 199
    :cond_8
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    if-ne v0, v1, :cond_c

    .line 200
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->isSupportRestrictedIndianLanguage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    if-eqz p1, :cond_9

    .line 202
    const-string v0, "http://skslm.swiftkey.net/samsung/downloads/v1.3-CA/languagePacks.json"

    goto :goto_0

    .line 204
    :cond_9
    const-string v0, "http://skslm.swiftkey.net/samsung/downloads/v1.3-USA/languagePacks.json"

    goto :goto_0

    .line 208
    :cond_a
    if-eqz p1, :cond_b

    .line 209
    const-string v0, "http://skslm.swiftkey.net/samsung/downloads/v1.3-CA/languagePacks.json"

    goto :goto_0

    .line 211
    :cond_b
    const-string v0, "http://skslm.swiftkey.net/samsung/downloads/v1.3/languagePacks.json"

    goto :goto_0

    .line 215
    :cond_c
    const-string v0, "http://touchtype-fluency.com/samsung/downloads/languagePacks-Samsung-v1.1.json"

    goto :goto_0
.end method

.method public getSwiftKeySession()Lcom/touchtype_fluency/Session;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method public getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 4

    .prologue
    .line 258
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-nez v1, :cond_0

    .line 260
    :try_start_0
    const-string v1, "Samsung_nolimit_flow_f2498e18"

    invoke-static {v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Lcom/touchtype_fluency/LicenseException;
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaild swiftkey license : Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSwiftKeyVersion()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyVersion:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    return-object v0
.end method

.method public getTokenizer()Lcom/touchtype_fluency/Tokenizer;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    return-object v0
.end method

.method public getTouchHistory()Lcom/touchtype_fluency/TouchHistory;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    return-object v0
.end method

.method public getTrainer()Lcom/touchtype_fluency/Trainer;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    return-object v0
.end method

.method public halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 1712
    const/4 v0, 0x0

    return-object v0
.end method

.method public hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 1702
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoAceeptBeforeFlow(Lcom/touchtype_fluency/Sequence;)Z
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1241
    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->SafeSequenceRemove(Lcom/touchtype_fluency/Sequence;I)Ljava/lang/String;

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContactSpecificContext()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mEnableContactSpecificContext:Z

    return v0
.end method

.method public isPreviewFlow()Z
    .locals 1

    .prologue
    .line 1322
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    return v0
.end method

.method public isValidCharacter(C)Z
    .locals 1
    .param p1, "keyCode"    # C

    .prologue
    .line 1682
    const/4 v0, 0x0

    return v0
.end method

.method public isValidWord(Ljava/lang/String;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1624
    const/4 v0, 0x0

    .line 1625
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v1, :cond_0

    .line 1626
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    .line 1628
    :cond_0
    return v0
.end method

.method public katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 1707
    const/4 v0, 0x0

    return-object v0
.end method

.method public learnDynamicModel(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1518
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v4, :cond_0

    .line 1522
    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    if-eqz v4, :cond_2

    .line 1523
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v4}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 1524
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    .line 1526
    :cond_2
    new-instance v1, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v1}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .line 1527
    .local v1, "sequence":Lcom/touchtype_fluency/Sequence;
    sget-object v4, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v1, v4}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1528
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v4, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1529
    .local v2, "token":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1530
    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 1533
    .end local v2    # "token":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v1, v5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    .line 1534
    iget v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    invoke-direct {p0, p1, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->verifyFieldSpecificFormat(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1535
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setFieldSpecificSequence(Lcom/touchtype_fluency/Sequence;)V

    .line 1537
    :cond_5
    move-object v3, v1

    .line 1538
    .local v3, "trainerSequence":Lcom/touchtype_fluency/Sequence;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    .line 1539
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$3;

    invoke-direct {v5, p0, v3}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$3;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;Lcom/touchtype_fluency/Sequence;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public learnFieldSpecificContext(Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1404
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1407
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_0

    .line 1408
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    .line 1409
    .local v0, "sequnece":Lcom/touchtype_fluency/Sequence;
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->verifyFieldSpecificFormat(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1410
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFieldSpecificID(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    .line 1412
    :cond_2
    sget-object v1, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1413
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1414
    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 1415
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v1, v0}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    goto :goto_0
.end method

.method public learnKeyPressModel(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1508
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1509
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v0

    .line 1510
    .local v0, "prediction":Lcom/touchtype_fluency/Prediction;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-interface {v1, v2, v0}, Lcom/touchtype_fluency/Trainer;->learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V

    .line 1512
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 1515
    .end local v0    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_0
    return-void
.end method

.method public learnTempDynamicModel(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1551
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v1, :cond_1

    .line 1552
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1553
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 1554
    .local v0, "sequence":Lcom/touchtype_fluency/Sequence;
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->learnStringWithExclusionPattern(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V

    .line 1557
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    .line 1560
    .end local v0    # "sequence":Lcom/touchtype_fluency/Sequence;
    :cond_1
    return-void
.end method

.method protected loadCurrentKeyPressModelFileName(II)Ljava/lang/String;
    .locals 4
    .param p1, "inputMode"    # I
    .param p2, "hashCode"    # I

    .prologue
    .line 629
    const-string v0, "model_%d_%d.im"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadKorCharacterMap(I)V
    .locals 5
    .param p1, "langID"    # I

    .prologue
    .line 552
    const/high16 v4, 0x6b6f0000

    if-eq p1, v4, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    .line 556
    .local v1, "hangulMode":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 557
    .local v2, "inputMode":I
    if-eq v2, v1, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v3

    .line 561
    .local v3, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-interface {v3}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v0

    .line 562
    .local v0, "cm":Lcom/touchtype_fluency/CharacterMap;
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v4, v0}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->clearChracterMap(Lcom/touchtype_fluency/CharacterMap;)V

    .line 563
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v4, v0}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->loadKorCharacterMapWithInitialInput(Lcom/touchtype_fluency/CharacterMap;)V

    goto :goto_0
.end method

.method public loadKorCharacterMap(ILjava/util/List;)V
    .locals 5
    .param p1, "langID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/high16 v4, 0x6b6f0000

    if-eq p1, v4, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    .line 571
    .local v1, "hangulMode":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    .line 572
    .local v2, "inputMode":I
    if-eq v2, v1, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 575
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v3

    .line 576
    .local v3, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-interface {v3}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v0

    .line 577
    .local v0, "cm":Lcom/touchtype_fluency/CharacterMap;
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v4, v0}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->clearChracterMap(Lcom/touchtype_fluency/CharacterMap;)V

    .line 578
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->load_enabled_charactermaps(Ljava/util/List;)Z

    .line 579
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {v4, v0}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->loadKorCharacterMapWithInitialInput(Lcom/touchtype_fluency/CharacterMap;)V

    goto :goto_0
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .locals 2
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/LoadProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v1, 0x0

    .line 322
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 327
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 328
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    goto :goto_0
.end method

.method public loadLanguageModel(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;Z)V
    .locals 2
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p3, "listener"    # Lcom/touchtype_fluency/util/LoadProgressListener;
    .param p4, "isPhonePadMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v1, 0x0

    .line 332
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    .line 337
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 338
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V

    goto :goto_0
.end method

.method public loadOrUnloadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;Z)V
    .locals 5
    .param p1, "lpm"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p2, "load"    # Z

    .prologue
    .line 356
    if-eqz p2, :cond_0

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    :goto_0
    return-void

    .line 364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v1, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    goto :goto_0

    .line 359
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public load_enabled_charactermaps(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v4, 0x0

    .line 583
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v5, :cond_0

    .line 584
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v5}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v0

    .line 585
    .local v0, "cmap":Lcom/touchtype_fluency/CharacterMap;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    .line 587
    .local v3, "pack":Lcom/touchtype_fluency/util/LanguagePack;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/charactermap.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/touchtype_fluency/CharacterMap;->addLanguageFromFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/FileCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 600
    .end local v0    # "cmap":Lcom/touchtype_fluency/CharacterMap;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pack":Lcom/touchtype_fluency/util/LanguagePack;
    :goto_1
    return v4

    .line 591
    .restart local v0    # "cmap":Lcom/touchtype_fluency/CharacterMap;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pack":Lcom/touchtype_fluency/util/LanguagePack;
    :catch_1
    move-exception v1

    .line 592
    .local v1, "e":Lcom/touchtype_fluency/FileCorruptException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 594
    .end local v1    # "e":Lcom/touchtype_fluency/FileCorruptException;
    :catch_2
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 600
    .end local v0    # "cmap":Lcom/touchtype_fluency/CharacterMap;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public previewFlow(Lcom/touchtype_fluency/Sequence;[Landroid/graphics/PointF;ILjava/lang/String;I)I
    .locals 7
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchPoints"    # [Landroid/graphics/PointF;
    .param p3, "pointCount"    # I
    .param p4, "verbatim"    # Ljava/lang/String;
    .param p5, "count"    # I

    .prologue
    const/4 v6, 0x1

    .line 1270
    iget-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    if-nez v2, :cond_4

    .line 1271
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 1272
    .local v0, "SequeceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    if-nez v2, :cond_2

    .line 1273
    new-instance v2, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v2}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    .line 1277
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1278
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p4, :cond_0

    .line 1279
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v2, p4}, Lcom/touchtype_fluency/Sequence;->append(Ljava/lang/String;)V

    .line 1280
    iput-boolean v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    .line 1282
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0, v2, v6}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setContactSpecificSequence(Lcom/touchtype_fluency/Sequence;Z)Z

    .line 1283
    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 1285
    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    .line 1286
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v3, Lcom/touchtype_fluency/Point;

    aget-object v4, p2, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v5, p2, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;)V

    .line 1284
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1275
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v2}, Ljava/util/AbstractList;->clear()V

    goto :goto_0

    .line 1289
    .restart local v1    # "i":I
    :cond_3
    iput p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    .line 1290
    iput-boolean v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    .line 1299
    .end local v0    # "SequeceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {p0, v2, v3, p5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->processPreviewFlow(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;I)V

    .line 1300
    return v6

    .line 1292
    .end local v1    # "i":I
    :cond_4
    iget v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, p3, :cond_6

    .line 1293
    aget-object v2, p2, v1

    if-eqz v2, :cond_5

    .line 1294
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v3, Lcom/touchtype_fluency/Point;

    aget-object v4, p2, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v5, p2, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;)V

    .line 1292
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1297
    :cond_6
    iput p3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    goto :goto_2
.end method

.method public processFlow([Landroid/graphics/PointF;I)V
    .locals 6
    .param p1, "touchPoints"    # [Landroid/graphics/PointF;
    .param p2, "pointCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 1247
    iget-boolean v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    if-nez v1, :cond_1

    .line 1248
    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1249
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_4

    .line 1251
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v2, Lcom/touchtype_fluency/Point;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;)V

    .line 1250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 1257
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, p2, :cond_3

    .line 1258
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 1259
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    new-instance v2, Lcom/touchtype_fluency/Point;

    aget-object v3, p1, v0

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;)V

    .line 1257
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1262
    :cond_3
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsPreviewFlow:Z

    .line 1263
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAppendVerbatimInSequence:Z

    .line 1264
    iput v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowTouchPointIndex:I

    .line 1265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1267
    :cond_4
    return-void
.end method

.method public registerPreviewFlowPredictionListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1
    .param p1, "predictionsListener"    # Lcom/touchtype_fluency/util/PredictionsListener;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 1319
    return-void
.end method

.method public removeCurrentTermFromTemporaryModel()V
    .locals 3

    .prologue
    .line 1615
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "editedTerm":Ljava/lang/String;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)V

    .line 1621
    :cond_0
    return-void
.end method

.method public removeTerm(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1563
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v2, :cond_1

    .line 1564
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    if-ltz p1, :cond_1

    .line 1566
    iget v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eqz v2, :cond_0

    .line 1567
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getFilteredFieldSpecificPredictions(Lcom/touchtype_fluency/Predictions;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1568
    .local v0, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Prediction;

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v1

    .line 1572
    .end local v0    # "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/touchtype_fluency/Prediction;>;"
    .local v1, "term":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->toInitialCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    .line 1573
    invoke-virtual {p0, v4, v4}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 1574
    const/4 v2, 0x1

    .line 1577
    .end local v1    # "term":Ljava/lang/String;
    :goto_1
    return v2

    .line 1570
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v2, p1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "term":Ljava/lang/String;
    goto :goto_0

    .line 1577
    .end local v1    # "term":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public replaceLanguageModel(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 2
    .param p3, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p4, "listener"    # Lcom/touchtype_fluency/util/CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "oldLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .local p2, "newLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v1, 0x0

    .line 343
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    const/4 p1, 0x0

    .line 346
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 347
    :cond_2
    const/4 p2, 0x0

    .line 349
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 350
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    .line 352
    :cond_5
    invoke-virtual {p0, v1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 353
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 135
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    .line 136
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    .line 137
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    .line 138
    iput-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    .line 139
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReady:Z

    .line 142
    return-void
.end method

.method public resetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    .line 925
    :cond_0
    return-void
.end method

.method public resetTemporaryModel()V
    .locals 1

    .prologue
    .line 1608
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDiableTempDynamicModel:Z

    .line 1612
    :cond_0
    return-void
.end method

.method public restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;
    .locals 4
    .param p1, "currentWord"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v2, 0x0

    .line 688
    .local v2, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 689
    .local v0, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/touchtype_fluency/TouchHistory;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v2    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    check-cast v2, Lcom/touchtype_fluency/TouchHistory;

    .line 694
    .end local v0    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/touchtype_fluency/TouchHistory;>;"
    .restart local v2    # "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    :cond_1
    return-object v2
.end method

.method public romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "inStr"    # Ljava/lang/String;

    .prologue
    .line 1696
    invoke-static {p1}, Lcom/touchtype_fluency/Japanese;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "convert":Ljava/lang/String;
    return-object v0
.end method

.method public saveAndClear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 221
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 222
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->resetTemporaryModel()V

    .line 224
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyTempDynamicModel:Z

    .line 226
    :cond_0
    const-string v1, "kpmLocker"

    monitor-enter v1

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictor:Lcom/touchtype_fluency/Predictor;

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 232
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    if-eqz v0, :cond_2

    .line 240
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyDynamicModel:Z

    .line 241
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager$1;-><init>(Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 255
    :cond_2
    return-void

    .line 238
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;I)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p5, "langID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 422
    .local p2, "coords":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    .local p3, "layout":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .local p4, "layoutFilter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v5

    .line 423
    .local v5, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-interface {v5}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v4

    .line 424
    .local v4, "keyPressModel":Lcom/touchtype_fluency/KeyPressModel;
    const-string v7, "kpmLocker"

    monitor-enter v7

    .line 426
    :try_start_0
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 427
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :cond_0
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    if-eqz p1, :cond_1

    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/touchtype_fluency/KeyPressModel;->loadFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 440
    :try_start_3
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-static {v6}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->getInstance(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 458
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 459
    .local v2, "fileSize":J
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x64

    int-to-long v8, v6

    cmp-long v6, v2, v8

    if-gez v6, :cond_3

    .line 461
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 462
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 468
    .end local v2    # "fileSize":J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 444
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 445
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 451
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 452
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 454
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 455
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 457
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    :try_start_7
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v8, :cond_2

    if-eqz p2, :cond_2

    .line 458
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 459
    .restart local v2    # "fileSize":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_2

    .line 461
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 462
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 448
    .end local v2    # "fileSize":J
    :cond_1
    const/4 v6, 0x1

    :try_start_8
    iput-boolean v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 449
    invoke-interface {v4, p2}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 464
    :cond_2
    :try_start_9
    throw v6

    .line 467
    :cond_3
    invoke-virtual {p0, p5}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadKorCharacterMap(I)V

    .line 468
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 469
    const/high16 v6, 0x6b6f0000

    if-eq p5, v6, :cond_4

    .line 470
    invoke-interface {v5}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v0

    .line 471
    .local v0, "characterMap":Lcom/touchtype_fluency/CharacterMap;
    if-eqz p3, :cond_6

    .line 472
    invoke-interface {v0, p3}, Lcom/touchtype_fluency/CharacterMap;->setLayout(Ljava/util/Map;)V

    .line 477
    .end local v0    # "characterMap":Lcom/touchtype_fluency/CharacterMap;
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 478
    invoke-interface {v5, p4}, Lcom/touchtype_fluency/Predictor;->setLayoutKeys(Ljava/util/Set;)V

    .line 479
    iput-object p4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    .line 480
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    .line 482
    :cond_5
    return-void

    .line 474
    .restart local v0    # "characterMap":Lcom/touchtype_fluency/CharacterMap;
    :cond_6
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v6}, Lcom/touchtype_fluency/CharacterMap;->setLayout(Ljava/util/Map;)V

    goto :goto_2

    .line 432
    .end local v0    # "characterMap":Lcom/touchtype_fluency/CharacterMap;
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 429
    :catch_3
    move-exception v6

    goto/16 :goto_0
.end method

.method protected saveAndLoadKeyPressModel(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;ILjava/util/List;)V
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p5, "langID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "coords":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    .local p3, "layout":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .local p4, "layoutFilter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p6, "packs":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v7

    .line 490
    .local v7, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-interface {v7}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v6

    .line 491
    .local v6, "keyPressModel":Lcom/touchtype_fluency/KeyPressModel;
    const-string v9, "kpmLocker"

    monitor-enter v9

    .line 493
    :try_start_0
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 494
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_0
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    if-eqz p1, :cond_1

    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 505
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/touchtype_fluency/KeyPressModel;->loadFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 507
    :try_start_3
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-static {v8}, Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;->getInstance(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mAdjacentErrorCorrection:Lcom/touchtype/samsung/supportlibrary/adjacenterrorcorrection/AdjacentErrorCorrection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 524
    :goto_1
    :try_start_4
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v8, :cond_3

    if-eqz p2, :cond_3

    .line 525
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 526
    .local v4, "fileSize":J
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    int-to-long v10, v8

    cmp-long v8, v4, v10

    if-gez v8, :cond_3

    .line 528
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 529
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8

    .line 535
    .end local v4    # "fileSize":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 508
    :catch_0
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 512
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 518
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 519
    .local v3, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 521
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 522
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 524
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    :try_start_7
    iget-object v10, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v10, :cond_2

    if-eqz p2, :cond_2

    .line 525
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 526
    .restart local v4    # "fileSize":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x64

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_2

    .line 528
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 529
    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 515
    .end local v4    # "fileSize":J
    :cond_1
    const/4 v8, 0x1

    :try_start_8
    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 516
    invoke-interface {v6, p2}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 531
    :cond_2
    :try_start_9
    throw v8

    .line 534
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->loadKorCharacterMap(ILjava/util/List;)V

    .line 535
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 536
    const/high16 v8, 0x6b6f0000

    move/from16 v0, p5

    if-eq v0, v8, :cond_4

    .line 537
    invoke-interface {v7}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v2

    .line 538
    .local v2, "characterMap":Lcom/touchtype_fluency/CharacterMap;
    if-eqz p3, :cond_6

    .line 539
    invoke-interface {v2, p3}, Lcom/touchtype_fluency/CharacterMap;->setLayout(Ljava/util/Map;)V

    .line 544
    .end local v2    # "characterMap":Lcom/touchtype_fluency/CharacterMap;
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 545
    move-object/from16 v0, p4

    invoke-interface {v7, v0}, Lcom/touchtype_fluency/Predictor;->setLayoutKeys(Ljava/util/Set;)V

    .line 546
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    .line 547
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    .line 549
    :cond_5
    return-void

    .line 541
    .restart local v2    # "characterMap":Lcom/touchtype_fluency/CharacterMap;
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v8}, Lcom/touchtype_fluency/CharacterMap;->setLayout(Ljava/util/Map;)V

    goto :goto_2

    .line 499
    .end local v2    # "characterMap":Lcom/touchtype_fluency/CharacterMap;
    :catch_2
    move-exception v8

    goto/16 :goto_0

    .line 496
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method protected saveAndLoadKeyPressModel(Ljava/util/HashMap;Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "coords":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;>;"
    .local p2, "layoutFilter":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 604
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    .line 605
    .local v1, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    .line 606
    .local v0, "keyPressModel":Lcom/touchtype_fluency/KeyPressModel;
    const-string v3, "kpmLocker"

    monitor-enter v3

    .line 608
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    .line 618
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 619
    invoke-interface {v0, p1}, Lcom/touchtype_fluency/KeyPressModel;->set(Ljava/util/Map;)V

    .line 620
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    if-eqz p2, :cond_1

    .line 622
    invoke-interface {v1, p2}, Lcom/touchtype_fluency/Predictor;->setLayoutKeys(Ljava/util/Set;)V

    .line 623
    iput-object p2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mLayoutKeys:Ljava/util/Set;

    .line 624
    iput-boolean v4, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIsAddDefaultSymbol:Z

    .line 626
    :cond_1
    return-void

    .line 620
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 614
    :catch_0
    move-exception v2

    goto :goto_0

    .line 611
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public setBlacklist(Ljava/lang/String;)V
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v0, p1}, Lcom/touchtype_fluency/Trainer;->setBlacklist(Ljava/lang/String;)V

    .line 1494
    :cond_0
    return-void
.end method

.method protected declared-synchronized setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V
    .locals 1
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 1633
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedSequence:Lcom/touchtype_fluency/Sequence;

    .line 1634
    iput-object p2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCachedTouchHistory:Lcom/touchtype_fluency/TouchHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    monitor-exit p0

    return-void

    .line 1633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setChinesePhoneticIndex(Lcom/touchtype_fluency/Sequence;I)V
    .locals 0
    .param p1, "sequence"    # Lcom/touchtype_fluency/Sequence;
    .param p2, "index"    # I

    .prologue
    .line 1665
    return-void
.end method

.method public setChineseSearchType(IZ)V
    .locals 0
    .param p1, "langID"    # I
    .param p2, "isStroke"    # Z

    .prologue
    .line 1669
    return-void
.end method

.method public setContactSpecificID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mContactSpecificID:Ljava/lang/String;

    .line 1335
    return-void
.end method

.method public setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 0
    .param p1, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .param p2, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p3, "inputType"    # Ljava/lang/String;

    .prologue
    .line 1639
    invoke-virtual {p1, p2, p3}, Lcom/touchtype_fluency/util/LanguagePackManager;->setCurrentInputType(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    .line 1640
    return-void
.end method

.method public setDynamicModelsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setDynamicModelsEnabled(Z)V

    .line 318
    :cond_0
    return-void
.end method

.method public setExclusionPattern()V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    new-instance v1, Lcom/touchtype_fluency/util/ExclusionPattern;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDefaultExclusionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/util/ExclusionPattern;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V

    .line 312
    :cond_0
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 1370
    iget v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    if-eq v0, p1, :cond_0

    .line 1371
    if-eqz p1, :cond_1

    .line 1372
    const-string v0, "dynamic-term-model"

    const-string v1, "dynamic-scale-powers"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x3e4ccccd

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3e000000

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x3dcccccd

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;)V

    .line 1379
    :cond_0
    :goto_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mFieldSpecificType:I

    .line 1380
    return-void

    .line 1376
    :cond_1
    const-string v0, "dynamic-term-model"

    const-string v1, "dynamic-scale-powers"

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->resetParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntentionalEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1451
    const-string v0, "_-\'&"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1453
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mIntentionalEvents:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->setIntentionalEvents(Ljava/util/Set;)V

    .line 1455
    :cond_0
    return-void
.end method

.method protected setKeyShpae(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V
    .locals 2
    .param p1, "keyShape"    # Lcom/touchtype_fluency/KeyShape;
    .param p2, "alternatives"    # [Ljava/lang/Character;

    .prologue
    .line 663
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    .line 667
    .local v1, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    .line 668
    .local v0, "keyPressModel":Lcom/touchtype_fluency/KeyPressModel;
    invoke-interface {v0, p1, p2}, Lcom/touchtype_fluency/KeyPressModel;->setKeyShape(Lcom/touchtype_fluency/KeyShape;[Ljava/lang/Character;)V

    goto :goto_0
.end method

.method public setLiveLanguageModelsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setLiveLanguageModelsEnabled(Z)V

    .line 408
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 871
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    .line 873
    .local v1, "parameter":Lcom/touchtype_fluency/Parameter;
    if-eqz v1, :cond_0

    .line 875
    :try_start_0
    invoke-interface {v1, p3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 885
    .end local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    :cond_0
    :goto_0
    return-void

    .line 876
    .restart local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 879
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 881
    .local v0, "e":Lcom/touchtype_fluency/ParameterOutOfRangeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 905
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    .line 906
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    .line 907
    .local v1, "parameter":Lcom/touchtype_fluency/Parameter;
    if-eqz v1, :cond_0

    .line 909
    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 919
    .end local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    :cond_0
    :goto_0
    return-void

    .line 910
    .restart local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 913
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 915
    .local v0, "e":Lcom/touchtype_fluency/ParameterOutOfRangeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Float;)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "value"    # [Ljava/lang/Float;

    .prologue
    .line 888
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    if-eqz v2, :cond_0

    .line 889
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeySession:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v1

    .line 890
    .local v1, "parameter":Lcom/touchtype_fluency/Parameter;
    if-eqz v1, :cond_0

    .line 892
    :try_start_0
    invoke-interface {v1, p3}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 902
    .end local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    :cond_0
    :goto_0
    return-void

    .line 893
    .restart local v1    # "parameter":Lcom/touchtype_fluency/Parameter;
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 896
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 898
    .local v0, "e":Lcom/touchtype_fluency/ParameterOutOfRangeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPredictions(Lcom/touchtype_fluency/Predictions;)V
    .locals 0
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1125
    return-void
.end method

.method public setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1
    .param p1, "predictionsListener"    # Lcom/touchtype_fluency/util/PredictionsListener;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSwiftKeyUtilSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V

    .line 988
    return-void
.end method

.method public setPreviewFlowPredicions(Lcom/touchtype_fluency/Predictions;)V
    .locals 0
    .param p1, "predictions"    # Lcom/touchtype_fluency/Predictions;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPreviewFlowPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1327
    return-void
.end method

.method public setReservePredictions(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1158
    .local p1, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->clearReservePredictions()V

    .line 1159
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-nez v5, :cond_1

    .line 1175
    :cond_0
    return-void

    .line 1162
    :cond_1
    const/4 v2, 0x0

    .line 1163
    .local v2, "needNotToAdd":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1164
    .local v4, "verbatim":Ljava/lang/String;
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v5}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/Prediction;

    .line 1165
    .local v3, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1166
    const/4 v2, 0x1

    .line 1170
    .end local v3    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_3
    if-nez v2, :cond_4

    .line 1171
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mReservePredictions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSequenceType(Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/touchtype_fluency/Sequence$Type;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mSequnceType:Lcom/touchtype_fluency/Sequence$Type;

    .line 306
    return-void
.end method

.method public setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V
    .locals 2
    .param p1, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 723
    if-eqz p2, :cond_0

    .line 724
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 725
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :cond_0
    return-void
.end method

.method public setTouchHistory(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 702
    new-instance v0, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v0, p1}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 703
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 704
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mInputBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    return-void
.end method

.method protected shouldLoadKeyPressModel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCurrentKeyPressModelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startChonjiinFlow()V
    .locals 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCharacterMapHelper:Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Predictor;->getCharacterMap()Lcom/touchtype_fluency/CharacterMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/engine/swiftkey/CharacterMapHelper;->startChonjiinFlow(Lcom/touchtype_fluency/CharacterMap;)V

    .line 1723
    return-void
.end method

.method public storeTouchHistory(Ljava/lang/String;I)V
    .locals 4
    .param p1, "verbatim"    # Ljava/lang/String;
    .param p2, "languageID"    # I

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, "modifyVerbatim":Ljava/lang/String;
    const/high16 v1, 0x6b6f0000

    if-ne p2, v1, :cond_1

    .line 674
    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 679
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistory:Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 680
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 681
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTouchHistoryRepository:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 684
    :cond_0
    return-void

    .line 676
    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method toInitialCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "term"    # Ljava/lang/String;

    .prologue
    .line 1581
    if-nez p1, :cond_0

    .line 1582
    const/4 v7, 0x0

    .line 1603
    :goto_0
    return-object v7

    .line 1584
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1585
    .local v6, "termLength":I
    if-nez v6, :cond_1

    .line 1586
    const-string v7, ""

    goto :goto_0

    .line 1590
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1591
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1592
    .local v1, "currentChar":I
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v2

    .line 1593
    .local v2, "initialCap":I
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1594
    .local v0, "chars":[C
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1597
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .local v4, "offset":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 1598
    invoke-virtual {p1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1599
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 1600
    .local v3, "lowercase":I
    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1601
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1597
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_1

    .line 1603
    .end local v3    # "lowercase":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public tokenizerSplit(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;
    .locals 2
    .param p1, "contextText"    # Ljava/lang/String;

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTokenizer:Lcom/touchtype_fluency/Tokenizer;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 1687
    .local v0, "splitSequence":Lcom/touchtype_fluency/Sequence;
    return-object v0
.end method

.method public updateCPSpell(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 1649
    return-void
.end method

.method public updateKeyPressModeling(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "touchHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p2, "text"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1497
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    if-eqz v2, :cond_1

    .line 1498
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1499
    .local v1, "keySet":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1500
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mTrainer:Lcom/touchtype_fluency/Trainer;

    invoke-interface {v2, p1, v1}, Lcom/touchtype_fluency/Trainer;->learnFrom(Lcom/touchtype_fluency/TouchHistory;[Ljava/lang/String;)V

    .line 1503
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mDirtyKeyPressModel:Z

    .line 1505
    .end local v0    # "i":I
    .end local v1    # "keySet":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateShiftState(ZZ)V
    .locals 2
    .param p1, "shift"    # Z
    .param p2, "capslock"    # Z

    .prologue
    const/4 v1, 0x0

    .line 374
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 375
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 376
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 384
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->setCacheSequenceAndTouchHistory(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;)V

    .line 385
    return-void

    .line 377
    :cond_0
    if-eqz p1, :cond_1

    .line 378
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 379
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    goto :goto_0

    .line 381
    :cond_1
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 382
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/swiftkey/AbstractSwiftkeyManager;->mCapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    goto :goto_0
.end method
