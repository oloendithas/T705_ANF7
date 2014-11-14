.class public Landroid/webkitsec/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field static final GRANULARITY_CHARACTER:I = 0x0

.field static final GRANULARITY_IMAGE:I = 0x8

.field static final GRANULARITY_PARAGRAPH:I = 0x4

.field static final GRANULARITY_WORD:I = 0x1

.field static final HANDLE_CHAR_LEFT:I = 0x1

.field static final HANDLE_CHAR_RIGHT:I = 0x2

.field static final HANDLE_NONE:I = 0x0

.field static final HANDLE_PARA_BOTTOM:I = 0x5

.field static final HANDLE_PARA_LEFT:I = 0x3

.field static final HANDLE_PARA_RIGHT:I = 0x4

.field static final HANDLE_PARA_TOP:I = 0x6

.field private static MIN_SCALE_LEVEL:F = 0.0f

.field private static final STATE_CHECK_REVERSED:I = 0x5

.field private static final STATE_CHECK_UPSIDEDOWN:I = 0xa

.field private static final STATE_FORCE_REVERSED:I = 0x4

.field private static final STATE_FORCE_UPSIDEDOWN:I = 0x8

.field private static final STATE_NORMAL:I = 0x0

.field private static final STATE_RESET_MASK:I = 0x3

.field private static final STATE_REVERSED:I = 0x1

.field private static final STATE_UPSIDEDOWN:I = 0x2

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private final DEBUG:Z

.field final DRAW_HIGHLIGHT:Z

.field private HORIZONTAL_TRANSPARENT_RATE:F

.field private final LOGTAG:Ljava/lang/String;

.field private final LOGV:Z

.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mHandleCrossing:Z

.field private mLeftHandleId:I

.field private mLeftHandleState:I

.field private mOrigCharHandleHeight:I

.field private mOrigCharHandleWidth:I

.field private mOrigParaHandleHeight:I

.field private mOrigParaHandleWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mRightHandleId:I

.field private mRightHandleState:I

.field private mSelectedtext:Ljava/lang/String;

.field private mSeletionCursor:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const/high16 v0, 0x3f800000

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 93
    sput v1, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    .line 94
    sput v1, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webviewclassic"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v3, "WebSelectionControls"

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->LOGTAG:Ljava/lang/String;

    .line 45
    iput-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->LOGV:Z

    .line 46
    sget v3, Landroid/webkitsec/DebugFlags;->DEBUG_SETTING:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9a

    const/4 v3, 0x1

    :goto_12
    iput-boolean v3, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    .line 48
    iput-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->DRAW_HIGHLIGHT:Z

    .line 83
    iput-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 86
    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 87
    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 88
    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 89
    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 96
    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    .line 97
    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    .line 98
    iput-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    .line 105
    const v3, 0x3e0f5c29

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    .line 944
    iput-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 111
    iput-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 112
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 113
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 114
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 115
    iput-object p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 116
    iput-object p1, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080715

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    .local v1, "SController":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080719

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "PController":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 126
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0x1e0

    if-eq v3, v4, :cond_78

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xd5

    if-eq v3, v4, :cond_78

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_7d

    .line 127
    :cond_78
    const v3, 0x3ca3d70a

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    .line 132
    :cond_7d
    if-eqz v1, :cond_8b

    .line 133
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    .line 136
    :cond_8b
    if-eqz v0, :cond_99

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    .line 138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    .line 140
    :cond_99
    return-void

    .end local v0    # "PController":Landroid/graphics/Bitmap;
    .end local v1    # "SController":Landroid/graphics/Bitmap;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_9a
    move v3, v4

    .line 46
    goto/16 :goto_12
.end method

