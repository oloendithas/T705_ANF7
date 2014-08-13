.class public abstract Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;
.super Landroid/widget/FrameLayout;
.source "AbstractPhoneticSpellScrollLayout.java"


# instance fields
.field private final BG_TOP_GAP:I

.field private mCandidateScrollEffectImgDown:Landroid/view/View;

.field private mCandidateScrollEffectImgUp:Landroid/view/View;

.field protected mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPhoneticSpellLayout:Landroid/widget/LinearLayout;

.field mPhoneticSpellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticSpellScrollViewBtnHeight:I

.field private mPhoneticSpellScrollViewBtnTextSize:F

.field private mPhoneticSpellScrollViewBtnVGap:I

.field private mPhoneticSpellScrollViewBtnWidth:I

.field private mPhoneticSpellScrollViewHeight:I

.field private mPhoneticSpellViewSelectedColor:I

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 35
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 36
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->BG_TOP_GAP:I

    .line 39
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    .line 40
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    .line 41
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnTextSize:F

    .line 43
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnVGap:I

    .line 44
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellViewSelectedColor:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 35
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 36
    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->BG_TOP_GAP:I

    .line 39
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    .line 40
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    .line 41
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnTextSize:F

    .line 43
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnVGap:I

    .line 44
    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellViewSelectedColor:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private addViewToPhoneticSpellLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "btn"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    :cond_0
    return-void
.end method

.method private computeRealScrollViewHeight()I
    .locals 3

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return v1
.end method

.method private setPhoneticSpellScrollViewLayout_height()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "currentView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getBackgroundColor()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewBtnHeight()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewBtnWidth()I
.end method

.method protected abstract getFloatingPhoneticSpellScrollViewHeight()I
.end method

.method protected getFont(I)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "language"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v1, "SAMSUNGSANS_KEYPAD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPhoneticSpellScrollEffectImgDownRscId()I
.end method

.method protected abstract getPhoneticSpellScrollEffectImgUpRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnBgRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnGap()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnHeight()I
.end method

.method protected abstract getPhoneticSpellScrollViewBtnWidth()I
.end method

.method protected abstract getPhoneticSpellScrollViewDivideImgRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewHeight()I
.end method

.method protected abstract getPhoneticSpellScrollViewRscId()I
.end method

.method protected abstract getPhoneticSpellScrollViewSelectColor()I
.end method

