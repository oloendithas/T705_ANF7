.class public abstract Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateCustomButtonLayout.java"


# instance fields
.field protected mFirstButton:Landroid/widget/Button;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field protected mSecondButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 29
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 30
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 29
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 30
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 29
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 30
    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 45
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const v10, 0x3f47ae14

    const/4 v7, 0x0

    const v9, 0x3f666666

    .line 48
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 49
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 50
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v6

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 52
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    const/16 v8, 0x8

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    const/4 v8, 0x7

    if-ne v6, v8, :cond_7

    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v6

    const/16 v8, 0x320

    if-ne v6, v8, :cond_7

    const/4 v3, 0x1

    .line 56
    .local v3, "isPopupKeyboardInWXGA":Z
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getFirstButtonId()I

    move-result v1

    .line 57
    .local v1, "firstBtnId":I
    if-eqz v1, :cond_3

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    .line 59
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    new-instance v8, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;

    invoke-direct {v8, p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;-><init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonListener(Landroid/view/View;)V

    .line 70
    if-eqz v3, :cond_1

    .line 71
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 72
    .local v5, "tempFirstButtonLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 74
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .end local v5    # "tempFirstButtonLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getButtonTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 77
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getTextFontSize(Landroid/widget/Button;)I

    move-result v2

    .line 78
    .local v2, "fontSize":I
    if-eqz v3, :cond_2

    .line 79
    int-to-float v6, v2

    mul-float/2addr v6, v9

    float-to-int v2, v6

    .line 81
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "btBG":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 84
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .end local v0    # "btBG":Landroid/graphics/drawable/Drawable;
    .end local v2    # "fontSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getSecondButtonId()I

    move-result v4

    .line 88
    .local v4, "secondId":I
    if-eqz v4, :cond_6

    .line 89
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    .line 90
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonListener(Landroid/view/View;)V

    .line 91
    if-eqz v3, :cond_4

    .line 92
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 93
    .restart local v5    # "tempFirstButtonLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    mul-float/2addr v6, v10

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .end local v5    # "tempFirstButtonLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getButtonTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getTextFontSize(Landroid/widget/Button;)I

    move-result v2

    .line 99
    .restart local v2    # "fontSize":I
    if-eqz v3, :cond_5

    .line 100
    int-to-float v6, v2

    mul-float/2addr v6, v9

    float-to-int v2, v6

    .line 102
    :cond_5
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 103
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .restart local v0    # "btBG":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    .line 105
    iget-object v6, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .end local v0    # "btBG":Landroid/graphics/drawable/Drawable;
    .end local v2    # "fontSize":I
    :cond_6
    return-void

    .end local v1    # "firstBtnId":I
    .end local v3    # "isPopupKeyboardInWXGA":Z
    .end local v4    # "secondId":I
    :cond_7
    move v3, v7

    .line 52
    goto/16 :goto_0
.end method


# virtual methods
.method protected abstract getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getButtonTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getFirstButtonId()I
.end method

.method protected abstract getSecondButtonId()I
.end method

.method protected getTextFontSize(Landroid/widget/Button;)I
    .locals 9
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v8, 0x0

    .line 150
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v1, v6

    .line 151
    .local v1, "labelSize":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    move v2, v1

    .line 162
    .end local v1    # "labelSize":I
    .local v2, "labelSize":I
    :goto_0
    return v2

    .line 155
    .end local v2    # "labelSize":I
    .restart local v1    # "labelSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v4, Landroid/graphics/RectF;

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v7, v7, 0x5

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 158
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;I)I

    move-result v5

    .line 159
    .local v5, "textSize":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 160
    move v1, v5

    :cond_2
    move v2, v1

    .line 162
    .end local v1    # "labelSize":I
    .restart local v2    # "labelSize":I
    goto :goto_0
.end method

.method protected getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;I)I
    .locals 11
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "rectf"    # Landroid/graphics/RectF;
    .param p3, "labelSize"    # I

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 112
    .local v7, "text_width":F
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    .line 113
    .local v6, "text_height":F
    const/4 v5, 0x0

    .line 114
    .local v5, "text_check_w":F
    const/4 v4, 0x0

    .line 116
    .local v4, "text_check_h":F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .local v0, "bounds":Landroid/graphics/Rect;
    move-object v3, p1

    .line 121
    .local v3, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 122
    .local v1, "incr_text_size":I
    if-lez p3, :cond_1

    .line 123
    move v1, p3

    .line 129
    :cond_0
    :goto_0
    int-to-float v8, v1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v3, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 132
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v5, v8

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v4, v8

    .line 135
    cmpl-float v8, v7, v5

    if-lez v8, :cond_2

    cmpl-float v8, v6, v4

    if-lez v8, :cond_2

    .line 146
    :goto_1
    return v1

    .line 125
    :cond_1
    const/16 v1, 0x50

    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 140
    if-gtz v1, :cond_0

    .line 141
    const-string v8, "DIOTEK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error! Candi FontSize is 0. please check the rect for lable - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move v1, p3

    .line 143
    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    .line 226
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 228
    .local v0, "buttonArea":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 241
    .local v1, "candidateHeight":I
    const/4 v2, 0x0

    .line 242
    .local v2, "y":I
    int-to-float v4, v2

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 245
    iget-object v4, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 250
    .end local v0    # "buttonArea":Landroid/graphics/Rect;
    .end local v1    # "candidateHeight":I
    .end local v2    # "y":I
    :cond_0
    :goto_1
    return v3

    .line 231
    .restart local v0    # "buttonArea":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 237
    :pswitch_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 250
    .end local v0    # "buttonArea":Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonEnableOnEmailUrlMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V

    .line 178
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    if-eqz p1, :cond_3

    .line 183
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 187
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected abstract setButtonListener(Landroid/view/View;)V
.end method

.method public setPrevNextButtonEnable(I)V
    .locals 3
    .param p1, "enableMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V

    .line 196
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 217
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 202
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
