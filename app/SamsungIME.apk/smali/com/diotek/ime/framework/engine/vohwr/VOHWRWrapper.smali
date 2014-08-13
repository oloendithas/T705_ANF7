.class public Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "VOHWRWrapper.java"

# interfaces
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;


# static fields
.field private static final COMPOSING_RECOGNITION:Z = true

.field private static final INVALIDE_CHARACTER:Ljava/lang/Character;

.field private static final PANELTEXTSIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "VisionObject"

.field private static mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;


# instance fields
.field private backupScriptType:I

.field private mCapslockMode:Z

.field private mComposingBase:I

.field private mComposingEnd:I

.field private mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

.field private mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private mCursorChanged:Z

.field private mDelayedConfiguration:Z

.field private mEndindex:I

.field private mFirstReconnition:Z

.field protected mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mHWRKeyboard:Landroid/widget/FrameLayout;

.field private mIsConfigurationOnGoing:Z

.field private mIsPickSuggestion:Z

.field private mPanelCursor:I

.field private mPanelIsInsertMode:Z

.field private mPanelTempText:Ljava/lang/String;

.field private mPanelText:Ljava/lang/String;

.field private mPredictions:Lcom/touchtype_fluency/Predictions;

.field private mSelectedLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSequence:Lcom/touchtype_fluency/Sequence;

.field private mShiftMode:Z

.field private mStartindex:I

.field private mStringBeforeCursor:Ljava/lang/String;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalEditText:Ljava/lang/CharSequence;

.field prevInputConnection:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const v0, 0xfffd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->INVALIDE_CHARACTER:Ljava/lang/Character;

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    .line 110
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 111
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 112
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    .line 85
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 86
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingEnd:I

    .line 89
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    .line 90
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    .line 98
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 99
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    .line 101
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    .line 102
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 104
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 107
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mShiftMode:Z

    .line 108
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCapslockMode:Z

    .line 113
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->backupScriptType:I

    .line 116
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    .line 117
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    .line 118
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFirstReconnition:Z

    .line 119
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    .line 120
    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    .line 121
    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedText:Ljava/lang/CharSequence;

    .line 124
    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 125
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    sget-object v1, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 126
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->loadVOLibrary()V

    .line 127
    return-void
.end method

