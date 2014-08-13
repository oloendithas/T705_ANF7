.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.super Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final HANJA_MAX_DISPLAY_CANDIDATE:I = 0x64

.field private static final MAX_DISPLAY_CANDIDATE:I = 0x14


# instance fields
.field private mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

.field private mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIgnorePick:Z

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsBackupPadding:Z

.field protected mIsKorMode:Z

.field protected mIsPopupCandidateLayout:Z

.field private mIsSwiftKeyMode:Z

.field private mOriginLeftPadding:I

.field private mOriginRightPadding:I

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mSplitView:[Landroid/widget/TextView;

.field protected mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

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

.field private mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

.field protected mXt9Version:I

.field private misLeftScrolled:Z

.field private misRightScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    .line 60
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 62
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 63
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 64
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 70
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    .line 71
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    .line 73
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    .line 74
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    .line 75
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    .line 76
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    .line 77
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    .line 79
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 81
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    .line 87
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 91
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    .line 60
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 62
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 63
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 64
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 70
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    .line 71
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    .line 73
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    .line 74
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    .line 75
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    .line 76
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    .line 77
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    .line 79
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 81
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    .line 87
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 96
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initialize()V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z

    return p1
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 743
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$5;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 756
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v2

    .line 101
    .local v2, "topPadding":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v0

    .line 103
    .local v0, "bottomPadding":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 104
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 105
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 106
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    .line 107
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    .line 108
    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    .line 110
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 112
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    .line 115
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    .line 116
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    new-array v3, v8, [Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    .line 125
    new-array v3, v7, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    .line 128
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 129
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    new-instance v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 130
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v3, v3, v1

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    if-ge v1, v7, :cond_1

    .line 133
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 135
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const-string v4, " "

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setWidth(I)V

    .line 137
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6, v2, v6, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 138
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->initGestureDetector()V

    .line 143
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 144
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 146
    :cond_3
    return-void
.end method

.method private isShownExpandView(I)Z
    .locals 11
    .param p1, "maxWidth"    # I

    .prologue
    const/4 v9, 0x1

    .line 158
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 159
    .local v3, "length":I
    if-ne v3, v9, :cond_1

    move v1, v9

    .line 179
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    const/4 v7, 0x0

    .line 163
    .local v7, "textWidth":F
    int-to-float v8, p1

    const/high16 v10, 0x40000000

    div-float v4, v8, v10

    .line 164
    .local v4, "maxTextWidth":F
    const/4 v1, 0x0

    .line 165
    .local v1, "isExpandView":Z
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    if-ge v0, v3, :cond_0

    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    .line 166
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v2

    .line 170
    .local v2, "leftPadding":I
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v6

    .line 171
    .local v6, "rightPadding":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v8, v8, v0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 173
    .local v5, "paint":Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    int-to-float v10, v2

    add-float/2addr v8, v10

    int-to-float v10, v6

    add-float v7, v8, v10

    .line 174
    cmpl-float v8, v7, v4

    if-lez v8, :cond_2

    .line 175
    const/4 v1, 0x1

    .line 176
    goto :goto_0
.end method


# virtual methods
.method protected abstract getBackgroundResourceId()I
.end method

.method protected abstract getBottomPaddingSize()I
.end method

.method protected abstract getCandidateLeftRightGapForOneHand()I
.end method

.method protected abstract getHighlightTextColor()I
.end method

.method protected getHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$4;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method protected abstract getInputedTextColor()I
.end method

.method protected abstract getLeftPaddingSize()I
.end method

.method protected abstract getMaxWidth(Z)I
.end method

.method protected abstract getOneHandKeyboardViewWidth()I
.end method

.method protected abstract getPressedTextColor()I
.end method

.method protected abstract getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getRightPaddingSize()I
.end method

.method protected abstract getSelecedBackgroundResourceId()I
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

.method protected getTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 676
    new-instance v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$3;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 760
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v4, :cond_1

    .line 808
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 764
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 765
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_2

    move v2, v5

    .line 767
    .local v2, "islandscape":Z
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 768
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    if-eqz v4, :cond_0

    .line 769
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    move-object v4, p1

    .line 770
    check-cast v4, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 771
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    if-eqz v4, :cond_3

    .line 772
    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z

    goto :goto_0

    .end local v2    # "islandscape":Z
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    move v2, v6

    .line 765
    goto :goto_1

    .line 775
    .restart local v2    # "islandscape":Z
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    check-cast p1, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v1

    .line 776
    .local v1, "idx":I
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    .line 778
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_0

    if-ltz v1, :cond_0

    .line 788
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 789
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    .line 791
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_8

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 792
    iget v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    if-ne v4, v8, :cond_5

    .line 793
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 795
    :cond_5
    if-ne v1, v5, :cond_6

    .line 796
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v6, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 797
    :cond_6
    if-nez v1, :cond_7

    .line 798
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v6, v5, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 800
    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 804
    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v5, v1, v4}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;Z)I
    .locals 53
    .param p2, "leftButtonAreaIsShown"    # Z
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
    .line 184
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 185
    const-string v48, "SamsungIME"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "AbstractCandidateLayout-setCandidates suggestions count : "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    const/4 v11, 0x0

    .line 188
    .local v11, "displayedCount":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    const/16 v49, 0x10

    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 197
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    move/from16 v48, v0

    if-eqz v48, :cond_1

    .line 198
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v7

    .line 204
    .local v7, "candidateStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v48, v0

    const-string v49, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v50, -0x1

    invoke-interface/range {v48 .. v50}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v46

    .line 206
    .local v46, "verbatimIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v48

    if-eqz v48, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_a

    const/16 v48, 0x4

    move/from16 v0, v48

    if-eq v7, v0, :cond_a

    const/16 v18, 0x1

    .line 211
    .local v18, "isApplyAutoCorrection":Z
    :goto_0
    if-eqz v18, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v48

    if-eqz v48, :cond_b

    const/16 v19, 0x1

    .line 214
    .local v19, "isApplyAutoCorrectionHasComposing":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-eqz v48, :cond_c

    :cond_2
    const/16 v21, 0x1

    .line 217
    .local v21, "isChineseOrJapaneseSwiftKeyMode":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v33

    .line 218
    .local v33, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v29

    .line 219
    .local v29, "paddingBottom":I
    const/16 v31, 0x0

    .line 220
    .local v31, "paddingLeft":I
    const/16 v32, 0x0

    .line 221
    .local v32, "paddingRight":I
    const/16 v25, 0x0

    .line 223
    .local v25, "isShownExpandView":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    move/from16 v48, v0

    if-nez v48, :cond_3

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v48

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    .line 226
    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z

    .line 229
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v48

    const-string v49, "IS_ONE_HAND_RIGHT_SET"

    const/16 v50, 0x1

    invoke-interface/range {v48 .. v50}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v24

    .line 230
    .local v24, "isRightSet":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v48

    if-eqz v48, :cond_4

    .line 231
    if-eqz v24, :cond_d

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v31

    .line 237
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v17

    .line 238
    .local v17, "inputMethod":I
    const/4 v9, 0x0

    .line 239
    .local v9, "candidateViewpaddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    if-eqz v48, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_10

    .line 240
    const/16 v48, 0x8

    move/from16 v0, v17

    move/from16 v1, v48

    if-ne v0, v1, :cond_e

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090038

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v48

    move/from16 v0, v48

    float-to-int v9, v0

    .line 249
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v48, v0

    add-int v48, v48, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v33

    move/from16 v3, v49

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 253
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    if-eqz v48, :cond_18

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v13

    .line 255
    .local v13, "fontSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v44

    .line 256
    .local v44, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v42

    .line 257
    .local v42, "topPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v6

    .line 258
    .local v6, "bottomPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionHeight()I

    move-result v14

    .line 259
    .local v14, "height":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getMaxWidth(Z)I

    move-result v27

    .line 261
    .local v27, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    if-eqz v48, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_11

    .line 262
    add-int v48, v31, v32

    add-int v48, v48, v9

    sub-int v27, v27, v48

    .line 266
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v26

    .line 267
    .local v26, "leftPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v35

    .line 268
    .local v35, "rightPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v5

    .line 270
    .local v5, "activeIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_5

    .line 271
    if-gez v5, :cond_5

    const/16 v48, 0x2

    move/from16 v0, v48

    if-eq v7, v0, :cond_5

    const/4 v5, 0x0

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v48, v0

    if-nez v48, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v48, v0

    if-nez v48, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v48

    if-eqz v48, :cond_7

    :cond_6
    const/16 v48, 0x2

    move/from16 v0, v48

    if-ne v7, v0, :cond_7

    .line 275
    const/4 v5, -0x1

    .line 277
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v45

    .line 278
    .local v45, "useSplitFloatingMode":Z
    const/16 v43, 0x0

    .line 279
    .local v43, "totalWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    invoke-interface/range {v48 .. v49}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    .line 280
    .local v8, "candidateView":Landroid/view/View;
    const/4 v12, 0x0

    .line 281
    .local v12, "expandButtonWidth":I
    if-eqz v8, :cond_8

    instance-of v0, v8, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move/from16 v48, v0

    if-eqz v48, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_8

    .line 283
    check-cast v8, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .end local v8    # "candidateView":Landroid/view/View;
    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonWidth()I

    move-result v12

    .line 286
    :cond_8
    sub-int v48, v27, v12

    div-int/lit8 v28, v48, 0x3

    .line 287
    .local v28, "maxWidthTextView":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_12

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->isShownExpandView(I)Z

    move-result v48

    if-eqz v48, :cond_12

    const/16 v25, 0x1

    .line 288
    :goto_7
    const/16 v48, 0x2

    move/from16 v0, v48

    if-ne v7, v0, :cond_13

    const/16 v22, 0x1

    .line 289
    .local v22, "isDefaultSymbol":Z
    :goto_8
    const/4 v10, 0x0

    .line 291
    .local v10, "defaultWidthSymbol":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 293
    .local v39, "suggestionSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v48

    if-nez v48, :cond_14

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget-object v48, v48, v49

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v28, v0

    .line 295
    add-int/lit8 v48, v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    .line 299
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_15

    .line 300
    const/16 v15, 0x14

    .local v15, "idx":I
    :goto_a
    move/from16 v0, v39

    if-ge v15, v0, :cond_15

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    if-nez v48, :cond_9

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    new-instance v49, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    aput-object v49, v48, v15

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x11

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    .line 304
    move/from16 v0, v39

    if-ge v15, v0, :cond_9

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    new-instance v50, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v51

    invoke-direct/range {v50 .. v51}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v50, v48, v49

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    const-string v49, " "

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v42

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    .line 300
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_a

    .line 206
    .end local v5    # "activeIndex":I
    .end local v6    # "bottomPadding":I
    .end local v9    # "candidateViewpaddingLeft":I
    .end local v10    # "defaultWidthSymbol":Ljava/lang/String;
    .end local v12    # "expandButtonWidth":I
    .end local v13    # "fontSize":F
    .end local v14    # "height":I
    .end local v15    # "idx":I
    .end local v17    # "inputMethod":I
    .end local v18    # "isApplyAutoCorrection":Z
    .end local v19    # "isApplyAutoCorrectionHasComposing":Z
    .end local v21    # "isChineseOrJapaneseSwiftKeyMode":Z
    .end local v22    # "isDefaultSymbol":Z
    .end local v24    # "isRightSet":Z
    .end local v25    # "isShownExpandView":Z
    .end local v26    # "leftPadding":I
    .end local v27    # "maxWidth":I
    .end local v28    # "maxWidthTextView":I
    .end local v29    # "paddingBottom":I
    .end local v31    # "paddingLeft":I
    .end local v32    # "paddingRight":I
    .end local v33    # "paddingTop":I
    .end local v35    # "rightPadding":I
    .end local v39    # "suggestionSize":I
    .end local v42    # "topPadding":I
    .end local v43    # "totalWidth":F
    .end local v44    # "typeFace":Landroid/graphics/Typeface;
    .end local v45    # "useSplitFloatingMode":Z
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 211
    .restart local v18    # "isApplyAutoCorrection":Z
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 214
    .restart local v19    # "isApplyAutoCorrectionHasComposing":Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 234
    .restart local v21    # "isChineseOrJapaneseSwiftKeyMode":Z
    .restart local v24    # "isRightSet":Z
    .restart local v25    # "isShownExpandView":Z
    .restart local v29    # "paddingBottom":I
    .restart local v31    # "paddingLeft":I
    .restart local v32    # "paddingRight":I
    .restart local v33    # "paddingTop":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v32

    goto/16 :goto_3

    .line 243
    .restart local v9    # "candidateViewpaddingLeft":I
    .restart local v17    # "inputMethod":I
    :cond_e
    const/16 v48, 0x7

    move/from16 v0, v17

    move/from16 v1, v48

    if-ne v0, v1, :cond_f

    .line 244
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 246
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v48

    const v49, 0x7f090037

    invoke-virtual/range {v48 .. v49}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v48

    move/from16 v0, v48

    float-to-int v9, v0

    goto/16 :goto_4

    .line 251
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v48, v0

    add-int v48, v48, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v33

    move/from16 v3, v49

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 264
    .restart local v6    # "bottomPadding":I
    .restart local v13    # "fontSize":F
    .restart local v14    # "height":I
    .restart local v27    # "maxWidth":I
    .restart local v42    # "topPadding":I
    .restart local v44    # "typeFace":Landroid/graphics/Typeface;
    :cond_11
    add-int v48, v31, v32

    add-int v48, v48, v9

    add-int v48, v48, v9

    sub-int v27, v27, v48

    goto/16 :goto_6

    .line 287
    .restart local v5    # "activeIndex":I
    .restart local v12    # "expandButtonWidth":I
    .restart local v26    # "leftPadding":I
    .restart local v28    # "maxWidthTextView":I
    .restart local v35    # "rightPadding":I
    .restart local v43    # "totalWidth":F
    .restart local v45    # "useSplitFloatingMode":Z
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 288
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_8

    .line 297
    .restart local v10    # "defaultWidthSymbol":Ljava/lang/String;
    .restart local v22    # "isDefaultSymbol":Z
    .restart local v39    # "suggestionSize":I
    :cond_14
    add-int/lit8 v48, v28, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->setCandidateWidthAndCount(II)V

    goto/16 :goto_9

    .line 314
    :cond_15
    if-eqz v22, :cond_16

    .line 315
    const/16 v47, 0x0

    .line 317
    .local v47, "width":I
    const/4 v15, 0x0

    .restart local v15    # "idx":I
    :goto_b
    move/from16 v0, v39

    if-ge v15, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v15, v0, :cond_16

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    if-nez v48, :cond_1a

    .line 319
    const-string v48, "SamsungIME"

    const-string v49, "mSuggestionViews[idx] is null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v15    # "idx":I
    .end local v47    # "width":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_17

    .line 330
    if-lez v39, :cond_17

    const-string v48, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_17

    .line 331
    const/4 v5, -0x1

    .line 335
    :cond_17
    const/4 v15, 0x0

    .restart local v15    # "idx":I
    :goto_c
    move/from16 v0, v39

    if-ge v15, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-ge v15, v0, :cond_18

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    if-nez v48, :cond_1c

    .line 337
    const-string v48, "SamsungIME"

    const-string v49, "mSuggestionViews[idx] is null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v5    # "activeIndex":I
    .end local v6    # "bottomPadding":I
    .end local v10    # "defaultWidthSymbol":Ljava/lang/String;
    .end local v12    # "expandButtonWidth":I
    .end local v13    # "fontSize":F
    .end local v14    # "height":I
    .end local v15    # "idx":I
    .end local v22    # "isDefaultSymbol":Z
    .end local v26    # "leftPadding":I
    .end local v27    # "maxWidth":I
    .end local v28    # "maxWidthTextView":I
    .end local v35    # "rightPadding":I
    .end local v39    # "suggestionSize":I
    .end local v42    # "topPadding":I
    .end local v43    # "totalWidth":F
    .end local v44    # "typeFace":Landroid/graphics/Typeface;
    .end local v45    # "useSplitFloatingMode":Z
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_19

    .line 664
    const/16 v48, 0x3

    move/from16 v0, v48

    if-le v11, v0, :cond_19

    .line 665
    const/4 v11, 0x3

    .line 672
    :cond_19
    return v11

    .line 322
    .restart local v5    # "activeIndex":I
    .restart local v6    # "bottomPadding":I
    .restart local v10    # "defaultWidthSymbol":Ljava/lang/String;
    .restart local v12    # "expandButtonWidth":I
    .restart local v13    # "fontSize":F
    .restart local v14    # "height":I
    .restart local v15    # "idx":I
    .restart local v22    # "isDefaultSymbol":Z
    .restart local v26    # "leftPadding":I
    .restart local v27    # "maxWidth":I
    .restart local v28    # "maxWidthTextView":I
    .restart local v35    # "rightPadding":I
    .restart local v39    # "suggestionSize":I
    .restart local v42    # "topPadding":I
    .restart local v43    # "totalWidth":F
    .restart local v44    # "typeFace":Landroid/graphics/Typeface;
    .restart local v45    # "useSplitFloatingMode":Z
    .restart local v47    # "width":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v48

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v37, v0

    .line 323
    .local v37, "stringWidth":I
    move/from16 v0, v47

    move/from16 v1, v37

    if-ge v0, v1, :cond_1b

    .line 324
    move/from16 v47, v37

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 317
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    .line 340
    .end local v37    # "stringWidth":I
    .end local v47    # "width":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_21

    if-eqz v17, :cond_1d

    const/16 v48, 0x8

    move/from16 v0, v17

    move/from16 v1, v48

    if-ne v0, v1, :cond_21

    .line 341
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move/from16 v0, v48

    if-gt v0, v15, :cond_1f

    .line 335
    :cond_1e
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_c

    .line 344
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSplitResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    if-eqz v48, :cond_20

    const-string v48, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_22

    .line 347
    :cond_20
    if-nez v15, :cond_1e

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    .line 353
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    if-eqz v48, :cond_1e

    .line 357
    :cond_22
    if-ne v15, v5, :cond_31

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v50, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/CharSequence;

    const/16 v51, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 362
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v1, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setHeight(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPressedTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getInputedTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    .line 370
    if-nez v5, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_32

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, -0x1

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    .line 385
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v48

    if-eqz v48, :cond_35

    if-ne v15, v5, :cond_35

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    .line 391
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x11

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    .line 397
    if-eqz v22, :cond_36

    if-eqz v10, :cond_36

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v50, v0

    aget-object v50, v50, v15

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v49

    sub-float v48, v48, v49

    const/high16 v49, 0x40000000

    div-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v30, v0

    .line 400
    .local v30, "paddingGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    add-int v49, v26, v30

    const/16 v50, 0x0

    add-int v51, v35, v30

    const/16 v52, 0x0

    invoke-virtual/range {v48 .. v52}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 405
    .end local v30    # "paddingGap":I
    :goto_12
    const/16 v48, 0x3

    move/from16 v0, v48

    if-eq v7, v0, :cond_3f

    .line 406
    if-nez v21, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v48

    if-nez v48, :cond_38

    .line 407
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_37

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sub-int v49, v27, v12

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 412
    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 414
    .local v34, "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x13

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    .end local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f800000

    add-float v48, v48, v49

    add-float v43, v43, v48

    .line 421
    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v48, v43, v48

    if-lez v48, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-nez v48, :cond_24

    .line 422
    if-nez v15, :cond_18

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 426
    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 428
    .restart local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    .end local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_24
    :goto_14
    if-lez v15, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_26

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v48, v0

    add-int/lit8 v49, v15, -0x1

    aget-object v48, v48, v49

    sub-int v49, v14, v42

    sub-int v49, v49, v6

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setHeight(I)V

    .line 527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_40

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_25

    if-eqz v25, :cond_40

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_40

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v49, v0

    add-int/lit8 v50, v15, -0x1

    aget-object v49, v49, v50

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 539
    :cond_26
    :goto_15
    if-eqz v45, :cond_27

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_2b

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    .line 549
    .local v38, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v48

    if-eqz v48, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_41

    const/16 v20, 0x1

    .line 550
    .local v20, "isAutoCorrectionSingleCandidate":Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_44

    move/from16 v0, v46

    if-eq v15, v0, :cond_44

    if-nez v20, :cond_44

    if-eqz v38, :cond_28

    const-string v48, " "

    move-object/from16 v0, v38

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-nez v48, :cond_44

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_29

    if-eqz v38, :cond_29

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_29

    const/16 v48, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v48

    if-nez v48, :cond_29

    const-string v48, ".,;!?\u061b\u060c\u061f"

    const/16 v49, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_44

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-nez v48, :cond_44

    if-nez v21, :cond_44

    .line 559
    const/16 v23, 0x1

    .line 560
    .local v23, "isNextWordPredictionSymbol":Z
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_2a

    const-string v48, ".,;!?\u061b\u060c\u061f"

    const/16 v49, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v48

    if-eqz v48, :cond_2a

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v48

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_42

    const/16 v23, 0x1

    .line 563
    :cond_2a
    :goto_17
    if-eqz v23, :cond_43

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    new-instance v49, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 589
    .end local v20    # "isAutoCorrectionSingleCandidate":Z
    .end local v23    # "isNextWordPredictionSymbol":Z
    .end local v38    # "suggestion":Ljava/lang/String;
    :cond_2b
    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    if-eqz v48, :cond_2c

    .line 590
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v48, v0

    if-nez v48, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_45

    move/from16 v0, v46

    if-eq v15, v0, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_45

    if-nez v22, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_45

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    new-instance v49, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout$2;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 615
    :cond_2c
    :goto_19
    if-eqz v19, :cond_2e

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_46

    .line 617
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v5, v0, :cond_2d

    if-nez v15, :cond_2d

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const v49, 0x7f020005

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const-string v49, " "

    const-string v50, " "

    const/16 v51, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 621
    :cond_2d
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v5, v0, :cond_2e

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_2e

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    .line 638
    :cond_2e
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_49

    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v48

    if-nez v48, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v48, v0

    invoke-interface/range {v48 .. v48}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v48

    if-eqz v48, :cond_2f

    if-eqz v25, :cond_49

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v48

    if-nez v48, :cond_49

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_30

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    const/16 v50, 0x0

    invoke-virtual/range {v48 .. v50}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 654
    :cond_30
    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v48, v0

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_4a

    .line 655
    add-int/lit8 v11, v15, 0x1

    goto/16 :goto_e

    .line 360
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v50, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v51, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/CharSequence;

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_f

    .line 373
    :cond_32
    if-eqz v18, :cond_34

    .line 374
    if-nez v15, :cond_33

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v48

    if-eqz v48, :cond_33

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-nez v48, :cond_33

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v48

    if-nez v48, :cond_33

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v48

    if-nez v48, :cond_33

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v48

    if-nez v48, :cond_33

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_10

    .line 378
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, -0x1

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_10

    .line 381
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_10

    .line 388
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_11

    .line 402
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v26

    move/from16 v2, v49

    move/from16 v3, v35

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_12

    .line 418
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_13

    .line 434
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3c

    .line 435
    if-eqz v25, :cond_3a

    .line 436
    const/16 v48, 0x4

    move/from16 v0, v48

    if-eq v7, v0, :cond_39

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 440
    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 442
    .restart local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x13

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    .line 448
    .end local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sub-int v49, v27, v12

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    .line 449
    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    add-float v43, v43, v48

    .line 450
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v48, v43, v48

    if-gtz v48, :cond_18

    const/16 v48, 0x0

    cmpg-float v48, v43, v48

    if-gez v48, :cond_24

    goto/16 :goto_d

    .line 446
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->getPreviewSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1c

    .line 454
    :cond_3a
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v48, v0

    add-float v43, v43, v48

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 473
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    div-float v36, v48, v49

    .line 474
    .local v36, "scale":F
    const/high16 v48, 0x3f800000

    cmpg-float v48, v36, v48

    if-gez v48, :cond_3b

    .line 475
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    mul-float v50, v13, v36

    invoke-virtual/range {v48 .. v50}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_14

    .line 474
    :cond_3b
    const/high16 v36, 0x3f800000

    goto :goto_1d

    .line 479
    .end local v36    # "scale":F
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z

    move/from16 v48, v0

    if-eqz v48, :cond_3d

    .line 480
    const/16 v48, 0x1

    move/from16 v0, v39

    move/from16 v1, v48

    if-ne v0, v1, :cond_3e

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sub-int v49, v27, v12

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    const/16 v50, 0x1

    invoke-virtual/range {v48 .. v50}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x1

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    sget-object v49, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 485
    new-instance v34, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v48, -0x2

    const/16 v49, -0x1

    move-object/from16 v0, v34

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 487
    .restart local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v48, 0xd

    move-object/from16 v0, v34

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x13

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setGravity(I)V

    .line 494
    .end local v34    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3d
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f800000

    add-float v48, v48, v49

    add-float v43, v43, v48

    .line 495
    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v48, v43, v48

    if-lez v48, :cond_24

    .line 496
    if-nez v15, :cond_18

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    .line 498
    .local v38, "suggestion":Ljava/lang/CharSequence;
    new-instance v40, Ljava/lang/StringBuilder;

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 499
    .local v40, "temp":Ljava/lang/StringBuilder;
    const/16 v41, 0x0

    .line 500
    .local v41, "textWidth":F
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_1f
    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->length()I

    move-result v48

    move/from16 v0, v16

    move/from16 v1, v48

    if-gt v0, v1, :cond_24

    .line 501
    const/16 v48, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 502
    const-string v48, "..."

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-interface/range {v38 .. v38}, Ljava/lang/CharSequence;->length()I

    move-result v48

    move-object/from16 v0, v38

    move/from16 v1, v16

    move/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v48

    move-object/from16 v0, v40

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v49, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    move-object/from16 v2, v48

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f800000

    add-float v41, v48, v49

    .line 506
    sub-int v48, v27, v12

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    cmpg-float v48, v41, v48

    if-lez v48, :cond_24

    .line 500
    add-int/lit8 v16, v16, 0x1

    goto :goto_1f

    .line 491
    .end local v16    # "index":I
    .end local v38    # "suggestion":Ljava/lang/CharSequence;
    .end local v40    # "temp":Ljava/lang/StringBuilder;
    .end local v41    # "textWidth":F
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_1e

    .line 517
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    invoke-virtual/range {v48 .. v48}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v48

    const/high16 v49, 0x3f800000

    add-float v48, v48, v49

    add-float v43, v43, v48

    .line 518
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v48, v0

    cmpg-float v48, v43, v48

    if-gez v48, :cond_24

    .line 519
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v48, v0

    sub-float v48, v48, v43

    const/high16 v49, 0x40000000

    div-float v48, v48, v49

    move/from16 v0, v48

    float-to-int v0, v0

    move/from16 v26, v0

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v26

    move/from16 v2, v49

    move/from16 v3, v35

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_14

    .line 534
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSplitView:[Landroid/widget/TextView;

    move-object/from16 v49, v0

    add-int/lit8 v50, v15, -0x1

    aget-object v49, v49, v50

    invoke-virtual/range {v48 .. v49}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_15

    .line 549
    .local v38, "suggestion":Ljava/lang/String;
    :cond_41
    const/16 v20, 0x0

    goto/16 :goto_16

    .line 561
    .restart local v20    # "isAutoCorrectionSingleCandidate":Z
    .restart local v23    # "isNextWordPredictionSymbol":Z
    :cond_42
    const/16 v23, 0x0

    goto/16 :goto_17

    .line 582
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_18

    .line 585
    .end local v23    # "isNextWordPredictionSymbol":Z
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_18

    .line 612
    .end local v20    # "isAutoCorrectionSingleCandidate":Z
    .end local v38    # "suggestion":Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_19

    .line 626
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Ljava/util/ArrayList;->size()I

    move-result v48

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_47

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_47

    .line 627
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aget-object v49, v49, v50

    invoke-virtual/range {v49 .. v49}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v49

    div-float v36, v48, v49

    .line 628
    .restart local v36    # "scale":F
    const/high16 v48, 0x3f800000

    cmpg-float v48, v36, v48

    if-gez v48, :cond_48

    .line 629
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget-object v48, v48, v49

    const/16 v49, 0x1

    mul-float v50, v13, v36

    invoke-virtual/range {v48 .. v50}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aget-object v49, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v50, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    const/16 v51, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/CharSequence;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    const/16 v51, 0x0

    const/16 v52, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v48

    move/from16 v3, v51

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    .line 632
    .end local v36    # "scale":F
    :cond_47
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v15, v0, :cond_2e

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const v49, 0x7f020005

    invoke-virtual/range {v48 .. v49}, Landroid/view/View;->setBackgroundResource(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v48, v0

    aget-object v48, v48, v15

    const-string v49, " "

    const-string v50, " "

    const/16 v51, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v51

    invoke-virtual {v0, v1, v2, v15, v3}, Lcom/diotek/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1a

    .line 628
    .restart local v36    # "scale":F
    :cond_48
    const/high16 v36, 0x3f800000

    goto/16 :goto_20

    .line 648
    .end local v36    # "scale":F
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    if-eqz v48, :cond_30

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mCandidateContentLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v49, v0

    aget-object v49, v49, v15

    invoke-virtual/range {v48 .. v49}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1b

    .line 657
    :cond_4a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e
.end method

.method public setPopupCandidateLayout()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    .line 150
    return-void
.end method

.method public abstract setSuggestionSelectionBg(IZ)V
.end method
