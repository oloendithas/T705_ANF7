.class public Lcom/diotek/ime/implement/view/emoticon/EmoticonLayout;
.super Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;
.source "EmoticonLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getEmoticonCountInRow()I
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "iconCountInRow":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 56
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getEmoticonFontSize()F
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09061c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 68
    .local v1, "emoticonFontSize":I
    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 70
    :try_start_0
    const-string v2, "emoticon_floating_icon_size"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 75
    :cond_0
    :goto_0
    int-to-float v2, v1

    return v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected getEmoticonHeight()I
    .locals 6

    .prologue
    .line 93
    iget-object v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09061f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 94
    .local v1, "emoticonHeight":I
    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 96
    :try_start_0
    const-string v2, "emoticon_floating_icon_height"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0
.end method

.method protected getEmoticonLineResourceId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f030015

    return v0
.end method

.method protected getEmoticonTypeface()Landroid/graphics/Typeface;
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    .line 107
    .local v0, "fontManager":Lcom/diotek/ime/framework/common/FontManager;
    const-string v1, "DROIDSANS"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method protected getEmoticonWidth()I
    .locals 6

    .prologue
    .line 80
    iget-object v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09061e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 81
    .local v1, "emoticonWidth":I
    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 83
    :try_start_0
    const-string v2, "emoticon_floating_icon_width"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    float-to-int v1, v2

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v1, v2

    goto :goto_0
.end method

.method protected getItemBackgroundResId()I
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f02003a

    .line 191
    .local v0, "itemBackgroundResId":I
    return v0
.end method

.method public getItemMarginBottom()I
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090629

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 224
    .local v0, "itemMargin":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 225
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090634

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 227
    :cond_0
    return v0
.end method

.method public getItemMarginLeft()I
    .locals 3

    .prologue
    .line 196
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090626

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 197
    .local v0, "itemMargin":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 198
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090631

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 200
    :cond_0
    return v0
.end method

.method public getItemMarginRight()I
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090628

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 215
    .local v0, "itemMargin":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 216
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090633

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 218
    :cond_0
    return v0
.end method

.method public getItemMarginTop()I
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090627

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 206
    .local v0, "itemMargin":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 207
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090632

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 209
    :cond_0
    return v0
.end method

.method public getItemPaddingBottom()I
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "itemPadding":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090625

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 185
    return v0
.end method

.method public getItemPaddingLeft()I
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090624

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 159
    .local v0, "itemPadding":I
    return v0
.end method

.method public getItemPaddingRight()I
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090624

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 175
    .local v0, "itemPadding":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090630

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 178
    :cond_0
    return v0
.end method

.method public getItemPaddingTop()I
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090622

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 166
    .local v0, "itemPadding":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090623

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 169
    :cond_0
    return v0
.end method

.method protected getLastestEmoticonCount()I
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 62
    .local v0, "lastestEmoticonCount":I
    return v0
.end method

.method protected getListLayoutHeight()I
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "layoutHeight":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 36
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090635

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 45
    :goto_0
    return v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09063a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09062a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getPaddingBottom()I
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "paddingBottom":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090639

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 153
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09062f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "paddingLeft":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090636

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 120
    :goto_0
    return v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09063b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09062c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getPaddingRight()I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "paddingRight":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090638

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 142
    :goto_0
    return v0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09062e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "paddingTop":I
    iget v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->inputMethod:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090637

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 131
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09062d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method