.method private CheckAndPipingPanelText(Ljava/lang/String;)V
    .locals 10
    .param p1, "panelText"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 732
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 733
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v1

    .line 735
    .local v1, "cursor":I
    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_8

    .line 736
    const/4 v3, 0x0

    .line 737
    .local v3, "spaceIndex":I
    const-string v0, ""

    .line 739
    .local v0, "composingText":Ljava/lang/CharSequence;
    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_4

    .line 740
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 741
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3

    .line 743
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 747
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 749
    if-eqz v2, :cond_2

    .line 750
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 752
    :cond_2
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 753
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    .line 755
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 756
    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v5, ""

    invoke-interface {v4, v7, v3, v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 757
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sub-int v5, v1, v3

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto :goto_0

    .line 740
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 759
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_2
    if-ltz v3, :cond_5

    .line 760
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_7

    .line 765
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 767
    if-eqz v2, :cond_6

    .line 768
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 770
    :cond_6
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    .line 772
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 773
    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    invoke-interface {v4, v3, v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 774
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto/16 :goto_0

    .line 759
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 777
    .end local v0    # "composingText":Ljava/lang/CharSequence;
    .end local v3    # "spaceIndex":I
    :cond_8
    return-void
.end method

.method private SetCorrectionMode(I)V
    .locals 2
    .param p1, "curindex"    # I

    .prologue
    .line 1197
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    .line 1198
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    .line 1199
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    .line 1200
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 1201
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    .line 1203
    :cond_0
    return-void
.end method

.method private SetInsertionMode(I)V
    .locals 1
    .param p1, "curindex"    # I

    .prologue
    .line 1189
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    .line 1190
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 1191
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    .line 1192
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 1194
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method private checkValideStr(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 510
    if-nez p1, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v3

    .line 513
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 514
    .local v0, "chars":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 516
    .local v1, "hex":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 517
    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 518
    const-string v4, "VisionObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ Value ] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    aget-char v4, v0, v2

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->INVALIDE_CHARACTER:Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-eq v4, v5, :cond_0

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 523
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private closeInsertMode()V
    .locals 1

    .prologue
    .line 1750
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1753
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    .line 1754
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1755
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    .line 1756
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->moveCursorToVisibleIndex()Z

    goto :goto_0
.end method

.method private commitEditText(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "commitText"    # Ljava/lang/String;
    .param p2, "updateEditTextReculsive"    # Z

    .prologue
    .line 1693
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1695
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1696
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1697
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1699
    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    if-gez v1, :cond_0

    .line 1700
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 1702
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 1703
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1705
    :cond_1
    return-void
.end method

.method private composingEditText(Ljava/lang/String;)V
    .locals 2
    .param p1, "commitText"    # Ljava/lang/String;

    .prologue
    .line 1709
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1710
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_0

    .line 1711
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1712
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1716
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1726
    :cond_1
    :goto_0
    return-void

    .line 1719
    :cond_2
    if-eqz v0, :cond_1

    .line 1720
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1721
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1722
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1723
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, v1, :cond_1

    .line 1724
    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    goto :goto_0
.end method

.method private configure()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    .line 294
    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    if-eqz v12, :cond_1

    .line 295
    iput-boolean v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    const/4 v9, 0x0

    .line 299
    .local v9, "resources":[Ljava/lang/String;
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v11

    .line 300
    .local v11, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v5

    .line 301
    .local v5, "languageCode":Ljava/lang/String;
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v4

    .line 303
    .local v4, "isUrlMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    .line 304
    .local v3, "isEmailMode":Z
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 307
    .local v2, "inputRange":I
    invoke-virtual {v11, v5, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, "languageName":Ljava/lang/String;
    const-string v8, ""

    .line 311
    .local v8, "mode":Ljava/lang/String;
    if-ne v2, v13, :cond_5

    .line 312
    const-string v8, "number"

    .line 320
    :goto_1
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->createUserDictionary(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "lexicon":[Ljava/lang/String;
    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    .line 324
    .local v10, "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v10, :cond_2

    .line 325
    invoke-virtual {v10, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 326
    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 329
    :cond_2
    if-nez v9, :cond_3

    .line 330
    const-string v12, "SamsungIME"

    const-string v13, "Exception no VO resource. try to load default VOLP"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v6, "en_GB"

    .line 332
    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    .line 333
    if-eqz v10, :cond_3

    .line 334
    invoke-virtual {v10, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 338
    :cond_3
    if-nez v9, :cond_4

    .line 339
    const-string v12, "SamsungIME"

    const-string v13, "Exception no VO resource. try to load default VOLP"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v6, "en_US"

    .line 341
    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    .line 342
    if-eqz v10, :cond_4

    .line 343
    invoke-virtual {v10, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 347
    :cond_4
    if-nez v9, :cond_8

    .line 349
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    goto :goto_0

    .line 313
    .end local v7    # "lexicon":[Ljava/lang/String;
    .end local v10    # "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_5
    if-eqz v4, :cond_6

    .line 314
    const-string v8, "uri"

    goto :goto_1

    .line 315
    :cond_6
    if-eqz v3, :cond_7

    .line 316
    const-string v8, "email"

    goto :goto_1

    .line 318
    :cond_7
    const-string v8, "text"

    goto :goto_1

    .line 353
    .restart local v7    # "lexicon":[Ljava/lang/String;
    .restart local v10    # "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_8
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v12, :cond_a

    .line 354
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    array-length v12, v9

    if-ge v1, v12, :cond_9

    .line 355
    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "configuration with resouce : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v9, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 357
    :cond_9
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-static {}, Lcom/visionobjects/myscript/certificate/MyCertificate;->getBytes()[B

    move-result-object v13

    invoke-interface {v12, v6, v9, v7, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->configure(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V

    .line 360
    .end local v1    # "index":I
    :cond_a
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setSwiftkeySession()V

    goto/16 :goto_0
.end method

.method private createUserDictionary(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v4, 0x0

    .line 279
    .local v4, "lexicon":[Ljava/lang/String;
    const-string v5, "ko"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 280
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 281
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 282
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VW] createUserDictionary - languageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 284
    .local v0, "a":Ljava/lang/String;
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VW] lexicon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method private getColorIdByIndex(I)Ljava/lang/String;
    .locals 4
    .param p1, "colorIndex"    # I

    .prologue
    .line 1249
    const-string v0, "pen_color_green"

    .line 1250
    .local v0, "colorId":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1267
    const-string v0, "pen_color_blue"

    .line 1268
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1269
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of pen color index error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - set default color blue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_0
    :goto_0
    return-object v0

    .line 1252
    :pswitch_0
    const-string v0, "pen_color_black"

    .line 1253
    goto :goto_0

    .line 1255
    :pswitch_1
    const-string v0, "pen_color_red"

    .line 1256
    goto :goto_0

    .line 1258
    :pswitch_2
    const-string v0, "pen_color_blue"

    .line 1259
    goto :goto_0

    .line 1261
    :pswitch_3
    const-string v0, "pen_color_green"

    .line 1262
    goto :goto_0

    .line 1264
    :pswitch_4
    const-string v0, "pen_color_brown"

    .line 1265
    goto :goto_0

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEditCursorIndex()I
    .locals 5

    .prologue
    .line 1679
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1680
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 1681
    .local v0, "cursorIndex":I
    if-eqz v2, :cond_0

    .line 1683
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 1684
    .local v1, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1685
    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int v0, v3, v4

    .line 1689
    .end local v1    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    return v0
.end method

.method private getEditExtractText()V
    .locals 4

    .prologue
    .line 497
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 498
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 500
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 501
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 502
    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    .line 507
    .end local v0    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    :goto_0
    return-void

    .line 504
    .restart local v0    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getHWRPenColor()I
    .locals 3

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getHWRPenThickness()I
    .locals 6

    .prologue
    .line 1227
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1228
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1229
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1231
    const/4 v1, 0x0

    .line 1232
    .local v1, "thickness":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    .line 1233
    int-to-float v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1235
    return v1
.end method

.method private getLibPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1671
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v0

    .line 1672
    .local v0, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getEnginePath()Ljava/lang/String;

    move-result-object v1

    .line 1675
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRecognizeDelay()I
    .locals 4

    .prologue
    .line 1244
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 1245
    .local v0, "delay":I
    return v0
.end method

.method private getSequenceType()Lcom/touchtype_fluency/Sequence$Type;
    .locals 4

    .prologue
    .line 1574
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 1575
    .local v0, "editInfo":Landroid/view/inputmethod/EditorInfo;
    const/4 v1, 0x0

    .line 1576
    .local v1, "editorFlag":I
    if-eqz v0, :cond_0

    .line 1577
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v1, v2, v3

    .line 1579
    :cond_0
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_1

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_2

    .line 1581
    :cond_1
    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    .line 1583
    :goto_0
    return-object v2

    :cond_2
    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->NORMAL:Lcom/touchtype_fluency/Sequence$Type;

    goto :goto_0
.end method

.method private getfontSizes(I)[F
    .locals 6
    .param p1, "maxSize"    # I

    .prologue
    const/4 v5, 0x5

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "fontSizeGap":I
    new-array v2, v5, [F

    .line 268
    .local v2, "maxSizes":[F
    div-int/lit8 v0, p1, 0x5

    .line 270
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, v5, :cond_0

    .line 271
    add-int/lit8 v3, v1, -0x1

    mul-int v4, v1, v0

    int-to-float v4, v4

    aput v4, v2, v3

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-object v2
.end method

.method private initSyncHwrPaneltext(I)V
    .locals 0
    .param p1, "cursor"    # I

    .prologue
    .line 489
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 493
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->syncHwrPaneltext(I)V

    .line 494
    return-void
.end method

.method private isComposingRecongnitionMode()Z
    .locals 1

    .prologue
    .line 1223
    const/4 v0, 0x1

    return v0
.end method

.method private isFullTextRecongnitionMode()Z
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    const/4 v0, 0x0

    .line 1219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 4
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 1641
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    .line 1642
    .local v0, "currentLangID":I
    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v1

    .line 1643
    .local v1, "scriptType":I
    iget v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->backupScriptType:I

    if-ne v2, v1, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->backupScriptType:I

    .line 1647
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setSwiftkeySession()V

    .line 1651
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v2

    new-instance v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;

    invoke-direct {v3, p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;-><init>(Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;I)V

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadVOLibrary()V
    .locals 4

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getLibPath()Ljava/lang/String;

    move-result-object v0

    .line 1661
    .local v0, "path":Ljava/lang/String;
    const-string v1, "=====VO test ====="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1663
    const-string v1, "/system/lib/libloadStylusCore.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libStylusCore.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->loadLib(Ljava/lang/String;)V

    .line 1668
    :goto_0
    return-void

    .line 1666
    :cond_0
    const-string v1, "/system/VODB/lib/libStylusCore.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setComposingEditText(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1728
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1729
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1730
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1731
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 1732
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 1733
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1735
    :cond_0
    return-void
.end method

.method private setCursorEditText(I)V
    .locals 2
    .param p1, "cursorIndex"    # I

    .prologue
    .line 1737
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1738
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1739
    if-gez p1, :cond_0

    .line 1740
    const/4 p1, 0x0

    .line 1743
    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1744
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1745
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1747
    :cond_1
    return-void
.end method

.method private setSwiftkeySession()V
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    .line 1213
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0

    .line 1211
    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0
.end method

.method private syncHwrPaneltext(I)V
    .locals 9
    .param p1, "cursor"    # I

    .prologue
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 369
    const-string v4, ""

    .line 370
    .local v4, "textBeforeCursor":Ljava/lang/String;
    const-string v3, ""

    .line 376
    .local v3, "textAfterCursor":Ljava/lang/String;
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 377
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 381
    .local v1, "CharSequenceBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 385
    :cond_2
    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 386
    .local v0, "CharSequenceAfterCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    .line 387
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    iput v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 430
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    .line 434
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 435
    const-string v5, ""

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 436
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_0

    .line 437
    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 438
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, ""

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 443
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_6

    .line 445
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_5

    .line 446
    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 447
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 459
    :cond_5
    :goto_1
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 450
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_5

    .line 451
    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    goto :goto_1

    .line 454
    :cond_7
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_5

    .line 455
    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 456
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto :goto_1

    .line 462
    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_a

    .line 463
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_9

    .line 464
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 465
    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 466
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 482
    :cond_9
    :goto_2
    const-string v5, "SamsungIME"

    const-string v6, "[VW] SyncHwrPaneltext - mWidgetApi == null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 468
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 469
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_9

    .line 470
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    .line 471
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 472
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    .line 473
    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    goto :goto_2

    .line 476
    :cond_b
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_9

    .line 477
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 478
    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 479
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto :goto_2
.end method


# virtual methods
.method public CommitAndInitText(I)V
    .locals 5
    .param p1, "cursor"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 1379
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1381
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1382
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1384
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1385
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    .line 1386
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1393
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v1

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1394
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->closeInsertMode()V

    .line 1395
    :cond_2
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v1, :cond_3

    .line 1396
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getEditCursorIndex()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 1397
    const-string v1, ""

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1398
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    .line 1399
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 1400
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1401
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion(I)V

    .line 1403
    :cond_3
    return-void

    .line 1388
    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1389
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_0
.end method

.method public SetChangeMode(II)V
    .locals 13
    .param p1, "curBase"    # I
    .param p2, "cursorIndex"    # I

    .prologue
    const/4 v12, 0x0

    .line 1081
    sget-object v8, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v8, :cond_1

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 1085
    .local v6, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v6, :cond_0

    .line 1088
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1089
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1100
    const/4 v0, 0x0

    .line 1101
    .local v0, "EditText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1103
    .local v1, "EditcursorIndex":I
    if-eqz v6, :cond_7

    .line 1104
    new-instance v8, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v8}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v6, v8, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 1105
    .local v5, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v5, :cond_7

    iget-object v8, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v8, :cond_7

    iget-object v8, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 1108
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    if-ge v8, v9, :cond_5

    .line 1109
    const/4 v7, 0x0

    .line 1110
    .local v7, "spaceIndex":I
    const/4 v3, 0x0

    .line 1111
    .local v3, "currentCursor":I
    const-string v2, ""

    .line 1113
    .local v2, "composingText":Ljava/lang/CharSequence;
    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sub-int v7, v8, v9

    .line 1115
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1116
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    .line 1118
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1123
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1129
    :goto_2
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1130
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1133
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sget-object v9, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v9

    add-int v3, v8, v9

    .line 1134
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    move-object v8, v2

    .line 1135
    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1136
    sget-object v8, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v9, ""

    invoke-interface {v8, v12, v7, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 1139
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    .line 1140
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1143
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1115
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1124
    :catch_0
    move-exception v4

    .line 1127
    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v8, "VisionObject"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " VOHWRWrapper \"SetChangeMode\" : Exception Caught! : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1146
    .end local v2    # "composingText":Ljava/lang/CharSequence;
    .end local v3    # "currentCursor":I
    .end local v4    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v7    # "spaceIndex":I
    :cond_5
    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v9, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    if-lt v8, v9, :cond_6

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_6

    .line 1148
    iget-object v8, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v10, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v11, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-interface {v8, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1150
    :cond_6
    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int v1, v8, v9

    .line 1154
    .end local v5    # "et":Landroid/view/inputmethod/ExtractedText;
    :cond_7
    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1155
    :cond_8
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    .line 1156
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1157
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1171
    .end local v0    # "EditText":Ljava/lang/CharSequence;
    .end local v1    # "EditcursorIndex":I
    :goto_3
    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_e

    .line 1172
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    goto/16 :goto_0

    .line 1158
    .restart local v0    # "EditText":Ljava/lang/CharSequence;
    .restart local v1    # "EditcursorIndex":I
    :cond_9
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    if-gt v8, p1, :cond_a

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v8, p1, :cond_b

    .line 1159
    :cond_a
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    .line 1160
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3

    .line 1161
    :cond_b
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v8, p1, :cond_c

    .line 1162
    sget-object v8, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 1163
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetInsertionMode(I)V

    goto :goto_3

    .line 1165
    :cond_c
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sub-int v8, p1, v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetCorrectionMode(I)V

    goto :goto_3

    .line 1168
    .end local v0    # "EditText":Ljava/lang/CharSequence;
    .end local v1    # "EditcursorIndex":I
    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->initSyncHwrPaneltext(I)V

    goto :goto_3

    .line 1174
    :cond_e
    iput-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    goto/16 :goto_0
.end method

.method public SetInsertMode(II)V
    .locals 1
    .param p1, "curBase"    # I
    .param p2, "cursorIndex"    # I

    .prologue
    .line 1181
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1184
    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 1185
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetInsertionMode(I)V

    goto :goto_0
.end method

.method public addTextToHWRPanel(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "Text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1763
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v3, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return v1

    .line 1766
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 1769
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v0

    .line 1771
    .local v0, "panelCursor":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1772
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v1}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1775
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 1778
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_3

    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1780
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    .line 1781
    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1783
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v0, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 1784
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 1794
    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 1795
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CheckAndPipingPanelText(Ljava/lang/String;)V

    move v1, v2

    .line 1796
    goto/16 :goto_0

    .line 1786
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1787
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    .line 1788
    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1790
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v0, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 1791
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_1
.end method

.method public appendText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "Text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1802
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    .line 1817
    :goto_0
    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1807
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 1808
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1809
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1810
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1812
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 1813
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 1814
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 1815
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkChineseSequence()V
    .locals 5

    .prologue
    .line 1314
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1316
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1317
    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1319
    .local v1, "longBeforeText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1320
    sget-object v2, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1322
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1323
    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1327
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "longBeforeText":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 12
    .param p1, "currentWord"    # Ljava/lang/StringBuilder;
    .param p2, "posOfBeforeText"    # [I
    .param p3, "posOfAfterText"    # [I

    .prologue
    const/16 v9, 0x3f

    const/4 v11, 0x0

    .line 1500
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-nez v8, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1506
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_7

    .line 1508
    invoke-interface {v0, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1509
    .local v5, "selectedText":Ljava/lang/CharSequence;
    invoke-interface {v0, v9, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1510
    .local v4, "longBeforeText":Ljava/lang/CharSequence;
    invoke-interface {v0, v9, v11}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1511
    .local v3, "longAfterText":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1512
    .local v1, "isSelectedText":Z
    if-nez v4, :cond_2

    .line 1513
    const-string v4, ""

    .line 1515
    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1516
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1518
    aput v11, p2, v11

    .line 1519
    aput v11, p3, v11

    .line 1520
    const/4 v1, 0x1

    .line 1538
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    .line 1540
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1541
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->checkChineseSequence()V

    .line 1542
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->updateSelectList()I

    goto :goto_0

    .line 1521
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1522
    new-instance v8, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v8}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1523
    new-instance v8, Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1524
    aput v11, p2, v11

    goto :goto_1

    .line 1527
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    .line 1528
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v6

    .line 1529
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 1530
    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    aput v9, p2, v8

    goto :goto_1

    .line 1534
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 1532
    .restart local v6    # "str":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, p2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1546
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1547
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_8

    invoke-interface {v3, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1550
    new-instance v2, Lcom/touchtype_fluency/WordBreakIterator;

    invoke-direct {v2}, Lcom/touchtype_fluency/WordBreakIterator;-><init>()V

    .line 1551
    .local v2, "it":Lcom/touchtype_fluency/WordBreakIterator;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/touchtype_fluency/WordBreakIterator;->setText(Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v2}, Lcom/touchtype_fluency/WordBreakIterator;->next()I

    move-result v8

    aput v8, p3, v11

    .line 1553
    aget v8, p3, v11

    invoke-interface {v3, v11, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1557
    .end local v2    # "it":Lcom/touchtype_fluency/WordBreakIterator;
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    .line 1558
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    .line 1559
    if-eqz v1, :cond_9

    .line 1560
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    .line 1570
    .end local v1    # "isSelectedText":Z
    .end local v3    # "longAfterText":Ljava/lang/CharSequence;
    .end local v4    # "longBeforeText":Ljava/lang/CharSequence;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->updateSelectList()I

    goto/16 :goto_0

    .line 1555
    .restart local v1    # "isSelectedText":Z
    .restart local v3    # "longAfterText":Ljava/lang/CharSequence;
    .restart local v4    # "longBeforeText":Ljava/lang/CharSequence;
    .restart local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_8
    aput v11, p3, v11

    goto :goto_2

    .line 1562
    :cond_9
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v7

    .line 1563
    .local v7, "touchHistory":Lcom/touchtype_fluency/TouchHistory;
    if-nez v7, :cond_a

    .line 1564
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_3

    .line 1566
    :cond_a
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 1
    .param p1, "bCommitSpace"    # Z

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    .line 1601
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1589
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedWord()Ljava/lang/String;

    move-result-object v0

    .line 1590
    .local v0, "word":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 1592
    const/4 v1, 0x0

    .line 1594
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 13
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
    .line 1331
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1332
    .local v8, "supportLanguageIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    .line 1333
    .local v9, "supportLanguageList":[Lcom/diotek/ime/framework/common/Language;
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v11

    .line 1334
    .local v11, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    move-object v0, v9

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v3, v0, v1

    .line 1335
    .local v3, "language":Lcom/diotek/ime/framework/common/Language;
    if-nez v3, :cond_1

    .line 1334
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1338
    :cond_1
    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    .line 1339
    .local v4, "languageCode":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    .line 1341
    .local v7, "localeCode":Ljava/lang/String;
    invoke-virtual {v11, v4, v7}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1342
    .local v5, "languageName":Ljava/lang/String;
    invoke-virtual {v11, v5}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    .line 1344
    .local v10, "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isInstallable()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1347
    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    .line 1348
    .local v2, "languadeId":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1350
    .end local v2    # "languadeId":I
    .end local v3    # "language":Lcom/diotek/ime/framework/common/Language;
    .end local v4    # "languageCode":Ljava/lang/String;
    .end local v5    # "languageName":Ljava/lang/String;
    .end local v7    # "localeCode":Ljava/lang/String;
    .end local v10    # "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_2
    return-object v8
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 2
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
    const/4 v1, 0x0

    .line 828
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 829
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 833
    :goto_0
    return v1

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getInstallableLanguages()Ljava/util/List;
    .locals 13
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
    .line 1355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .local v2, "installableLanguageIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    .line 1357
    .local v9, "supportLanguageList":[Lcom/diotek/ime/framework/common/Language;
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v11

    .line 1358
    .local v11, "volpm":Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
    move-object v0, v9

    .local v0, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v7, :cond_2

    aget-object v4, v0, v1

    .line 1359
    .local v4, "language":Lcom/diotek/ime/framework/common/Language;
    if-nez v4, :cond_1

    .line 1358
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1362
    :cond_1
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    .line 1363
    .local v5, "languageCode":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    .line 1365
    .local v8, "localeCode":Ljava/lang/String;
    invoke-virtual {v11, v5, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1366
    .local v6, "languageName":Ljava/lang/String;
    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    .line 1368
    .local v10, "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isInstallable()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1371
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v3

    .line 1372
    .local v3, "languadeId":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1374
    .end local v3    # "languadeId":I
    .end local v4    # "language":Lcom/diotek/ime/framework/common/Language;
    .end local v5    # "languageCode":Ljava/lang/String;
    .end local v6    # "languageName":Ljava/lang/String;
    .end local v8    # "localeCode":Ljava/lang/String;
    .end local v10    # "volp":Lcom/visionobjects/resourcemanager/VOLanguagePack;
    :cond_2
    return-object v2
.end method

.method public getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .locals 6
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
    const/4 v5, 0x0

    .line 1489
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-eqz v0, :cond_0

    .line 1490
    if-eqz p2, :cond_1

    .line 1491
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    const-string v4, ""

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1496
    :cond_0
    :goto_0
    return-void

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v1}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 9
    .param p1, "HWRKeyboard"    # Landroid/widget/FrameLayout;
    .param p2, "cursor"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    if-ne v3, p1, :cond_1

    .line 134
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v3, :cond_0

    .line 135
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    .line 136
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    .line 143
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    .line 151
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 153
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v3, :cond_2

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    .line 157
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 158
    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFirstReconnition:Z

    .line 159
    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    .line 160
    const-string v3, ""

    iput-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 161
    iput v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    .line 163
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 164
    iput v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 165
    iput v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    .line 166
    iput v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    .line 169
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    const v4, 0x7f080028

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/visionobjects/textwidget/TextWidgetApi;

    sput-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    .line 170
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v8}, Lcom/visionobjects/textwidget/TextWidgetApi;->setHoverEnabled(Z)V

    .line 173
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnConfigureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;)V

    .line 174
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnRecognitionListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;)V

    .line 175
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnTextChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;)V

    .line 176
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnCursorHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;)V

    .line 177
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnInsertHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;)V

    .line 178
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnInsertHandleClickedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;)V

    .line 179
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnGestureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;)V

    .line 180
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnSelectionChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;)V

    .line 181
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnUserScrollListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;)V

    .line 183
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getRecognizeDelay()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoTypesetDelay(I)V

    .line 184
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, "vohwr_baseline_color"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setBaselineColor(I)V

    .line 185
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getHWRPenThickness()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInkWidth(F)V

    .line 186
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v8}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoHideHandleEnabled(Z)V

    .line 187
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f020a6c

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setScrollbarResource(I)V

    .line 189
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f020a69

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setScrollbarMask(I)V

    .line 190
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f020a6f

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertHandleResource(I)V

    .line 192
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f020a8d

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorResource(I)V

    .line 193
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f020a65

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorHandleResource(I)V

    .line 194
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v5, "HANDWRITING"

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTypeface(Landroid/graphics/Typeface;)V

    .line 195
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getHWRPenColor()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getColorIdByIndex(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInkColor(I)V

    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, "maxFontSize":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 200
    const-string v3, "handwriting_floating_vopanel_font_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 201
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f02021c

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setWritingAreaBackgroundResource(I)V

    .line 202
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, "handwriting_floating_vopanel_baseline_position"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setBaselinePosition(F)V

    .line 209
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v2, v3, 0x2

    .line 213
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentLanguageUseSpaceBetweenWords()Z

    move-result v3

    if-nez v3, :cond_4

    .line 214
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v7}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTransientSpaceEnabled(Z)V

    .line 217
    :cond_4
    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getfontSizes(I)[F

    move-result-object v1

    .line 219
    .local v1, "fontSizes":[F
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 220
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 221
    if-eqz v1, :cond_5

    .line 222
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTextSizes([F)V

    .line 235
    :cond_5
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 236
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, "handwriting_floating_vopanel_text_margin"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollMargin(F)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_3
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 243
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v8}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollEnabled(Z)V

    .line 248
    :goto_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    .line 250
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 251
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 252
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getEditCursorIndex()I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    .line 253
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, ""

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    .line 254
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v7}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    goto/16 :goto_0

    .line 204
    .end local v1    # "fontSizes":[F
    :cond_6
    const-string v3, "handwriting_vopanel_font_size"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 205
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v4, 0x7f020a8c

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setWritingAreaBackgroundResource(I)V

    .line 206
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, "handwriting_vopanel_baseline_position"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setBaselinePosition(F)V

    goto/16 :goto_1

    .line 225
    .restart local v1    # "fontSizes":[F
    :cond_7
    if-eqz v1, :cond_5

    .line 226
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTextSize(F)V

    goto :goto_2

    .line 230
    :cond_8
    if-eqz v1, :cond_5

    .line 231
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTextSizes([F)V

    goto :goto_2

    .line 238
    :cond_9
    :try_start_1
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, "handwriting_vopanel_text_margin"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollMargin(F)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, "handwriting_vopanel_text_margin"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollMargin(F)V

    goto :goto_3

    .line 245
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_a
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v7}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollEnabled(Z)V

    goto :goto_4

    .line 256
    :cond_b
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getEditCursorIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->initSyncHwrPaneltext(I)V

    goto/16 :goto_0

    .line 259
    :cond_c
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v4, ""

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    .line 260
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3, v7}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    goto/16 :goto_0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1418
    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "buffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1413
    const/4 v0, 0x0

    return v0
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnDynamicModel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigureBegin()V
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    .line 1057
    return-void
.end method

.method public onConfigureEnd(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1061
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    .line 1063
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_1

    .line 1064
    const-string v0, "VisionObject"

    const-string v1, "Handwriting configuration : mWidgetApi is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    if-eqz p1, :cond_2

    .line 1068
    const-string v0, "VisionObject"

    const-string v1, "Handwriting configuration succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    if-eqz v0, :cond_0

    .line 1070
    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    .line 1071
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    goto :goto_0

    .line 1074
    :cond_2
    const-string v0, "VisionObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handwriting configuration failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    goto :goto_0
.end method

.method public onCursorHandleDrag(I)V
    .locals 1
    .param p1, "cursorIndex"    # I

    .prologue
    .line 1009
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    .line 1010
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 1011
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    .line 1012
    return-void
.end method

.method public onCursorHandleDragBegin()V
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1019
    :cond_0
    return-void
.end method

.method public onCursorHandleDragEnd(Z)V
    .locals 3
    .param p1, "arg0"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1023
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1025
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedText:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1033
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 1034
    return-void

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_0
.end method

.method public onInsertGesture(I)V
    .locals 4
    .param p1, "curIndex"    # I

    .prologue
    .line 907
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v1, :cond_0

    .line 922
    :goto_0
    return-void

    .line 910
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 911
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 912
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 913
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 915
    :cond_1
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v2, " "

    invoke-interface {v1, p1, p1, v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    goto :goto_0

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 918
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 919
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v2, 0x3e

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    .line 920
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1, p1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_0
.end method

.method public onInsertHandleClicked()V
    .locals 0

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->closeInsertMode()V

    .line 927
    return-void
.end method

.method public onInsertHandleDragBegin()V
    .locals 0

    .prologue
    .line 1005
    return-void
.end method

.method public onInsertHandleDragEnd(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 1425
    return-void
.end method

.method public onJoinGesture(I)V
    .locals 6
    .param p1, "curIndex"    # I

    .prologue
    const/16 v5, 0x20

    .line 931
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v3, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 935
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 936
    .local v1, "length":I
    move v2, p1

    .line 937
    .local v2, "start":I
    move v0, p1

    .line 939
    .local v0, "end":I
    if-ge p1, v1, :cond_0

    .line 944
    :goto_1
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    .line 945
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 947
    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 951
    :cond_3
    if-ge v2, v0, :cond_0

    .line 952
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onPinchGesture()V
    .locals 0

    .prologue
    .line 960
    return-void
.end method

.method public onRecognitionBegin()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 1040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFirstReconnition:Z

    .line 1042
    return-void
.end method

.method public onRecognitionEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1046
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_0
.end method

.method public onReturnGesture(I)V
    .locals 2
    .param p1, "cursorIndex"    # I

    .prologue
    .line 964
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    .line 977
    :goto_0
    :pswitch_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 975
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 976
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSelectionChanged(II[Ljava/lang/String;I)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "candidates"    # [Ljava/lang/String;
    .param p4, "selectedCandidate"    # I

    .prologue
    .line 781
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 786
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 787
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 792
    :cond_2
    if-eqz p3, :cond_0

    .line 793
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 795
    aget-object v1, p3, p4

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 796
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    aget-object v2, p3, p4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 799
    if-eq v0, p4, :cond_4

    aget-object v1, p3, p4

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 800
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    aget-object v2, p3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_4
    const-string v1, "VisionObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "labels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 805
    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 806
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    .line 807
    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    .line 813
    :goto_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 814
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 815
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 816
    aget-object v1, p3, p4

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    .line 809
    :cond_6
    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    .line 810
    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    goto :goto_2

    .line 819
    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 820
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0
.end method

.method public onSelectionGesture(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 982
    return-void
.end method

.method public onSingleTapGesture(I)V
    .locals 1
    .param p1, "cursorIndex"    # I

    .prologue
    .line 986
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 989
    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetCorrectionMode(I)V

    .line 990
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/String;Z)V
    .locals 15
    .param p1, "mText"    # Ljava/lang/String;
    .param p2, "mintermediate"    # Z

    .prologue
    .line 528
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v12, :cond_0

    .line 729
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->checkValideStr(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 532
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 536
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v3

    .line 537
    .local v3, "isUrlMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    .line 539
    .local v2, "isEmailMode":Z
    if-eqz v1, :cond_2

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 540
    :cond_2
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    goto :goto_0

    .line 543
    :cond_3
    const-string v12, ""

    iput-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    .line 546
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 547
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v12

    if-nez v12, :cond_5

    .line 548
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 549
    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    if-eqz v12, :cond_4

    .line 550
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    goto :goto_0

    .line 552
    :cond_4
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    .line 553
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 554
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    goto :goto_0

    .line 563
    :cond_5
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 565
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v12, :cond_6

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v12

    if-nez v12, :cond_6

    .line 567
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_6

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 568
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 569
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 573
    :cond_6
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->diff(Ljava/lang/String;Ljava/lang/String;Z)Lcom/diotek/ime/framework/engine/vohwr/TextDiff;

    move-result-object v10

    .line 574
    .local v10, "resultTextDiff":Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v12

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v7, v12, v13

    .line 576
    .local v7, "newCursorIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ltz v12, :cond_a

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getOldText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 577
    const-string v11, ""

    .line 578
    .local v11, "selectText":Ljava/lang/CharSequence;
    if-eqz v1, :cond_7

    .line 579
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 583
    :cond_7
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 584
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 586
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    .line 588
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 589
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 590
    .local v5, "mCharBeforeCursor":Ljava/lang/CharSequence;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 591
    if-eqz v5, :cond_8

    .line 592
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_8

    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "\n"

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentLanguageUseSpaceBetweenWords()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    if-nez v12, :cond_8

    .line 598
    const-string v12, " "

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 604
    .end local v5    # "mCharBeforeCursor":Ljava/lang/CharSequence;
    :cond_8
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    .line 605
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    .line 606
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 607
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 612
    :goto_1
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    .line 614
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CheckAndPipingPanelText(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v13

    if-ne v12, v13, :cond_c

    .line 617
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    sget-object v13, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->getInsertIndex()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 622
    :goto_2
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_9

    .line 623
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 624
    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 625
    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    if-nez v12, :cond_9

    .line 626
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 627
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 649
    :cond_9
    :goto_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    .line 727
    .end local v11    # "selectText":Ljava/lang/CharSequence;
    :cond_a
    :goto_4
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 609
    .restart local v11    # "selectText":Ljava/lang/CharSequence;
    :cond_b
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v12, v7

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 610
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12, v7}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_1

    .line 619
    :cond_c
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    goto :goto_2

    .line 630
    :cond_d
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 631
    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 635
    :cond_e
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 636
    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getOldText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_10

    .line 637
    if-eqz v11, :cond_f

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_f

    .line 638
    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    .line 640
    :cond_f
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 646
    :goto_5
    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto :goto_3

    .line 642
    :cond_10
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 643
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getOldText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    goto :goto_5

    .line 651
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a

    .line 652
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 654
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 655
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    .line 656
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 658
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_12

    .line 659
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    if-nez v3, :cond_12

    if-nez v2, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v12

    if-nez v12, :cond_12

    .line 663
    const-string v12, " "

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 666
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1f

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 667
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v6

    .line 668
    .local v6, "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 669
    .local v9, "prevText":Ljava/lang/CharSequence;
    const/4 v8, -0x1

    .local v8, "prevLangScriptId":I
    const/4 v4, -0x1

    .line 670
    .local v4, "langScriptId":I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v4

    .line 671
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 672
    :cond_13
    if-eqz v9, :cond_15

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_15

    .line 673
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v8

    .line 674
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 675
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-nez v12, :cond_14

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 676
    :cond_14
    if-ne v4, v8, :cond_15

    .line 677
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 709
    .end local v4    # "langScriptId":I
    .end local v6    # "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    .end local v8    # "prevLangScriptId":I
    .end local v9    # "prevText":Ljava/lang/CharSequence;
    :cond_15
    :goto_6
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v12, :cond_17

    .line 710
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_16

    .line 711
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 713
    :cond_16
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v13, ""

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    .line 714
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    .line 717
    :cond_17
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v12

    if-eqz v12, :cond_20

    .line 718
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v12

    if-nez v12, :cond_18

    .line 719
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 720
    :cond_18
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto/16 :goto_4

    .line 681
    .restart local v4    # "langScriptId":I
    .restart local v6    # "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    .restart local v8    # "prevLangScriptId":I
    .restart local v9    # "prevText":Ljava/lang/CharSequence;
    :cond_19
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 682
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 683
    :cond_1a
    if-ne v4, v8, :cond_15

    .line 684
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto :goto_6

    .line 687
    :cond_1b
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 688
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 691
    :cond_1c
    if-ne v4, v8, :cond_15

    .line 692
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 695
    :cond_1d
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 696
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 697
    if-ne v4, v8, :cond_15

    .line 698
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 704
    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 707
    .end local v4    # "langScriptId":I
    .end local v6    # "mIndianInputModule":Lcom/diotek/ime/framework/input/IndianInputModule;
    .end local v8    # "prevLangScriptId":I
    .end local v9    # "prevText":Ljava/lang/CharSequence;
    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 722
    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public onUnderlineGesture(II)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "cursorIndex"    # I

    .prologue
    .line 995
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    .line 996
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0, p2}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 997
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    .line 998
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 1000
    :cond_0
    return-void
.end method

.method public onUserScroll()V
    .locals 3

    .prologue
    .line 1429
    const-string v1, "VisionObject"

    const-string v2, "User scroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v1, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1435
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->moveCursorToVisibleIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1436
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v0

    .line 1439
    .local v0, "index":I
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_0
.end method

.method public onUserScrollBegin()V
    .locals 3

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1449
    :cond_0
    return-void
.end method

.method public onUserScrollEnd(Z)V
    .locals 4
    .param p1, "scrolledAtEnd"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1453
    const-string v0, "VisionObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User scroll ends (at end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1459
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedText:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 1467
    :goto_1
    if-eqz p1, :cond_4

    .line 1468
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1470
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 1472
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 1484
    :cond_2
    :goto_2
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto :goto_0

    .line 1464
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_1

    .line 1475
    :cond_4
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1477
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    .line 1479
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->moveCursorToVisibleIndex()Z

    .line 1481
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_2
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1606
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 0
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/Keyboard;

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V

    .line 1638
    return-void
.end method

.method public updateSelectList()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1279
    const/4 v0, 0x0

    .line 1284
    .local v0, "isChangedModel":Z
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1285
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1286
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1287
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1288
    const-string v1, "SamsungIME"

    const-string v2, "[SwiftkeyWrapper] mPredictions are returned rapidly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    .line 1303
    :goto_0
    return v1

    .line 1294
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1296
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    invoke-static {v2}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    move-result v0

    .line 1298
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    .line 1299
    iput v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    .line 1300
    if-eqz v0, :cond_3

    .line 1301
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    .line 1303
    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    goto :goto_0
.end method

.method public updateShiftState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1611
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-eqz v3, :cond_3

    .line 1612
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    .line 1613
    .local v2, "isUpperCase":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v0

    .line 1614
    .local v0, "isCapslock":Z
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v1

    .line 1615
    .local v1, "isShiftPressed":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mShiftMode:Z

    .line 1616
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCapslockMode:Z

    .line 1617
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mShiftMode:Z

    iget-boolean v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCapslockMode:Z

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateShiftState(ZZ)V

    .line 1619
    .end local v0    # "isCapslock":Z
    .end local v1    # "isShiftPressed":Z
    .end local v2    # "isUpperCase":Z
    :cond_3
    return-void

    .restart local v0    # "isCapslock":Z
    .restart local v1    # "isShiftPressed":Z
    .restart local v2    # "isUpperCase":Z
    :cond_4
    move v3, v4

    .line 1615
    goto :goto_0

    :cond_5
    move v5, v4

    .line 1616
    goto :goto_1
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 8
    .param p1, "index"    # I
    .param p2, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 838
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v3, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v7

    .line 841
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 843
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    iput-boolean v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    .line 844
    if-eqz v1, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 846
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 847
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 848
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    .line 852
    :goto_1
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v0

    .line 853
    .local v0, "cursorIndex":I
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_4

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "pickUpString":Ljava/lang/String;
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-interface {v3, v4, v5, v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 856
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 857
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 874
    .end local v2    # "pickUpString":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 876
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    .line 877
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 879
    :cond_2
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    goto/16 :goto_0

    .line 850
    .end local v0    # "cursorIndex":I
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto/16 :goto_1

    .line 858
    .restart local v0    # "cursorIndex":I
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 859
    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 860
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 861
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 862
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_2

    .line 863
    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_6

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_6

    .line 864
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 865
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 866
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto/16 :goto_2

    .line 868
    :cond_6
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 869
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v3, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    .line 870
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    .line 871
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto/16 :goto_2

    .line 881
    .end local v0    # "cursorIndex":I
    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    add-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    .line 882
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 883
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    .line 884
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    .line 885
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_8

    .line 886
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)V

    .line 888
    :cond_8
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    goto/16 :goto_0

    .line 891
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    .line 892
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 893
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0
.end method
