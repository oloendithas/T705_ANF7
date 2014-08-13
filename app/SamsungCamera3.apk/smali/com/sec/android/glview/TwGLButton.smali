.class public Lcom/sec/android/glview/TwGLButton;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;,
        Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;
    }
.end annotation


# static fields
.field private static final DRAW_HIGHLIGHT_DELAY:I = 0xc8

.field private static final DRAW_HIGHLIGHT_MINIMUM_DURATION:I = 0xc8

.field private static final HIGHLIGHTTYPE_COLOR:I = 0x2

.field private static final HIGHLIGHTTYPE_NONE:I = 0x0

.field private static final HIGHLIGHTTYPE_RESOURCE:I = 0x1

.field private static final HIGHLIGHT_FADE_OUT_ANIM_DURATION:I = 0x190

.field private static final STATE_PRESSED_MINIMUM_DURATION:I = 0xc8


# instance fields
.field protected mButtonHeight:F

.field protected mButtonWidth:F

.field protected mDimBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mDimId:I

.field protected mDrawHighlight:Z

.field protected mHighlight:Lcom/sec/android/glview/TwGLTexture;

.field protected mHighlightFadeOut:Z

.field protected mHighlightId:I

.field protected mHighlightType:I

.field protected mImageData:[B

.field protected mImagePath:Ljava/lang/String;

.field protected mIsNinePatchButton:Z

.field protected mMute:Z

.field protected mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mNormalId:I

.field protected mNormalTextColor:I

.field protected mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

.field protected mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

.field protected mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

.field protected mPressed:Z

.field protected mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

.field protected mPressedId:I

.field protected mPressedTextColor:I

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F

.field protected mSelected:Z

.field protected mShowHighlight:Z

.field protected mShowText:Z

.field protected mText:Lcom/sec/android/glview/TwGLText;

.field private resetButtonPressed:Ljava/lang/Runnable;

.field private resetDrawHighlight:Ljava/lang/Runnable;

.field private setButtonPressed:Ljava/lang/Runnable;

.field private setDrawHighlight:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 604
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 606
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 607
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 609
    if-eqz p6, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 611
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 617
    :cond_0
    :goto_0
    if-eqz p7, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 619
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 624
    :cond_1
    :goto_1
    if-eqz p8, :cond_2

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 626
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 632
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 636
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 637
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 639
    :cond_5
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 640
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 641
    iput p8, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 642
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 643
    return-void

    .line 614
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    goto/16 :goto_0

    .line 621
    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_1

    .line 628
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p8}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "npHighlightId"    # I

    .prologue
    .line 426
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 67
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v1, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v1, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v1, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 428
    if-eqz p6, :cond_0

    .line 429
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 431
    :cond_0
    if-eqz p7, :cond_1

    .line 432
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 433
    :cond_1
    if-eqz p8, :cond_2

    .line 434
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 437
    :cond_2
    if-eqz p9, :cond_3

    .line 438
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 439
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 441
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 442
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 444
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 445
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 447
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 448
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 450
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 451
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 452
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 453
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 454
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 455
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 456
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 459
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 460
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 461
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 462
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 463
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 464
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 465
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 466
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 470
    :cond_d
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 471
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 472
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 473
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 474
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 475
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "normalId"    # I
    .param p7, "pressedId"    # I
    .param p8, "dimmedId"    # I
    .param p9, "highlightColor"    # I
    .param p10, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 540
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 67
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v1, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v1, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v1, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 542
    if-eqz p6, :cond_0

    .line 543
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 545
    :cond_0
    if-eqz p7, :cond_1

    .line 546
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p7

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 547
    :cond_1
    if-eqz p8, :cond_2

    .line 548
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p8

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 551
    :cond_2
    if-eqz p9, :cond_3

    .line 552
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 553
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000

    const/4 v9, 0x3

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p9

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 555
    :cond_3
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 556
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 558
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 559
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 561
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 562
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 564
    :cond_5
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 565
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 566
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 567
    :cond_7
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 568
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 569
    :cond_8
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_9

    .line 570
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayout(FF)V

    .line 573
    :cond_9
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_a

    .line 574
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 575
    :cond_a
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_b

    .line 576
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 577
    :cond_b
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_c

    .line 578
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 579
    :cond_c
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_d

    .line 580
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 584
    :cond_d
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 585
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 586
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 587
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 588
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 589
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 7
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    .line 229
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 231
    if-eqz p6, :cond_0

    .line 232
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 233
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 234
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 240
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 242
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v1, 0x0

    .line 301
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 303
    if-eqz p6, :cond_0

    .line 304
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    const/4 v7, 0x1

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 305
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 306
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 312
    :cond_1
    iput-object p6, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 313
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 314
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 377
    if-eqz p4, :cond_0

    .line 378
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 379
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 380
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 382
    :cond_0
    if-eqz p5, :cond_1

    .line 383
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 384
    :cond_1
    if-eqz p6, :cond_2

    .line 385
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 386
    :cond_2
    if-eqz p7, :cond_3

    .line 387
    iput v7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 388
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 389
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 394
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 397
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 399
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 400
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 401
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 402
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 405
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 406
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 407
    iput p6, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 408
    iput p7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 409
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 410
    return-void

    .line 391
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V
    .locals 10
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "normalId"    # I
    .param p5, "pressedId"    # I
    .param p6, "dimmedId"    # I
    .param p7, "highlightColor"    # I
    .param p8, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v1, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v1, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v1, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v1, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v1, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 491
    if-eqz p4, :cond_0

    .line 492
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 493
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 494
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 496
    :cond_0
    if-eqz p5, :cond_1

    .line 497
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 498
    :cond_1
    if-eqz p6, :cond_2

    .line 499
    new-instance v1, Lcom/sec/android/glview/TwGLResourceTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p6

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 500
    :cond_2
    if-eqz p7, :cond_3

    .line 501
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 502
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_8

    .line 503
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v5

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    const/high16 v8, 0x3f800000

    const/4 v9, 0x3

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 508
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 510
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_5

    .line 511
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 512
    :cond_5
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_6

    .line 513
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 514
    :cond_6
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_7

    .line 515
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 516
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 519
    :cond_7
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 520
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 521
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 522
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 523
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 524
    return-void

    .line 505
    :cond_8
    new-instance v1, Lcom/sec/android/glview/TwGLRectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000

    const/4 v9, 0x3

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 205
    if-eqz p4, :cond_0

    .line 206
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v3, v3, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 207
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 208
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 214
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImagePath:Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 277
    if-eqz p4, :cond_0

    .line 278
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v3, v3, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 279
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 280
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 286
    :cond_1
    iput-object p4, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 287
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 288
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 8
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "normalId"    # I
    .param p3, "pressedId"    # I
    .param p4, "dimmedId"    # I
    .param p5, "npHighlightId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v3, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 328
    if-eqz p2, :cond_0

    .line 329
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 330
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 331
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 333
    :cond_0
    if-eqz p3, :cond_1

    .line 334
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 335
    :cond_1
    if-eqz p4, :cond_2

    .line 336
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 337
    :cond_2
    if-eqz p5, :cond_3

    .line 338
    iput v7, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 339
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 340
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move-object v1, p1

    move v3, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 345
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 352
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 353
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 356
    :cond_7
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 357
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 358
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 359
    iput p5, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 360
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 361
    return-void

    .line 342
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "imagePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 183
    if-eqz p2, :cond_0

    .line 184
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 185
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 186
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 5
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "image"    # [B

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 67
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 70
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 73
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 76
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 79
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 99
    iput v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 108
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 111
    iput v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    .line 117
    new-instance v0, Lcom/sec/android/glview/TwGLButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$1;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    .line 128
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 130
    new-instance v0, Lcom/sec/android/glview/TwGLButton$2;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$2;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/sec/android/glview/TwGLButton$3;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$3;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    .line 151
    iput-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 153
    new-instance v0, Lcom/sec/android/glview/TwGLButton$4;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$4;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Lcom/sec/android/glview/TwGLButton$5;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLButton$5;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    .line 253
    if-eqz p2, :cond_0

    .line 254
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v2, v2, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 255
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 256
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 262
    :cond_1
    iput-object p2, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 263
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLButton;->initButton()V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLButton;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLButton;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLButton;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    return-void
.end method

