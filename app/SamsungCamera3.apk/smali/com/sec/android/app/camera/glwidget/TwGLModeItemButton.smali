.class public Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLModeItemButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$OnButtonHighlightChangedListener;
    }
.end annotation


# static fields
.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static final DRAW_HIGHLIGHT_MINIMUM_DURATION:I = 0xc8


# instance fields
.field private mButtonHeight:F

.field private mButtonWidth:F

.field private mDrawHighlight:Z

.field private final mIsNinePatchButton:Z

.field private mMute:Z

.field private mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

.field private mNormalId:I

.field private mNormalTextColor:I

.field private mOnHighlightChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$OnButtonHighlightChangedListener;

.field private mPressed:Z

.field private mPressedTextColor:I

.field private mResourceOffsetX:F

.field private mResourceOffsetY:F

.field private mShowText:Z

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private final resetDrawHighlight:Ljava/lang/Runnable;

.field private final setDrawHighlight:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;I)V
    .locals 6
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "normalId"    # I

    .prologue
    const/high16 v5, 0x40000000

    const/4 v4, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 118
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 55
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalTextColor:I

    .line 58
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressedTextColor:I

    .line 61
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    .line 64
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    .line 67
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 70
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mMute:Z

    .line 73
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    .line 75
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mDrawHighlight:Z

    .line 81
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    .line 84
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    .line 86
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mIsNinePatchButton:Z

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mOnHighlightChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$OnButtonHighlightChangedListener;

    .line 90
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 96
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 120
    if-eqz p7, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p6}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v1, p1, v3, v3, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 128
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    .line 129
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 132
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 135
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    .line 137
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 147
    :cond_5
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalId:I

    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->initButton()V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    return-void
.end method

.method private initButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 154
    return-void
.end method

.method private setDrawHighlight(Z)V
    .locals 2
    .param p1, "draw"    # Z

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 632
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mDrawHighlight:Z

    if-ne v0, p1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 635
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mDrawHighlight:Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 241
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 245
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 248
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 249
    return-void
.end method

.method public getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    if-eqz v1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-object v0

    .line 651
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    if-nez v1, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 656
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 658
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupGravity(I)V

    .line 660
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 661
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    goto :goto_0
.end method

.method public getLoaded()Z
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x1

    .line 281
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    const/4 v0, 0x0

    .line 290
    :cond_1
    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 542
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 544
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 545
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 546
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    .line 548
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 549
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    .line 552
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 554
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 556
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 561
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setSize(FF)V

    .line 562
    return-void
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPressed()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    return v0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public mStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getStringName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mText()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onAlphaUpdated()V

    .line 341
    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 314
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :cond_1
    monitor-exit p0

    return-void

    .line 302
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 306
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mDrawHighlight:Z

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 435
    sparse-switch p1, :sswitch_data_0

    .line 452
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 440
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setPressed()V

    goto :goto_0

    .line 445
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 449
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 435
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v9, 0xc8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    sparse-switch p1, :sswitch_data_0

    .line 479
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 460
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 463
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    add-long/2addr v3, v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 464
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    .line 465
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->resetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long v5, v9, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    :goto_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v3, :cond_2

    .line 470
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mMute:Z

    if-nez v3, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 472
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 474
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v3, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 477
    :cond_2
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v3, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    move v2, v1

    goto :goto_0

    .line 467
    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    goto :goto_1

    .line 457
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdated()V

    .line 331
    :cond_1
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x1

    .line 258
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 265
    :cond_1
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 628
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const-wide/16 v9, 0xc8

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    if-eqz v2, :cond_0

    .line 354
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 355
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    .line 420
    :cond_0
    :goto_0
    return v1

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 360
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 361
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressedTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    if-eqz v2, :cond_7

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_4

    .line 367
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    if-eqz v2, :cond_4

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 406
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 407
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    if-eqz v2, :cond_5

    .line 410
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 412
    :cond_5
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    .line 414
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mOnHighlightChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$OnButtonHighlightChangedListener;

    if-eqz v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mOnHighlightChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$OnButtonHighlightChangedListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged()V

    .line 417
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto :goto_0

    .line 371
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    if-eqz v2, :cond_4

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_b

    .line 373
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->resetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v4, v9, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    :goto_1
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    if-eqz v2, :cond_8

    .line 381
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalTextColor:I

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 383
    :cond_8
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    .line 384
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mMute:Z

    if-nez v2, :cond_9

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 386
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 388
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_9
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v2

    if-nez v2, :cond_a

    .line 389
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 402
    :cond_a
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto/16 :goto_0

    .line 376
    :cond_b
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    goto :goto_1

    .line 420
    :cond_c
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public declared-synchronized setButtonResources(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "normalId"    # I
    .param p3, "useCache"    # Z

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalId:I

    .line 491
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 495
    :cond_0
    if-eqz p3, :cond_3

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getCachedBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 501
    :cond_1
    if-eqz v0, :cond_2

    .line 502
    new-instance v1, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 504
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_2
    monitor-exit p0

    return-void

    .line 495
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setDim(Z)V
    .locals 0
    .param p1, "dim"    # Z

    .prologue
    .line 231
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    .line 232
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 609
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mMute:Z

    .line 345
    return-void
.end method

.method setPressed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 639
    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressed:Z

    .line 640
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V

    .line 641
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 520
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    .line 521
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    .line 523
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v2, :cond_0

    .line 524
    const/4 v2, 0x0

    .line 532
    :goto_0
    return v2

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 527
    .local v1, "buttonImageWidth":F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 529
    .local v0, "buttonImageHeight":F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_2

    .line 530
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 532
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v2, 0x40000000

    .line 566
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 567
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    .line 568
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 581
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 584
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 589
    :cond_2
    return-void
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .param p1, "text"    # Lcom/sec/android/glview/TwGLText;

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    .line 179
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    .line 166
    return-void
.end method

.method public setText(Ljava/lang/String;FIIZZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "normalColor"    # I
    .param p4, "pressedColor"    # I
    .param p5, "shadow"    # Z
    .param p6, "bold"    # Z

    .prologue
    .line 196
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setBold(Z)V

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    .line 201
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalTextColor:I

    .line 202
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressedTextColor:I

    .line 203
    return-void
.end method

.method public setText(Ljava/lang/String;FIZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "color"    # I
    .param p4, "shadow"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mShowText:Z

    .line 191
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mNormalTextColor:I

    .line 192
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mPressedTextColor:I

    .line 193
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 594
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->mButtonWidth:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