.method private DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rtSelection"    # Landroid/graphics/Rect;

    .prologue
    .line 718
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 719
    .local v0, "path":Landroid/graphics/Path;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 720
    .local v6, "paint":Landroid/graphics/Paint;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 721
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 722
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 723
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 724
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x2

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 725
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 726
    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 727
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 728
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 729
    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 731
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 732
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Start"    # Landroid/graphics/Rect;
    .param p3, "End"    # Landroid/graphics/Rect;
    .param p4, "pressed"    # Z

    .prologue
    .line 740
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, p2, v7, v8}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v5

    .line 741
    .local v5, "leftPos":Landroid/graphics/Point;
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-direct {p0, p3, v7, v8}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v6

    .line 745
    .local v6, "rightPos":Landroid/graphics/Point;
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 746
    .local v1, "SController":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 748
    .local v0, "EController":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8c

    if-eqz v0, :cond_8c

    if-eqz v5, :cond_8c

    if-eqz v6, :cond_8c

    .line 750
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->isSelectionInEditField()Z

    move-result v3

    .line 751
    .local v3, "isEditField":Z
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p2, Landroid/graphics/Rect;->left:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    iget v10, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x5

    iget v11, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    .line 753
    .local v4, "isInEditfield":Z
    if-eqz v3, :cond_4a

    if-nez p4, :cond_4a

    if-eqz v4, :cond_98

    :cond_4a
    const/4 v2, 0x1

    .line 756
    .local v2, "drawHandle":Z
    :goto_4b
    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget v9, v5, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 757
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 760
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v7, v7, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    iget v8, p3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, -0x5

    iget v9, p3, Landroid/graphics/Rect;->top:I

    iget v10, p3, Landroid/graphics/Rect;->right:I

    iget v11, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    .line 762
    if-eqz v3, :cond_77

    if-nez p4, :cond_77

    if-eqz v4, :cond_9a

    :cond_77
    const/4 v2, 0x1

    .line 764
    :goto_78
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sget v10, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/graphics/Point;->y:I

    sget v11, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 765
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    .end local v2    # "drawHandle":Z
    .end local v3    # "isEditField":Z
    .end local v4    # "isInEditfield":Z
    :cond_8c
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    if-nez v7, :cond_97

    .line 770
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    .line 771
    :cond_97
    return-void

    .line 753
    .restart local v3    # "isEditField":Z
    .restart local v4    # "isInEditfield":Z
    :cond_98
    const/4 v2, 0x0

    goto :goto_4b

    .line 762
    .restart local v2    # "drawHandle":Z
    :cond_9a
    const/4 v2, 0x0

    goto :goto_78
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "type"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "X"    # I
    .param p6, "Y"    # I

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 780
    .local v0, "handle":Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_a2

    .line 797
    :pswitch_4
    const-string v3, "WebSelectionControls"

    const-string v4, "DrawSelectionParaController : INVALID type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 782
    :pswitch_c
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080719

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 802
    :goto_19
    div-int/lit8 v3, p3, 0x2

    sub-int v1, p5, v3

    .line 803
    .local v1, "x":I
    div-int/lit8 v3, p4, 0x2

    sub-int v2, p6, v3

    .line 806
    .local v2, "y":I
    if-gez v1, :cond_6e

    .line 808
    int-to-double v3, p3

    const-wide v5, 0x3fc3333333333333L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v1, v3

    .line 813
    :cond_2c
    :goto_2c
    if-gez v2, :cond_88

    .line 815
    int-to-double v3, p4

    const-wide v5, 0x3fc999999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    neg-int v2, v3

    .line 820
    :cond_37
    :goto_37
    if-eqz v0, :cond_b

    .line 822
    add-int v3, v1, p3

    add-int v4, v2, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 785
    .end local v1    # "x":I
    .end local v2    # "y":I
    :pswitch_44
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080717

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 786
    goto :goto_19

    .line 788
    :pswitch_52
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080718

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 789
    goto :goto_19

    .line 791
    :pswitch_60
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080716

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 792
    goto :goto_19

    .line 809
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_6e
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v3

    sub-int/2addr v3, p3

    if-le v1, v3, :cond_2c

    .line 811
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v3

    int-to-double v4, p3

    const-wide v6, 0x3feb333333333333L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v1, v3, v4

    goto :goto_2c

    .line 816
    :cond_88
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v3

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_37

    .line 817
    iget-object v3, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v3

    int-to-double v4, p4

    const-wide v6, 0x3fe999999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v2, v3, v4

    goto :goto_37

    .line 780
    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_4
        :pswitch_4
        :pswitch_44
        :pswitch_52
        :pswitch_60
        :pswitch_c
    .end packed-switch
.end method

