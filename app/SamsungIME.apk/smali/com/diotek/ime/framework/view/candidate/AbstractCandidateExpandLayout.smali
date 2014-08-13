.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field private mIsSwiftKeyMode:Z

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mScrollView:Landroid/widget/ScrollView;

.field protected mScrollViewLayout:Landroid/widget/LinearLayout;

.field protected mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mXt9Version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 47
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    .line 48
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 50
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 51
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    .line 52
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    .line 55
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    .line 56
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    .line 57
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    .line 59
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    .line 61
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 65
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->initialize()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 47
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    .line 48
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 50
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 51
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    .line 52
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    .line 55
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    .line 56
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    .line 57
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    .line 59
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    .line 61
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 70
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->initialize()V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    return p1
.end method

.method private initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 74
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 75
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 76
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 77
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    .line 79
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    .line 81
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    .line 82
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewRightPadding()I

    move-result v0

    .line 88
    .local v0, "rightPadding":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 90
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 101
    return-void
.end method

.method private isShownExpandView(II)Z
    .locals 11
    .param p1, "maxWidth"    # I
    .param p2, "displayedCount"    # I

    .prologue
    const/4 v9, 0x1

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, "textWidth":F
    int-to-float v8, p1

    const/high16 v10, 0x40000000

    div-float v3, v8, v10

    .line 142
    .local v3, "maxTextWidth":F
    const/4 v1, 0x0

    .line 143
    .local v1, "isExpandView":Z
    new-instance v6, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v6, "text":Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt p2, v8, :cond_0

    move v8, v9

    .line 161
    :goto_0
    return v8

    .line 147
    :cond_0
    move v0, p2

    .local v0, "idx":I
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 148
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v2

    .line 152
    .local v2, "leftPadding":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v5

    .line 153
    .local v5, "rightPadding":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v8

    invoke-virtual {v6, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 154
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 155
    .local v4, "paint":Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v10, v2

    add-float/2addr v8, v10

    int-to-float v10, v5

    add-float v7, v8, v10

    .line 156
    cmpl-float v8, v7, v3

    if-lez v8, :cond_1

    .line 157
    const/4 v1, 0x1

    .end local v2    # "leftPadding":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "rightPadding":I
    :cond_3
    move v8, v1

    .line 161
    goto :goto_0
.end method


# virtual methods
.method protected addNewLine()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected addNewLine(Z)Landroid/widget/LinearLayout;
    .locals 10
    .param p1, "isFirstLine"    # Z

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    .line 113
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v4, "row":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLineResourceId()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 116
    .local v0, "candidateLine":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateListLineResourceId()I

    move-result v3

    .line 117
    .local v3, "lineResourceId":I
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 120
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    .line 121
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v2, "line":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    .end local v2    # "line":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    if-eqz v3, :cond_1

    .line 130
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    .restart local v2    # "line":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 133
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 135
    .end local v2    # "line":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    return-object v0
.end method

.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getCandidateLineResourceId()I
.end method

.method protected abstract getCandidateListLineResourceId()I
.end method

.method protected abstract getExpandScrollViewRightPadding()I
.end method

.method protected abstract getFloatingKeyboardLeftEdge()I
.end method

.method protected abstract getFloatingKeyboardRightEdge()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$4;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth()I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected getRowCount()I
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "count":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 391
    :cond_0
    return v0
.end method

.method protected abstract getSplitResourceId()I
.end method

.method protected abstract getSuggestionFontSize()F
.end method

.method protected abstract getSuggestionHeight()I
.end method

.method protected abstract getSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getTextColor()I
.end method

.method protected abstract getTopPaddingSize()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 373
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    .line 374
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    if-eqz v1, :cond_1

    .line 375
    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z

    .line 384
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    .line 379
    check-cast p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    .line 380
    .local v0, "idx":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    if-ltz v0, :cond_0

    .line 381
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;I)I
    .locals 33
    .param p2, "displayedCount"    # I
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
    .line 165
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 167
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v30, v0

    const-string v31, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v32, -0x1

    invoke-interface/range {v30 .. v32}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v29

    .line 171
    .local v29, "verbatimIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 174
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    .line 175
    .local v21, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    .line 176
    .local v18, "paddingBottom":I
    const/16 v19, 0x0

    .line 177
    .local v19, "paddingLeft":I
    const/16 v20, 0x0

    .line 178
    .local v20, "paddingRight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    .line 181
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsBackupPadding:Z

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v30

    if-eqz v30, :cond_4

    :cond_2
    const/4 v11, 0x1

    .line 187
    .local v11, "isChineseOrJapaneseSwiftKeyMode":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v30

    const-string v31, "IS_ONE_HAND_RIGHT_SET"

    const/16 v32, 0x1

    invoke-interface/range {v30 .. v32}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v13

    .line 188
    .local v13, "isRightSet":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v30

    if-eqz v30, :cond_3

    .line 189
    if-eqz v13, :cond_5

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v19

    .line 195
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    move/from16 v31, v0

    add-int v31, v31, v20

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v21

    move/from16 v3, v31

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, p2

    move/from16 v1, v30

    if-ge v0, v1, :cond_13

    .line 199
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine(Z)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 200
    .local v7, "currentRow":Landroid/widget/LinearLayout;
    const/16 v30, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionFontSize()F

    move-result v8

    .line 203
    .local v8, "fontSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v28

    .line 204
    .local v28, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSuggestionHeight()I

    move-result v9

    .line 205
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandScrollViewRightPadding()I

    move-result v31

    mul-int/lit8 v31, v31, 0x2

    sub-int v16, v30, v31

    .line 207
    .local v16, "maxWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginLeftPadding:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mOriginRightPadding:I

    move/from16 v31, v0

    add-int v30, v30, v31

    add-int v30, v30, v20

    sub-int v16, v16, v30

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTopPaddingSize()I

    move-result v26

    .line 210
    .local v26, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBottomPaddingSize()I

    move-result v6

    .line 211
    .local v6, "bottomPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getLeftPaddingSize()I

    move-result v15

    .line 212
    .local v15, "leftPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRightPaddingSize()I

    move-result v22

    .line 213
    .local v22, "rightPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v5

    .line 215
    .local v5, "activeIndex":I
    const/16 v27, 0x0

    .line 216
    .local v27, "totalWidth":F
    div-int/lit8 v17, v16, 0x3

    .line 218
    .local v17, "maxWidthTextView":I
    const/4 v12, 0x0

    .line 228
    .local v12, "isEnabledFingerAirView":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v30

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v30

    if-nez v30, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->isShownExpandView(II)Z

    move-result v14

    .line 229
    .local v14, "isShownExpandView":Z
    :goto_2
    move/from16 v10, p2

    .local v10, "idx":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v10, v0, :cond_13

    .line 230
    new-instance v25, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    .line 231
    .local v25, "text":Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    if-nez v30, :cond_7

    .line 229
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 184
    .end local v5    # "activeIndex":I
    .end local v6    # "bottomPadding":I
    .end local v7    # "currentRow":Landroid/widget/LinearLayout;
    .end local v8    # "fontSize":F
    .end local v9    # "height":I
    .end local v10    # "idx":I
    .end local v11    # "isChineseOrJapaneseSwiftKeyMode":Z
    .end local v12    # "isEnabledFingerAirView":Z
    .end local v13    # "isRightSet":Z
    .end local v14    # "isShownExpandView":Z
    .end local v15    # "leftPadding":I
    .end local v16    # "maxWidth":I
    .end local v17    # "maxWidthTextView":I
    .end local v22    # "rightPadding":I
    .end local v25    # "text":Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    .end local v26    # "topPadding":I
    .end local v27    # "totalWidth":F
    .end local v28    # "typeFace":Landroid/graphics/Typeface;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 192
    .restart local v11    # "isChineseOrJapaneseSwiftKeyMode":Z
    .restart local v13    # "isRightSet":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v20

    goto/16 :goto_1

    .line 228
    .restart local v5    # "activeIndex":I
    .restart local v6    # "bottomPadding":I
    .restart local v7    # "currentRow":Landroid/widget/LinearLayout;
    .restart local v8    # "fontSize":F
    .restart local v9    # "height":I
    .restart local v12    # "isEnabledFingerAirView":Z
    .restart local v15    # "leftPadding":I
    .restart local v16    # "maxWidth":I
    .restart local v17    # "maxWidthTextView":I
    .restart local v22    # "rightPadding":I
    .restart local v26    # "topPadding":I
    .restart local v27    # "totalWidth":F
    .restart local v28    # "typeFace":Landroid/graphics/Typeface;
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 234
    .restart local v10    # "idx":I
    .restart local v14    # "isShownExpandView":Z
    .restart local v25    # "text":Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    :cond_7
    if-ne v10, v5, :cond_d

    if-lez v10, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-nez v30, :cond_d

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    const/16 v32, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 239
    :goto_5
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 240
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getInputedTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPressedTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHighlightTextColor()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getBackgroundResourceId()I

    move-result v30

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v0, v15, v1, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 248
    const/16 v30, 0x11

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 249
    if-eqz v12, :cond_8

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getHoverListener()Landroid/view/View$OnHoverListener;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 253
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_10

    .line 255
    if-eqz v14, :cond_e

    .line 256
    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v30, v30, v31

    add-float v27, v27, v30

    .line 257
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v27, v30

    if-lez v30, :cond_9

    .line 258
    const/16 v30, 0x1

    const/16 v31, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    .line 259
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 260
    sget-object v30, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 262
    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v27, v30, v31

    .line 284
    :cond_9
    :goto_6
    new-instance v24, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 287
    .local v24, "splitView":Landroid/widget/TextView;
    const-string v30, " "

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 289
    sub-int v30, v9, v26

    sub-int v30, v30, v6

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 290
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getSplitResourceId()I

    move-result v30

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    const/16 v30, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 294
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIsSwiftKeyMode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v30

    if-nez v30, :cond_11

    move/from16 v0, v29

    if-eq v10, v0, :cond_11

    if-nez v11, :cond_11

    .line 299
    new-instance v30, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    new-instance v30, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 330
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mXt9Version:I

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v30

    if-nez v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v30

    if-nez v30, :cond_12

    move/from16 v0, v29

    if-eq v10, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    .line 335
    new-instance v30, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout$3;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 358
    :cond_b
    :goto_8
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    if-lez v10, :cond_c

    .line 361
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 364
    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_4

    .line 237
    .end local v24    # "splitView":Landroid/widget/TextView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_5

    .line 265
    :cond_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v27, v27, v30

    .line 266
    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 267
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v31

    div-float v23, v30, v31

    .line 269
    .local v23, "scale":F
    const/high16 v30, 0x3f800000

    cmpg-float v30, v23, v30

    if-gez v30, :cond_f

    .line 270
    :goto_9
    const/16 v30, 0x1

    mul-float v31, v8, v23

    move-object/from16 v0, v25

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v27, v30

    if-lez v30, :cond_9

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 273
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    goto/16 :goto_6

    .line 269
    :cond_f
    const/high16 v23, 0x3f800000

    goto :goto_9

    .line 277
    .end local v23    # "scale":F
    :cond_10
    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v30, v30, v31

    add-float v27, v27, v30

    .line 278
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    cmpl-float v30, v27, v30

    if-lez v30, :cond_9

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 280
    invoke-virtual/range {v25 .. v25}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v30

    const/high16 v31, 0x3f800000

    add-float v27, v30, v31

    goto/16 :goto_6

    .line 326
    .restart local v24    # "splitView":Landroid/widget/TextView;
    :cond_11
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_7

    .line 353
    :cond_12
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_8

    .line 368
    .end local v5    # "activeIndex":I
    .end local v6    # "bottomPadding":I
    .end local v7    # "currentRow":Landroid/widget/LinearLayout;
    .end local v8    # "fontSize":F
    .end local v9    # "height":I
    .end local v10    # "idx":I
    .end local v12    # "isEnabledFingerAirView":Z
    .end local v14    # "isShownExpandView":Z
    .end local v15    # "leftPadding":I
    .end local v16    # "maxWidth":I
    .end local v17    # "maxWidthTextView":I
    .end local v22    # "rightPadding":I
    .end local v24    # "splitView":Landroid/widget/TextView;
    .end local v25    # "text":Lcom/diotek/ime/framework/view/candidate/CandidateTextView;
    .end local v26    # "topPadding":I
    .end local v27    # "totalWidth":F
    .end local v28    # "typeFace":Landroid/graphics/Typeface;
    :cond_13
    return p2
.end method
