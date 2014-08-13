.class public Lcom/diotek/ime/implement/view/candidate/CandidateLayout;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;
.source "CandidateLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 29
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 30
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 31
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 32
    .local v0, "bottom":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 33
    .local v1, "inputMethod":I
    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 40
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    return-void

    .line 35
    :cond_0
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    .line 36
    const/4 v2, 0x0

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 47
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 48
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 49
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 50
    .local v0, "bottom":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 51
    .local v1, "inputMethod":I
    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 58
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 53
    :cond_0
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    .line 54
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method private getLeftButtonAreaWidth()I
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected getBackgroundResourceId()I
    .locals 4

    .prologue
    const v2, 0x7f020028

    .line 241
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 242
    .local v1, "inputMethod":I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 244
    :try_start_0
    const-string v3, "floating_candidate_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 249
    :cond_0
    :goto_0
    return v2

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method protected getBottomPaddingSize()I
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 193
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getCandidateLeftRightGapForOneHand()I
    .locals 4

    .prologue
    const v3, 0x7f090445

    .line 260
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 262
    .local v0, "inputMethod":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090444

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 266
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090443

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getHighlightTextColor()I
    .locals 4

    .prologue
    const v3, 0x7f0b001a

    .line 215
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 221
    .local v0, "inputMethod":I
    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 229
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getInputedTextColor()I
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getLeftPaddingSize()I
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth(Z)I
    .locals 10
    .param p1, "leftButtonAreaIsShown"    # Z

    .prologue
    const v9, 0x7f090035

    .line 105
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    .line 106
    .local v4, "inputMethod":I
    const/4 v0, 0x0

    .line 107
    .local v0, "candidateWidth":I
    const/4 v8, 0x7

    if-ne v4, v8, :cond_2

    .line 109
    :try_start_0
    const-string v8, "split_candidate_view_width"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v0

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    sub-int/2addr v0, v8

    :cond_0
    move v1, v0

    .line 161
    .end local v0    # "candidateWidth":I
    .local v1, "candidateWidth":I
    :goto_0
    return v1

    .line 115
    .end local v1    # "candidateWidth":I
    .restart local v0    # "candidateWidth":I
    :catch_0
    move-exception v3

    .line 116
    .local v3, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 117
    if-eqz p1, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_1
    move v1, v0

    .line 121
    .end local v0    # "candidateWidth":I
    .restart local v1    # "candidateWidth":I
    goto :goto_0

    .line 123
    .end local v1    # "candidateWidth":I
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "candidateWidth":I
    :cond_2
    const/16 v8, 0x8

    if-ne v4, v8, :cond_5

    .line 125
    :try_start_1
    const-string v8, "floating_candidate_view_width"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v0

    .line 127
    if-eqz p1, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    sub-int/2addr v0, v8

    :cond_3
    move v1, v0

    .line 131
    .end local v0    # "candidateWidth":I
    .restart local v1    # "candidateWidth":I
    goto :goto_0

    .line 132
    .end local v1    # "candidateWidth":I
    .restart local v0    # "candidateWidth":I
    :catch_1
    move-exception v3

    .line 133
    .restart local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 134
    if-eqz p1, :cond_4

    .line 135
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_4
    move v1, v0

    .line 138
    .end local v0    # "candidateWidth":I
    .restart local v1    # "candidateWidth":I
    goto :goto_0

    .line 140
    .end local v1    # "candidateWidth":I
    .end local v3    # "exception":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "candidateWidth":I
    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 141
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v7

    .line 142
    .local v7, "useCandidatePrevNext":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonOnEmailUrlMode()Z

    move-result v6

    .line 143
    .local v6, "useCandidateCustomButton":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    .line 144
    .local v2, "emailMode":Z
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    .line 146
    .local v5, "urlMode":Z
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 148
    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    if-nez v2, :cond_6

    if-eqz v5, :cond_8

    .line 150
    :cond_6
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v0, v8

    :cond_7
    :goto_1
    move v1, v0

    .line 154
    .end local v0    # "candidateWidth":I
    .restart local v1    # "candidateWidth":I
    goto :goto_0

    .line 151
    .end local v1    # "candidateWidth":I
    .restart local v0    # "candidateWidth":I
    :cond_8
    if-eqz p1, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    goto :goto_1

    .line 156
    .end local v2    # "emailMode":Z
    .end local v5    # "urlMode":Z
    .end local v6    # "useCandidateCustomButton":Z
    .end local v7    # "useCandidatePrevNext":Z
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 157
    if-eqz p1, :cond_a

    .line 158
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_a
    move v1, v0

    .line 161
    .end local v0    # "candidateWidth":I
    .restart local v1    # "candidateWidth":I
    goto/16 :goto_0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 275
    .local v0, "inputMethod":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090446

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 278
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090447

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPressedTextColor()I
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    .line 87
    .local v0, "fontManager":Lcom/diotek/ime/framework/common/FontManager;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const-string v1, "ROBOTO_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DROIDSANS_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected getRightPaddingSize()I
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSelecedBackgroundResourceId()I
    .locals 1

    .prologue
    .line 255
    const v0, 0x7f020027

    return v0
.end method

.method protected getSplitResourceId()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x7f020032

    return v0
.end method

.method protected getSuggestionFontSize()F
    .locals 2

    .prologue
    const v1, 0x7f090032

    .line 62
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_1

    .line 63
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestionHeight()I
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    .line 76
    .local v0, "fontManager":Lcom/diotek/ime/framework/common/FontManager;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const-string v1, "ROBOTO_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DROIDSANS"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected getTextColor()I
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getTopPaddingSize()I
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0905be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public setSuggestionSelectionBg(IZ)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "status"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getBackgroundResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 285
    if-eqz p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/diotek/ime/framework/view/candidate/CandidateTextView;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 288
    :cond_0
    return-void
.end method