.method private drawOutlineChar(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rtStart"    # Landroid/graphics/Rect;
    .param p3, "rtEnd"    # Landroid/graphics/Rect;
    .param p4, "pressed"    # Z

    .prologue
    .line 696
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 697
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 698
    .local v1, "rect1":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 700
    .local v2, "rect2":Landroid/graphics/Rect;
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 701
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p3, Landroid/graphics/Rect;->top:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, 0x2

    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 703
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 704
    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 705
    if-nez p4, :cond_40

    .line 706
    const/16 v3, 0xff

    const/16 v4, 0x58

    const/16 v5, 0xa5

    const/16 v6, 0xdc

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 707
    :cond_40
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 709
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 710
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 711
    return-void
.end method

.method private getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;
    .registers 16
    .param p1, "selection"    # Landroid/graphics/Rect;
    .param p2, "handleType"    # I
    .param p3, "update"    # Z

    .prologue
    const v11, 0x1080715

    const v10, 0x1080714

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000

    const/4 v5, 0x1

    .line 828
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 830
    .local v3, "pos":Landroid/graphics/Point;
    if-ne v5, p2, :cond_b0

    .line 831
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v8, v9, v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 832
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 839
    :goto_26
    if-eqz p3, :cond_64

    .line 840
    if-ne v5, p2, :cond_cd

    .line 841
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, -0x4

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    .line 842
    iput v10, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    .line 845
    iget v4, v3, Landroid/graphics/Point;->x:I

    if-gez v4, :cond_3c

    .line 846
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    .line 850
    :cond_3c
    const/4 v0, 0x0

    .line 851
    .local v0, "composerHeightLimit":I
    iget-object v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkitsec/HtmlComposerView;

    if-eqz v4, :cond_49

    .line 852
    const/16 v0, 0x24

    .line 853
    :cond_49
    iget v4, v3, Landroid/graphics/Point;->y:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v7

    sub-int/2addr v7, v0

    if-le v4, v7, :cond_64

    .line 854
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v7

    if-ltz v4, :cond_c5

    .line 855
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    .line 883
    .end local v0    # "composerHeightLimit":I
    :cond_64
    :goto_64
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_128

    move v4, v5

    :goto_6b
    iget v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_72

    move v6, v5

    :cond_72
    xor-int v1, v4, v6

    .line 885
    .local v1, "exclusiveUpsideDown":Z
    const/4 v2, 0x0

    .line 886
    .local v2, "forceUpsideDown":Z
    iget-boolean v4, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v4, :cond_82

    .line 887
    if-eqz v2, :cond_82

    const-string v4, "WebSelectionControls"

    const-string v6, "getCharHandlePos: forceUpsideDown is set"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_82
    if-ne v5, p2, :cond_158

    .line 892
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_143

    .line 894
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_92

    if-eqz v2, :cond_12b

    .line 895
    :cond_92
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 896
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 897
    if-eqz p3, :cond_af

    .line 898
    const v4, 0x108071b

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    .line 940
    :cond_af
    :goto_af
    return-object v3

    .line 835
    .end local v1    # "exclusiveUpsideDown":Z
    .end local v2    # "forceUpsideDown":Z
    :cond_b0
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v4, v7

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 836
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_26

    .line 857
    .restart local v0    # "composerHeightLimit":I
    :cond_c5
    const-string v4, "WebSelectionControls"

    const-string v7, "WebViewClassic is too short. Cannot turn LEFT handle upside-down"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 860
    .end local v0    # "composerHeightLimit":I
    :cond_cd
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, -0x4

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    .line 861
    const v4, 0x108071a

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    .line 864
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v8, v9, v8

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_f5

    .line 865
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    .line 869
    :cond_f5
    const/4 v0, 0x0

    .line 870
    .restart local v0    # "composerHeightLimit":I
    iget-object v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    instance-of v4, v4, Landroid/webkitsec/HtmlComposerView;

    if-eqz v4, :cond_102

    .line 871
    const/16 v0, 0x24

    .line 872
    :cond_102
    iget v4, v3, Landroid/graphics/Point;->y:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v4, v7

    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v7

    sub-int/2addr v7, v0

    if-le v4, v7, :cond_64

    .line 873
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v7

    if-ltz v4, :cond_11f

    .line 874
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    goto/16 :goto_64

    .line 876
    :cond_11f
    const-string v4, "WebSelectionControls"

    const-string v7, "WebViewClassic is too short. Cannot turn RIGHT handle upside-down"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .end local v0    # "composerHeightLimit":I
    :cond_128
    move v4, v6

    .line 883
    goto/16 :goto_6b

    .line 902
    .restart local v1    # "exclusiveUpsideDown":Z
    .restart local v2    # "forceUpsideDown":Z
    :cond_12b
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 903
    if-eqz p3, :cond_af

    .line 904
    const v4, 0x108071a

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_af

    .line 908
    :cond_143
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_14b

    if-eqz v2, :cond_af

    .line 909
    :cond_14b
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 910
    if-eqz p3, :cond_af

    .line 911
    iput v11, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleId:I

    goto/16 :goto_af

    .line 916
    :cond_158
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0x5

    if-eqz v4, :cond_19b

    .line 918
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_166

    if-eqz v2, :cond_184

    .line 919
    :cond_166
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v6, v9, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 920
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 921
    if-eqz p3, :cond_af

    .line 922
    iput v11, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_af

    .line 926
    :cond_184
    iget v4, p1, Landroid/graphics/Rect;->left:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->HORIZONTAL_TRANSPARENT_RATE:F

    sub-float v6, v9, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 927
    if-eqz p3, :cond_af

    .line 928
    iput v10, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_af

    .line 932
    :cond_19b
    iget v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_1a3

    if-eqz v2, :cond_af

    .line 933
    :cond_1a3
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 934
    if-eqz p3, :cond_af

    .line 935
    const v4, 0x108071b

    iput v4, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleId:I

    goto/16 :goto_af
.end method

.method private updateHandleSize(IF)V
    .registers 7
    .param p1, "granularity"    # I
    .param p2, "scale"    # F

    .prologue
    const/high16 v3, 0x40000000

    .line 672
    const/4 v0, 0x4

    if-ne p1, v0, :cond_41

    .line 673
    sget v0, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_20

    .line 674
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    .line 675
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    .line 689
    :goto_1f
    return-void

    .line 677
    :cond_20
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    .line 678
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigParaHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_1f

    .line 681
    :cond_41
    sget v0, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_5c

    .line 682
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    .line 683
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v0, v0

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_1f

    .line 685
    :cond_5c
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleWidth:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    .line 686
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    iget v1, p0, Landroid/webkitsec/WebTextSelectionControls;->mOrigCharHandleHeight:I

    int-to-float v1, v1

    sget v2, Landroid/webkitsec/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float/2addr v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    goto :goto_1f
.end method


# virtual methods
.method DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .registers 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "copyRegion"    # Landroid/graphics/Region;
    .param p3, "charRegion"    # Landroid/graphics/Region;
    .param p4, "startRect"    # Landroid/graphics/Rect;
    .param p5, "endRect"    # Landroid/graphics/Rect;
    .param p6, "pressed"    # Z
    .param p7, "selectionGranularity"    # I
    .param p8, "controler"    # I
    .param p9, "showController"    # Z

    .prologue
    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v24

    .line 535
    .local v24, "scalecont":I
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 536
    .local v13, "paintSelected":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 537
    const/16 v4, 0x80

    const/16 v5, 0x96

    const/16 v6, 0xcb

    const/16 v7, 0xfb

    invoke-virtual {v13, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 538
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v22

    .line 541
    .local v22, "scale":F
    const/16 v23, 0x0

    .line 543
    .local v23, "scaleLevel":I
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebTextSelectionControls;->updateHandleSize(IF)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    .line 547
    .local v16, "rectSelection":Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 548
    .local v18, "rectStart":Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 550
    .local v15, "rectEnd":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 552
    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_13e

    .line 553
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 554
    .local v14, "rectContentView":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4, v14}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 556
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 564
    .local v17, "rectSelectionView":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 565
    .local v9, "centerX":I
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 568
    .local v10, "centerY":I
    if-nez p6, :cond_dd

    .line 569
    const/4 v6, 0x3

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 571
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 572
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 573
    const/4 v6, 0x6

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 575
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 576
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 577
    const/4 v6, 0x4

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 579
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 580
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 581
    const/4 v6, 0x5

    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    .line 667
    .end local v9    # "centerX":I
    .end local v10    # "centerY":I
    .end local v14    # "rectContentView":Landroid/graphics/Rect;
    .end local v17    # "rectSelectionView":Landroid/graphics/Rect;
    :cond_d5
    :goto_d5
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 668
    return-void

    .line 585
    .restart local v9    # "centerX":I
    .restart local v10    # "centerY":I
    .restart local v14    # "rectContentView":Landroid/graphics/Rect;
    .restart local v17    # "rectSelectionView":Landroid/graphics/Rect;
    :cond_dd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebTextSelectionControls;->DrawOutlineParagraph(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 587
    packed-switch p8, :pswitch_data_1cc

    .line 609
    const-string v4, "WebSelectionControls"

    const-string v5, "Selection controler not set!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :goto_f0
    sget v7, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    sget v8, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p8

    invoke-direct/range {v4 .. v10}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIIII)V

    goto :goto_d5

    .line 589
    :pswitch_fe
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 590
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 591
    goto :goto_f0

    .line 594
    :pswitch_10e
    move-object/from16 v0, v16

    iget v9, v0, Landroid/graphics/Rect;->right:I

    .line 595
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v10, v4, 0x2

    .line 596
    goto :goto_f0

    .line 599
    :pswitch_11e
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 600
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 601
    goto :goto_f0

    .line 604
    :pswitch_12e
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v16

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    div-int/lit8 v9, v4, 0x2

    .line 605
    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 606
    goto :goto_f0

    .line 616
    .end local v9    # "centerX":I
    .end local v10    # "centerY":I
    .end local v14    # "rectContentView":Landroid/graphics/Rect;
    .end local v17    # "rectSelectionView":Landroid/graphics/Rect;
    :cond_13e
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 617
    .local v21, "rtStart":Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 618
    .local v20, "rtMiddle":Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 622
    .local v19, "rtEnd":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 623
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 624
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->top:I

    iget v6, v15, Landroid/graphics/Rect;->right:I

    iget v7, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 626
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v4, :cond_1bc

    .line 627
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 628
    .local v11, "copyPaint":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 629
    const/high16 v4, 0x40000000

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 630
    const/high16 v4, -0x10000

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    const/16 v4, 0x64

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v12

    .line 633
    .local v12, "copyPath":Landroid/graphics/Path;
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 634
    invoke-virtual {v12}, Landroid/graphics/Path;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b7

    const-string v4, "WebSelectionControls"

    const-string v5, "Path is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1b7
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 656
    .end local v11    # "copyPaint":Landroid/graphics/Paint;
    .end local v12    # "copyPath":Landroid/graphics/Path;
    :cond_1bc
    if-eqz p9, :cond_d5

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v15, v3}, Landroid/webkitsec/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto/16 :goto_d5

    .line 587
    nop

    :pswitch_data_1cc
    .packed-switch 0x3
        :pswitch_fe
        :pswitch_10e
        :pswitch_11e
        :pswitch_12e
    .end packed-switch