.method public getPhoneticSpellScrollViewShown()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public getPhoneticSpellScrollViewWidth()I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public initView(Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1, "currentLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 86
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 87
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    .line 88
    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 90
    iput-object p1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    .line 91
    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewRscId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    .line 93
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollEffectImgUpRscId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollEffectImgDownRscId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 98
    .local v0, "inputMethod":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getFloatingPhoneticSpellScrollViewBtnWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getFloatingPhoneticSpellScrollViewBtnHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getFloatingPhoneticSpellScrollViewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnGap()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnVGap:I

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewSelectColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellViewSelectedColor:I

    .line 116
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->computeScroll()V

    .line 134
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 137
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingChinesePhoneticSpellEffect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->computeRealScrollViewHeight()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 139
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_2
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgDown:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mCandidateScrollEffectImgUp:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 158
    .local p1, "phoneticSpellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    .line 159
    return-void
.end method

.method public setPhoneticSpellScrollViewShown(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 172
    :goto_0
    return-void

    .line 166
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setSpellToSpellLayout(Z)V
    .locals 27
    .param p1, "isSelectedItem"    # Z

    .prologue
    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v25, -0x1

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v17

    .line 197
    .local v17, "nPhoneticSelectionIndex":I
    const/16 v18, 0x0

    .line 198
    .local v18, "nTotalbuttonHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "WINDOW_HEIGHT"

    const/16 v25, 0x500

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v19

    .line 199
    .local v19, "nWindowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "WINDOW_WIDTH"

    const/16 v25, 0x320

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v20

    .line 200
    .local v20, "nWindowWidth":I
    const/16 v23, 0x320

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v23, 0x1e0

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 201
    .local v9, "IS_WVGA":Z
    :goto_0
    const/16 v23, 0x140

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v23, 0xf0

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    .line 202
    .local v7, "IS_QVGA":Z
    :goto_1
    const/16 v23, 0x500

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v23, 0x2d0

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 203
    .local v5, "IS_HD":Z
    :goto_2
    const/16 v23, 0x3c0

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/16 v23, 0x21c

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v6, 0x1

    .line 204
    .local v6, "IS_QHD":Z
    :goto_3
    const/16 v23, 0xa00

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v23, 0x640

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 205
    .local v8, "IS_WQXGA":Z
    :goto_4
    const/16 v23, 0x780

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v23, 0x438

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/4 v4, 0x1

    .line 206
    .local v4, "IS_FHD":Z
    :goto_5
    const/16 v23, 0x500

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/16 v23, 0x320

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/4 v10, 0x1

    .line 207
    .local v10, "IS_WXGA":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 210
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 292
    :goto_7
    return-void

    .line 200
    .end local v4    # "IS_FHD":Z
    .end local v5    # "IS_HD":Z
    .end local v6    # "IS_QHD":Z
    .end local v7    # "IS_QVGA":Z
    .end local v8    # "IS_WQXGA":Z
    .end local v9    # "IS_WVGA":Z
    .end local v10    # "IS_WXGA":Z
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 201
    .restart local v9    # "IS_WVGA":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 202
    .restart local v7    # "IS_QVGA":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 203
    .restart local v5    # "IS_HD":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 204
    .restart local v6    # "IS_QHD":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 205
    .restart local v8    # "IS_WQXGA":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 206
    .restart local v4    # "IS_FHD":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 214
    .restart local v10    # "IS_WXGA":Z
    :cond_8
    const/4 v12, 0x0

    .line 216
    .local v12, "btnSpannableText":Landroid/text/SpannableString;
    const/4 v13, 0x0

    .local v13, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "n":I
    :goto_8
    if-ge v13, v15, :cond_13

    .line 217
    move v14, v13

    .line 218
    .local v14, "index":I
    new-instance v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 219
    .local v11, "btn":Landroid/widget/Button;
    if-eqz v9, :cond_a

    .line 220
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e6147ae

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    :goto_9
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnBgRscId()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 238
    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 239
    :cond_9
    move/from16 v0, v17

    if-ne v0, v13, :cond_11

    .line 240
    const v23, -0xea7843

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    new-instance v12, Landroid/text/SpannableString;

    .end local v12    # "btnSpannableText":Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 242
    .restart local v12    # "btnSpannableText":Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/UnderlineSpan;

    invoke-direct/range {v23 .. v23}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v24, 0x0

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 243
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "INPUT_LANGUAGE"

    const v25, 0x656e4742

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v16

    .line 255
    .local v16, "nLanguage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 258
    new-instance v23, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout$1;-><init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;I)V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->addViewToPhoneticSpellLayout(Landroid/view/View;)V

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x2

    add-int v18, v18, v23

    .line 271
    new-instance v22, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 272
    .local v22, "v":Landroid/view/View;
    new-instance v21, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x2

    const/16 v24, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 274
    .local v21, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewDivideImgRscId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->addViewToPhoneticSpellLayout(Landroid/view/View;)V

    .line 278
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v23

    add-int v18, v18, v23

    .line 216
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    .line 221
    .end local v16    # "nLanguage":I
    .end local v21    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v22    # "v":Landroid/view/View;
    :cond_a
    if-eqz v7, :cond_b

    .line 222
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ecccccd

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 223
    :cond_b
    if-eqz v5, :cond_c

    .line 224
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e23d70a

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 225
    :cond_c
    if-eqz v6, :cond_d

    .line 226
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e6147ae

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 227
    :cond_d
    if-eqz v8, :cond_e

    .line 228
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e6147ae

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 229
    :cond_e
    if-eqz v4, :cond_f

    .line 230
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3db851ec

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 231
    :cond_f
    if-eqz v10, :cond_10

    .line 232
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3e6147ae

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 234
    :cond_10
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3df5c28f

    mul-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_9

    .line 246
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 251
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/CharSequence;

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 282
    .end local v11    # "btn":Landroid/widget/Button;
    .end local v14    # "index":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_14

    .line 283
    new-instance v11, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 284
    .restart local v11    # "btn":Landroid/widget/Button;
    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoneticSpellScrollViewBtnBgRscId()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v18

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->mPhoneticSpellScrollViewBtnWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 288
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setClickable(Z)V

    .line 289
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->addViewToPhoneticSpellLayout(Landroid/view/View;)V

    .line 291
    .end local v11    # "btn":Landroid/widget/Button;
    :cond_14
    const/4 v12, 0x0

    .line 292
    goto/16 :goto_7
.end method