.method private initButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 646
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 647
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setClickable(Z)V

    .line 648
    return-void
.end method

.method private setButtonPressed(Z)V
    .locals 2
    .param p1, "isPressed"    # Z

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1469
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;->onButtonPressed(Lcom/sec/android/glview/TwGLView;Z)V

    .line 1472
    :cond_0
    return-void
.end method

.method private setDrawHighlight(Z)V
    .locals 2
    .param p1, "draw"    # Z

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1476
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-ne v0, p1, :cond_1

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    .line 1480
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 786
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 790
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 794
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 798
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 801
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 802
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 804
    :cond_4
    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mImageData:[B

    .line 805
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 806
    return-void
.end method

.method public getHoverPopupWindow()Lcom/sec/android/glview/HoverPopupWindow;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1505
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLView;->mHasExtraDescription:Z

    if-ne v1, v2, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-object v0

    .line 1508
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eq v1, v2, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1512
    new-instance v0, Lcom/sec/android/glview/HoverPopupWindow;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getHoverBaseView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/glview/HoverPopupWindow;-><init>(Landroid/view/View;Lcom/sec/android/glview/TwGLView;I)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    .line 1514
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    if-eqz v0, :cond_2

    .line 1515
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupGravity:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupGravity(I)V

    .line 1516
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    iget v1, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetX:I

    iget v2, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopupOffsetY:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1517
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1521
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mHoverPopup:Lcom/sec/android/glview/HoverPopupWindow;

    goto :goto_0
.end method

.method public getLoaded()Z
    .locals 2

    .prologue
    .line 846
    const/4 v0, 0x1

    .line 847
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    const/4 v0, 0x0

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    .line 852
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_1

    .line 853
    const/4 v0, 0x0

    .line 855
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 856
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_2

    .line 857
    const/4 v0, 0x0

    .line 859
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    .line 860
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_3

    .line 861
    const/4 v0, 0x0

    .line 863
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    .line 864
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    if-nez v1, :cond_4

    .line 865
    const/4 v0, 0x0

    .line 868
    :cond_4
    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 1306
    const/4 v1, 0x0

    .local v1, "width":F
    const/4 v0, 0x0

    .line 1308
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 1309
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 1310
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1312
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1313
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1316
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1317
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1318
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1320
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    .line 1321
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1324
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_5

    .line 1325
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1326
    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1328
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 1329
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1332
    :cond_5
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_7

    .line 1333
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_6

    .line 1334
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1336
    :cond_6
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_7

    .line 1337
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1341
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 1342
    return-void
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 1491
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    return v0
.end method

.method public keyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1067
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public keyUpEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1072
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public mStringName()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getStringName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 718
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
    .line 704
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 933
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 934
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 941
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 943
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 944
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 946
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 947
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onAlphaUpdated()V

    .line 949
    :cond_4
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    .prologue
    .line 876
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 878
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 904
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    :cond_1
    monitor-exit p0

    return-void

    .line 879
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 882
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    if-eqz v0, :cond_7

    .line 883
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_5

    .line 884
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 886
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 887
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 888
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 891
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mDrawHighlight:Z

    if-eqz v0, :cond_a

    .line 892
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    if-eqz v0, :cond_8

    .line 893
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 895
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 896
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 897
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 900
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onKeyDownEvent(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1077
    sparse-switch p1, :sswitch_data_0

    .line 1096
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyDownEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 1082
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setPressed(Z)V

    goto :goto_0

    .line 1087
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1089
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1090
    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1091
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v0, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1077
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

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1101
    sparse-switch p1, :sswitch_data_0

    .line 1125
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->onKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 1104
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1106
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1107
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1108
    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1109
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long v4, v9, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1113
    :goto_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_2

    .line 1114
    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v2, :cond_1

    .line 1115
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1116
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1118
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    .line 1120
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    if-eqz v2, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mOnKeyListener:Lcom/sec/android/glview/TwGLView$OnKeyListener;

    invoke-interface {v1, p0, p2}, Lcom/sec/android/glview/TwGLView$OnKeyListener;->onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1111
    :cond_3
    invoke-direct {p0, v8}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    goto :goto_1

    .line 1101
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
    .line 914
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 915
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 924
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 928
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onLayoutUpdated()V

    .line 930
    :cond_4
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 813
    const/4 v0, 0x1

    .line 815
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 821
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_2

    .line 822
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 824
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v1, :cond_3

    .line 825
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_4

    .line 828
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 831
    :cond_4
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1459
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1461
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1462
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1464
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x3

    const-wide/16 v10, 0xc8

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 960
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isDim()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 961
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v3, :cond_0

    .line 962
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 963
    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 965
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 967
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 970
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 1062
    :cond_2
    :goto_0
    return v2

    .line 975
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 976
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 977
    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    .line 978
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 980
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v3, :cond_4

    .line 981
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 982
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 985
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_a

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v3, :cond_a

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/glview/TwGLView;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_6

    .line 987
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 988
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v3, :cond_6

    .line 989
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1041
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_11

    .line 1042
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1043
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v3, :cond_7

    .line 1044
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1045
    :cond_7
    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1046
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v3, :cond_8

    .line 1047
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_8

    .line 1048
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1049
    .local v1, "anim":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1050
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3, v1, v9}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1051
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1052
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 1055
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_8
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    if-eqz v3, :cond_9

    .line 1056
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    invoke-interface {v3, v9}, Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;->onButtonHighlightChanged(Z)V

    .line 1058
    :cond_9
    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    goto/16 :goto_0

    .line 991
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    if-eqz v3, :cond_6

    .line 992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    add-long/2addr v3, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_f

    .line 993
    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 994
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->resetDrawHighlight:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long v5, v10, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 999
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    add-long/2addr v3, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_10

    .line 1000
    invoke-direct {p0, v2}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    .line 1001
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->resetButtonPressed:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    sub-long v5, v10, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    :goto_2
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1007
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    if-eqz v3, :cond_b

    .line 1008
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    .line 1009
    :cond_b
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v3, :cond_c

    .line 1010
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightFadeOut:Z

    if-eqz v3, :cond_c

    .line 1011
    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 1012
    .restart local v1    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1013
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3, v1, v9}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 1014
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1015
    iget-object v3, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v4, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightAnimationEventListener:Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 1018
    .end local v1    # "anim":Landroid/view/animation/Animation;
    :cond_c
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v3, :cond_2

    .line 1019
    iget-boolean v3, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    if-nez v3, :cond_d

    .line 1020
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1021
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1023
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_d
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1024
    new-instance v3, Lcom/sec/android/glview/TwGLButton$6;

    invoke-direct {v3, p0}, Lcom/sec/android/glview/TwGLButton$6;-><init>(Lcom/sec/android/glview/TwGLButton;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1037
    :cond_e
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v3, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto/16 :goto_0

    .line 996
    :cond_f
    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    goto/16 :goto_1

    .line 1003
    :cond_10
    invoke-direct {p0, v9}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    goto/16 :goto_2

    .line 1062
    :cond_11
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public declared-synchronized setButtonResources(IIII)V
    .locals 7
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "npHighlightId"    # I

    .prologue
    .line 1137
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1138
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1139
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1141
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1143
    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    .line 1144
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1145
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1147
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1155
    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    .line 1156
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1157
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1158
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1159
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1167
    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    .line 1168
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1169
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1170
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 1171
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1172
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1182
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1183
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1186
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1187
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1188
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1190
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1192
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1194
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1195
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    :cond_b
    monitor-exit p0

    return-void

    .line 1148
    :cond_c
    if-nez p2, :cond_3

    .line 1149
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1150
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1160
    :cond_d
    if-nez p3, :cond_5

    .line 1161
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1162
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 1163
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    goto/16 :goto_1

    .line 1173
    :cond_e
    if-nez p4, :cond_7

    .line 1174
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1176
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1177
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setButtonResources(IIIILandroid/graphics/Bitmap$Config;)V
    .locals 9
    .param p1, "normalId"    # I
    .param p2, "pressedId"    # I
    .param p3, "dimmedId"    # I
    .param p4, "highlightColor"    # I
    .param p5, "highlightConf"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 1207
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    if-eq v0, p1, :cond_1

    .line 1208
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalId:I

    .line 1209
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1211
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1213
    :cond_1
    if-eqz p2, :cond_c

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    if-eq v0, p2, :cond_c

    .line 1214
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1215
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1217
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1225
    :cond_3
    :goto_0
    if-eqz p3, :cond_d

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    if-eq v0, p3, :cond_d

    .line 1226
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1227
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1228
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1229
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    .line 1237
    :cond_5
    :goto_1
    if-eqz p4, :cond_e

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    if-eq v0, p4, :cond_e

    .line 1238
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1239
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    .line 1241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1242
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/high16 v7, 0x3f800000

    const/4 v8, 0x3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    .line 1252
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1253
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1254
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1256
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1257
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1258
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1260
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1261
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 1262
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1264
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_b

    .line 1265
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    :cond_b
    monitor-exit p0

    return-void

    .line 1218
    :cond_c
    if-nez p2, :cond_3

    .line 1219
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedId:I

    .line 1220
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1221
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1230
    :cond_d
    if-nez p3, :cond_5

    .line 1231
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimId:I

    .line 1232
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_5

    .line 1233
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    goto/16 :goto_1

    .line 1243
    :cond_e
    if-nez p4, :cond_7

    .line 1244
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightId:I

    .line 1245
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlightType:I

    .line 1246
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    .line 1247
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 1248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setDim(Z)V

    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    .line 777
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 1415
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1416
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1417
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_4

    .line 1418
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1421
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1428
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 1430
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1431
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setHeight(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    :cond_4
    monitor-exit p0

    return-void

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHighlightVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 768
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowHighlight:Z

    .line 769
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 952
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mMute:Z

    .line 953
    return-void
.end method

.method public setOnButtonHighlightChangedListener(Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mOnHighlightChangedListener:Lcom/sec/android/glview/TwGLButton$OnButtonHighlightChangedListener;

    .line 149
    return-void
.end method

.method public setOnButtonPressedListener(Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mOnButtonPressedListener:Lcom/sec/android/glview/TwGLButton$OnButtonPressedListener;

    .line 172
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    .line 1439
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 1441
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1443
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1445
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 1495
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mPressed:Z

    .line 1496
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1497
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setButtonPressed(Z)V

    .line 1498
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1276
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1277
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1279
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-nez v2, :cond_0

    .line 1280
    const/4 v2, 0x0

    .line 1296
    :goto_0
    return v2

    .line 1282
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 1283
    .local v1, "buttonImageWidth":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1285
    .local v0, "buttonImageHeight":F
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_4

    .line 1286
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_2

    .line 1287
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1289
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_3

    .line 1290
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1292
    :cond_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_4

    .line 1293
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1296
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 1486
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mSelected:Z

    .line 1487
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V

    .line 1488
    return-void
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v2, 0x40000000

    .line 1346
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1347
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1348
    iput p2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    .line 1350
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_5

    .line 1351
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1358
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1360
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1361
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 1363
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1364
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 1387
    :cond_4
    :goto_0
    return-void

    .line 1369
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1370
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    .line 1372
    :cond_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1373
    iget v0, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    .line 1375
    :cond_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_8

    .line 1376
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1378
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_9

    .line 1379
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1381
    :cond_9
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_a

    .line 1382
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mResourceOffsetY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1384
    :cond_a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_4

    .line 1385
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .param p1, "text"    # Lcom/sec/android/glview/TwGLText;

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 670
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 673
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 656
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 657
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 658
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 660
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
    .line 690
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v6, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move-object v7, p1

    move v8, p2

    move v9, p3

    move/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 691
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 692
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setBold(Z)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 694
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 695
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 696
    iput p4, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 697
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

    .line 681
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    iget v5, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    move v3, v2

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    .line 682
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v10, v10}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 683
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 685
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mNormalTextColor:I

    .line 686
    iput p3, p0, Lcom/sec/android/glview/TwGLButton;->mPressedTextColor:I

    .line 687
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 748
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 751
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 4
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 728
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v2, :cond_0

    .line 729
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    sub-float v1, v2, p1

    .line 730
    .local v1, "width":F
    iget v2, p0, Lcom/sec/android/glview/TwGLButton;->mButtonHeight:F

    sub-float v0, v2, p2

    .line 732
    .local v0, "height":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 739
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_0
    :goto_0
    return-void

    .line 735
    .restart local v0    # "height":F
    .restart local v1    # "width":F
    :cond_1
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    .line 736
    iget-object v2, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .param p1, "visibility"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLButton;->mShowText:Z

    .line 760
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1392
    iput p1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    .line 1393
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLButton;->mIsNinePatchButton:Z

    if-eqz v0, :cond_4

    .line 1394
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mNormalBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1397
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mPressedBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_2

    .line 1401
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mDimBackground:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mHighlight:Lcom/sec/android/glview/TwGLTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 1406
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_4

    .line 1407
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton;->mText:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/glview/TwGLButton;->mButtonWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    :cond_4
    monitor-exit p0

    return-void

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