.end method

.method SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Rect;
    .param p3, "Start"    # Landroid/graphics/Rect;
    .param p4, "End"    # Landroid/graphics/Rect;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/webkitsec/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 336
    iput-object p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 337
    iput-object p3, p0, Landroid/webkitsec/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 338
    iput-object p4, p0, Landroid/webkitsec/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 339
    return-void
.end method

.method getHandleCrossing()Z
    .registers 2

    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    return v0
.end method

.method getHandleExtendPoint(IIILandroid/webkitsec/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;
    .registers 15
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I
    .param p3, "handleType"    # I
    .param p4, "copyInfo"    # Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 445
    if-nez p4, :cond_6

    .line 446
    const/4 v5, 0x0

    .line 517
    :cond_5
    :goto_5
    return-object v5

    .line 449
    :cond_6
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 450
    .local v5, "value":Landroid/graphics/Point;
    const/4 v0, 0x0

    .line 451
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 452
    .local v1, "deltaY":I
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 454
    .local v4, "selectRect":Landroid/graphics/Rect;
    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_4c

    move v6, v7

    :goto_1a
    iget v9, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v9, v9, 0xa

    if-nez v9, :cond_21

    move v8, v7

    :cond_21
    xor-int v2, v6, v8

    .line 456
    .local v2, "exclusiveUpsideDown":Z
    const/4 v3, 0x0

    .line 457
    .local v3, "forceUpsideDown":Z
    iget-boolean v6, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v6, :cond_31

    .line 458
    if-eqz v3, :cond_31

    const-string v6, "WebSelectionControls"

    const-string v8, "getHandleExtendPoint: forceUpsideDown is set"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_31
    if-ne v7, p3, :cond_7c

    .line 462
    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_5d

    if-nez v3, :cond_5d

    .line 463
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v6

    .line 464
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_4e

    .line 465
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int v6, p2, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    .end local v2    # "exclusiveUpsideDown":Z
    .end local v3    # "forceUpsideDown":Z
    :cond_4c
    move v6, v8

    .line 454
    goto :goto_1a

    .line 466
    .restart local v2    # "exclusiveUpsideDown":Z
    .restart local v3    # "forceUpsideDown":Z
    :cond_4e
    if-lez v1, :cond_5

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_5

    .line 467
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 471
    :cond_5d
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, p2

    .line 472
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_6d

    .line 473
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v6, p2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 474
    :cond_6d
    if-lez v1, :cond_5

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_5

    .line 475
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 479
    :cond_7c
    const/4 v6, 0x2

    if-ne v6, p3, :cond_c8

    .line 480
    iget v6, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    and-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_a7

    if-nez v3, :cond_a7

    .line 481
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v6

    .line 484
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_99

    .line 485
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    sub-int v6, p2, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_5

    .line 486
    :cond_99
    if-lez v1, :cond_5

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_5

    .line 487
    sub-int v6, p2, v1

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_5

    .line 491
    :cond_a7
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, p2

    .line 492
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-le v1, v6, :cond_b8

    .line 493
    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    add-int/2addr v6, p2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_5

    .line 494
    :cond_b8
    if-lez v1, :cond_5

    sget v6, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    if-gt v1, v6, :cond_5

    .line 495
    iget-object v6, p4, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_5

    .line 499
    :cond_c8
    const/4 v6, 0x5

    if-eq v6, p3, :cond_ce

    const/4 v6, 0x6

    if-ne v6, p3, :cond_e6

    .line 500
    :cond_ce
    if-lez p1, :cond_da

    iget v6, v4, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_da

    .line 501
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_5

    .line 502
    :cond_da
    if-lez p1, :cond_5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-le p1, v6, :cond_5

    .line 503
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    goto/16 :goto_5

    .line 505
    :cond_e6
    const/4 v6, 0x3

    if-eq v6, p3, :cond_ec

    const/4 v6, 0x4

    if-ne v6, p3, :cond_5

    .line 506
    :cond_ec
    if-lez p2, :cond_f8

    iget v6, v4, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_f8

    .line 507
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_5

    .line 508
    :cond_f8
    if-lez p2, :cond_5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-le p2, v6, :cond_5

    .line 509
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_5
.end method

.method getHandleHeight()I
    .registers 2

    .prologue
    .line 354
    sget v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getHandleState(I)I
    .registers 5
    .param p1, "handleType"    # I

    .prologue
    .line 182
    packed-switch p1, :pswitch_data_24

    .line 189
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, -0x1

    :goto_1c
    return v0

    .line 184
    :pswitch_1d
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_1c

    .line 186
    :pswitch_20
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_1c

    .line 182
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method getHandleType(IILandroid/webkitsec/WebViewCore$SelectionCopiedData;)I
    .registers 18
    .param p1, "ptX"    # I
    .param p2, "ptY"    # I
    .param p3, "copyInfo"    # Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    .prologue
    .line 363
    if-nez p3, :cond_4

    .line 365
    const/4 v11, 0x0

    .line 440
    :goto_3
    return v11

    .line 368
    :cond_4
    sget v2, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    .line 369
    .local v2, "controllerWidth":I
    sget v1, Landroid/webkitsec/WebTextSelectionControls;->mControllerHeight:I

    .line 370
    .local v1, "controllerHeight":I
    const/4 v6, 0x0

    .local v6, "selectX":I
    const/4 v7, 0x0

    .line 372
    .local v7, "selectY":I
    move-object/from16 v0, p3

    iget v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_96

    .line 373
    new-instance v8, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    .local v8, "selectionCtrl":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 376
    .local v5, "selectRect":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v11, :cond_27

    .line 377
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 380
    :cond_27
    if-eqz v5, :cond_e1

    .line 382
    div-int/lit8 v9, v2, 0x2

    .line 383
    .local v9, "xRadius":I
    div-int/lit8 v10, v1, 0x2

    .line 386
    .local v10, "yRadius":I
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 387
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 388
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 389
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 390
    const/4 v11, 0x5

    goto :goto_3

    .line 393
    :cond_47
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 394
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 395
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 396
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_61

    .line 397
    const/4 v11, 0x3

    goto :goto_3

    .line 400
    :cond_61
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 401
    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    div-int/lit8 v7, v11, 0x2

    .line 402
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 403
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 404
    const/4 v11, 0x4

    goto :goto_3

    .line 407
    :cond_7b
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    div-int/lit8 v6, v11, 0x2

    .line 408
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 409
    sub-int v11, v6, v9

    sub-int v12, v7, v10

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 410
    move/from16 v0, p2

    invoke-virtual {v8, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_e1

    .line 411
    const/4 v11, 0x6

    goto/16 :goto_3

    .line 414
    .end local v5    # "selectRect":Landroid/graphics/Rect;
    .end local v8    # "selectionCtrl":Landroid/graphics/Rect;
    .end local v9    # "xRadius":I
    .end local v10    # "yRadius":I
    :cond_96
    new-instance v4, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 418
    .local v4, "rtCtrlTouchArea":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_bf

    .line 419
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 420
    .local v3, "pos":Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 423
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 424
    const/4 v11, 0x2

    goto/16 :goto_3

    .line 429
    .end local v3    # "pos":Landroid/graphics/Point;
    :cond_bf
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_e1

    .line 430
    move-object/from16 v0, p3

    iget-object v11, v0, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v11, v12, v13}, Landroid/webkitsec/WebTextSelectionControls;->getCharHandlePos(Landroid/graphics/Rect;IZ)Landroid/graphics/Point;

    move-result-object v3

    .line 431
    .restart local v3    # "pos":Landroid/graphics/Point;
    iget v11, v3, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v11, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 434
    move/from16 v0, p2

    invoke-virtual {v4, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_e1

    .line 435
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 440
    .end local v3    # "pos":Landroid/graphics/Point;
    .end local v4    # "rtCtrlTouchArea":Landroid/graphics/Rect;
    :cond_e1
    const/4 v11, 0x0

    goto/16 :goto_3
.end method

.method getHandleWidth()I
    .registers 2

    .prologue
    .line 358
    sget v0, Landroid/webkitsec/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method public getLeftHandleState()I
    .registers 2

    .prologue
    .line 953
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    return v0
.end method

.method public getRightHandleState()I
    .registers 2

    .prologue
    .line 957
    iget v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    return v0
.end method

.method getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "rt"    # Landroid/graphics/Rect;

    .prologue
    .line 290
    move-object v7, p1

    .line 291
    .local v7, "rtSelection":Landroid/graphics/Rect;
    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->right:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v3

    .line 292
    .local v3, "bitmapwidth":I
    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v2

    .line 293
    .local v2, "bitmapheight":I
    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentXf(I)F

    move-result v4

    .line 294
    .local v4, "bitmapx":F
    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9}, Landroid/webkitsec/WebViewClassic;->viewToContentYf(I)F

    move-result v5

    .line 303
    .local v5, "bitmapy":F
    iget-object v8, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v6

    .line 304
    .local v6, "picture":Landroid/graphics/Picture;
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 305
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    .local v1, "bitmapCanvas":Landroid/graphics/Canvas;
    neg-float v8, v4

    neg-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    if-eqz v6, :cond_42

    .line 309
    invoke-virtual {v6, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 310
    :cond_42
    return-object v0
.end method

.method getSelectionBitmap(Landroid/graphics/Region;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 240
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 241
    .local v3, "rectContentView":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5, v3}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 244
    .local v4, "rectSelection":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 245
    iget-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5, v4}, Landroid/webkitsec/WebViewClassic;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 247
    iget-object v5, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v2

    .line 248
    .local v2, "picture":Landroid/graphics/Picture;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 250
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v1, "bitmapCanvas":Landroid/graphics/Canvas;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    if-eqz v2, :cond_40

    .line 254
    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 255
    :cond_40
    iget-boolean v5, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v5, :cond_49

    .line 256
    const-string v5, "/sdcard/selectionBitmap.jpg"

    invoke-virtual {p0, v0, v5}, Landroid/webkitsec/WebTextSelectionControls;->saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 258
    :cond_49
    return-object v0
.end method

.method public getSelectionCursorRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 949
    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mSeletionCursor:Landroid/graphics/Rect;

    return-object v0
.end method

.method getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;
    .registers 12
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 262
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 263
    .local v3, "rectContentView":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7, v3}, Landroid/webkitsec/WebViewClassic;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 266
    .local v4, "rectSelection":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 268
    iget-boolean v7, p0, Landroid/webkitsec/WebTextSelectionControls;->DEBUG:Z

    if-eqz v7, :cond_31

    .line 269
    const-string v7, "LOGTAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSelectionPicture: region - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_31
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    .line 273
    .local v1, "picture":Landroid/graphics/Picture;
    new-instance v6, Landroid/graphics/Picture;

    invoke-direct {v6}, Landroid/graphics/Picture;-><init>()V

    .line 274
    .local v6, "visiblePicture":Landroid/graphics/Picture;
    iget-object v7, p0, Landroid/webkitsec/WebTextSelectionControls;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getScale()F

    move-result v5

    .line 275
    .local v5, "scale":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v2

    .line 276
    .local v2, "pictureCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 277
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 278
    iget v7, v4, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v0

    .line 281
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 282
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 283
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 284
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 285
    invoke-virtual {v6}, Landroid/graphics/Picture;->endRecording()V

    .line 286
    return-object v6
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "rt"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    invoke-virtual {p0, p2}, Landroid/webkitsec/WebTextSelectionControls;->getSelectionBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v2, "mFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 223
    :cond_12
    const/4 v3, 0x0

    .line 226
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_13
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_2b

    .line 227
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_18
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1f} :catch_2d

    move-object v3, v4

    .line 232
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_20
    if-eqz v3, :cond_25

    .line 233
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    .line 237
    :cond_25
    :goto_25
    return-void

    .line 234
    :catch_26
    move-exception v1

    .line 235
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    .line 228
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2b
    move-exception v5

    goto :goto_20

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_20
.end method

