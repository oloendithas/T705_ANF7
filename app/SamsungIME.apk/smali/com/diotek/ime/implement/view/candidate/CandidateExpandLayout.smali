.class public Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.source "CandidateExpandLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x8

    .line 22
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 24
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 25
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 26
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 27
    .local v0, "bottom":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 28
    .local v1, "inputMethod":I
    if-eq v1, v6, :cond_0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    .line 30
    :cond_0
    if-ne v1, v6, :cond_1

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 46
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 47
    return-void

    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 40
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0x8

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 52
    .local v2, "left":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 53
    .local v4, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 54
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 55
    .local v0, "bottom":I
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 56
    .local v1, "inputMethod":I
    if-eq v1, v6, :cond_0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    .line 58
    :cond_0
    if-ne v1, v6, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 74
    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 75
    return-void

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    .line 68
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto :goto_0
.end method


# virtual methods
.method protected getBackgroundResourceId()I
    .locals 4

    .prologue
    const v2, 0x7f020028

    .line 209
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 210
    .local v1, "inputMethod":I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 212
    :try_start_0
    const-string v3, "floating_candidate_bg_xml"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method protected getBottomPaddingSize()I
    .locals 4

    .prologue
    const v3, 0x7f09003c

    .line 170
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 171
    .local v1, "inputMethod":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 173
    :try_start_0
    const-string v2, "floating_candidate_view_bottom_padding_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 178
    :goto_0
    return v2

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 178
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method protected getCandidateLeftRightGapForOneHand()I
    .locals 4

    .prologue
    const v3, 0x7f090445

    .line 236
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 238
    .local v0, "inputMethod":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
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

    .line 242
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

.method protected getCandidateLineResourceId()I
    .locals 1

    .prologue
    .line 222
    const v0, 0x7f030009

    return v0
.end method

.method protected getCandidateListLineResourceId()I
    .locals 1

    .prologue
    .line 227
    const v0, 0x7f020031

    return v0
.end method

.method protected getExpandScrollViewRightPadding()I
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getFloatingKeyboardLeftEdge()I
    .locals 2

    .prologue
    .line 261
    :try_start_0
    const-string v1, "floating_keyboard_left_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 263
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFloatingKeyboardRightEdge()I
    .locals 2

    .prologue
    .line 270
    :try_start_0
    const-string v1, "floating_keyboard_right_edge"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHighlightTextColor()I
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getInputedTextColor()I
    .locals 2

    .prologue
    .line 194
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
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 7

    .prologue
    const v6, 0x7f090036

    .line 118
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 119
    .local v1, "inputMethod":I
    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    .line 121
    :try_start_0
    const-string v5, "split_candidate_view_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 140
    :goto_0
    return v5

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    .line 126
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    .line 127
    const/4 v4, 0x0

    .line 128
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getFloatingKeyboardLeftEdge()I

    move-result v2

    .line 129
    .local v2, "leftEdge":I
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/candidate/CandidateExpandLayout;->getFloatingKeyboardRightEdge()I

    move-result v3

    .line 132
    .local v3, "rightEdge":I
    :try_start_1
    const-string v5, "floating_keyboard_width"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 137
    :goto_1
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    .restart local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_1

    .line 140
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "leftEdge":I
    .end local v3    # "rightEdge":I
    .end local v4    # "width":I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    .line 251
    .local v0, "inputMethod":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090446

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 254
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
    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getRightPaddingSize()I
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSplitResourceId()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f020032

    return v0
.end method

.method protected getSuggestionFontSize()F
    .locals 4

    .prologue
    const v3, 0x7f090032

    .line 79
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 80
    .local v1, "inputMethod":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 82
    :cond_0
    :try_start_0
    const-string v2, "floating_suggestion_font_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 87
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0

    .line 87
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0
.end method

.method protected getSuggestionHeight()I
    .locals 4

    .prologue
    const v3, 0x7f090033

    .line 104
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 105
    .local v1, "inputMethod":I
    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 107
    :cond_0
    :try_start_0
    const-string v2, "popup_candidate_view_height"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 112
    :goto_0
    return v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 112
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method protected getSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    .line 94
    .local v0, "fontManager":Lcom/diotek/ime/framework/common/FontManager;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    .line 95
    .local v1, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "ROBOTO_REGULAR"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 98
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "DROIDSANS"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0
.end method

.method protected getTextColor()I
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getTopPaddingSize()I
    .locals 4

    .prologue
    const v3, 0x7f09003b

    .line 156
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    .line 157
    .local v1, "inputMethod":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 159
    :try_start_0
    const-string v2, "floating_candidate_view_top_padding_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 164
    :goto_0
    return v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "exception":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 164
    .end local v0    # "exception":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method