.method saveImageToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fullpath"    # Ljava/lang/String;

    .prologue
    .line 314
    if-nez p1, :cond_3

    .line 329
    :cond_2
    :goto_2
    return-void

    .line 315
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "mFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 317
    :cond_11
    const/4 v2, 0x0

    .line 319
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_12
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_2a

    .line 320
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_17
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1e} :catch_2c

    move-object v2, v3

    .line 325
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1f
    if-eqz v2, :cond_2

    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2

    .line 326
    :catch_25
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2a
    move-exception v4

    goto :goto_1f

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2c
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method setHandleCrossing(Z)V
    .registers 2
    .param p1, "crossing"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    .line 343
    return-void
.end method

.method public setHandleState(II)V
    .registers 6
    .param p1, "handleType"    # I
    .param p2, "state"    # I

    .prologue
    .line 200
    packed-switch p1, :pswitch_data_24

    .line 210
    const-string v0, "WebSelectionControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleState : Unsupported handle type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_1c
    return-void

    .line 202
    :pswitch_1d
    iput p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mLeftHandleState:I

    goto :goto_1c

    .line 206
    :pswitch_20
    iput p2, p0, Landroid/webkitsec/WebTextSelectionControls;->mRightHandleState:I

    goto :goto_1c

    .line 200
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method toggleHandleCrossing()V
    .registers 2

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Landroid/webkitsec/WebTextSelectionControls;->mHandleCrossing:Z

    .line 351
    return-void

    .line 350
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
