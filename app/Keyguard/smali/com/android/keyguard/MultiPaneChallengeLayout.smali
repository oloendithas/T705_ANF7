.class public Lcom/android/keyguard/MultiPaneChallengeLayout;
.super Landroid/view/ViewGroup;
.source "MultiPaneChallengeLayout.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEmergencyButton:Landroid/view/View;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsBouncing:Z

.field private mIsSecured:Z

.field final mOrientation:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUserSwitcherView:Landroid/view/View;

.field private mWidgetContainer:Landroid/view/View;

.field private final mZeroPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 62
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    .line 67
    new-instance v2, Lcom/android/keyguard/MultiPaneChallengeLayout$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$1;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 97
    iput-boolean v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsSecured:Z

    .line 85
    sget-object v2, Lcom/android/keyguard/R$styleable;->MultiPaneChallengeLayout:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 94
    const/16 v2, 0x300

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/MultiPaneChallengeLayout;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method private findChallenageView()Z
    .registers 3

    .prologue
    .line 436
    const v1, 0x7f0b0086

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "challengeView":Landroid/view/View;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_13

    .line 438
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .end local v0    # "challengeView":Landroid/view/View;
    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 439
    const/4 v1, 0x1

    .line 442
    :goto_12
    return v1

    .restart local v0    # "challengeView":Landroid/view/View;
    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private findEmergencyButtonView()Z
    .registers 3

    .prologue
    .line 446
    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    .local v0, "emergencyButton":Landroid/view/View;
    if-eqz v0, :cond_d

    .line 449
    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mEmergencyButton:Landroid/view/View;

    .line 450
    const/4 v1, 0x1

    .line 453
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private findScrimView(II)Z
    .registers 5
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 425
    const v1, 0x7f0b008b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "scrimView":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setScrimView(Landroid/view/View;)V

    .line 428
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 429
    const/4 v1, 0x1

    .line 432
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private findWidgetContainerView()Z
    .registers 3

    .prologue
    .line 415
    const v1, 0x7f0b008d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "widgetContainer":Landroid/view/View;
    if-eqz v0, :cond_11

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_11

    .line 417
    iput-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mWidgetContainer:Landroid/view/View;

    .line 418
    const/4 v1, 0x1

    .line 421
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I
    .registers 8
    .param p1, "lp"    # Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .param p2, "height"    # I
    .param p3, "heightUsed"    # I

    .prologue
    .line 258
    move v1, p2

    .line 259
    .local v1, "virtualHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_16

    .line 264
    iget-object v2, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 266
    :cond_16
    iget v2, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    .line 269
    sub-int p2, v1, p3

    .line 273
    .end local p2    # "height":I
    :cond_1d
    :goto_1d
    return p2

    .line 270
    .restart local p2    # "height":I
    :cond_1e
    iget v2, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1d

    .line 273
    sub-int v2, v1, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1d
.end method

.method private isPointInView(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mWidgetContainer:Landroid/view/View;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mWidgetContainer:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->isPointInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_35

    move v0, v1

    .line 124
    .local v0, "isInWigetPager":Z
    :goto_f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mEmergencyButton:Landroid/view/View;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mEmergencyButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mEmergencyButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 128
    if-eqz v0, :cond_37

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mEmergencyButton:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->isPointInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_37

    move v0, v1

    .line 131
    :cond_34
    :goto_34
    return v0

    .end local v0    # "isInWigetPager":Z
    :cond_35
    move v0, v2

    .line 122
    goto :goto_f

    .restart local v0    # "isInWigetPager":Z
    :cond_37
    move v0, v2

    .line 128
    goto :goto_34
.end method

.method private isPointInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    if-nez p2, :cond_5

    .line 149
    :cond_4
    :goto_4
    return v4

    .line 139
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_4

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 144
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 146
    .local v2, "y":F
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 147
    .local v0, "location":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 149
    aget v5, v0, v4

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_41

    aget v5, v0, v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_41

    aget v5, v0, v3

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_41

    aget v5, v0, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_41

    :goto_3f
    move v4, v3

    goto :goto_4

    :cond_41
    move v3, v4

    goto :goto_3f
.end method

.method private layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V
    .registers 29
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "child"    # Landroid/view/View;
    .param p4, "padding"    # Landroid/graphics/Rect;
    .param p5, "adjustPadding"    # Z

    .prologue
    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 498
    .local v16, "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    sub-int v12, v21, v22

    .line 499
    .local v12, "heightUsed":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result p2

    .line 501
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v22

    invoke-static/range {v21 .. v22}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v11

    .line 503
    .local v11, "gravity":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_d7

    const/4 v9, 0x1

    .line 504
    .local v9, "fixedLayoutSize":Z
    :goto_45
    if-eqz v9, :cond_da

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v21, v0

    if-nez v21, :cond_da

    const/4 v8, 0x1

    .line 505
    .local v8, "fixedLayoutHorizontal":Z
    :goto_50
    if-eqz v9, :cond_dd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_dd

    const/4 v10, 0x1

    .line 509
    .local v10, "fixedLayoutVertical":Z
    :goto_61
    if-eqz v8, :cond_df

    .line 510
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    .line 511
    .local v18, "paddedWidth":I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    .line 512
    .local v4, "adjustedWidth":I
    move/from16 v3, p2

    .line 522
    .end local v18    # "paddedWidth":I
    .local v3, "adjustedHeight":I
    :goto_89
    invoke-static {v11}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v14

    .line 523
    .local v14, "isVertical":Z
    invoke-static {v11}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v13

    .line 524
    .local v13, "isHorizontal":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 525
    .local v7, "childWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 527
    .local v6, "childHeight":I
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 528
    .local v15, "left":I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 529
    .local v20, "top":I
    add-int v19, v15, v7

    .line 530
    .local v19, "right":I
    add-int v5, v20, v6

    .line 531
    .local v5, "bottom":I
    and-int/lit8 v21, v11, 0x70

    sparse-switch v21, :sswitch_data_230

    .line 561
    :cond_ac
    :goto_ac
    and-int/lit8 v21, v11, 0x7

    packed-switch v21, :pswitch_data_23e

    .line 588
    :cond_b1
    :goto_b1
    :pswitch_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v5, v5, v21

    .line 591
    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 592
    return-void

    .line 503
    .end local v3    # "adjustedHeight":I
    .end local v4    # "adjustedWidth":I
    .end local v5    # "bottom":I
    .end local v6    # "childHeight":I
    .end local v7    # "childWidth":I
    .end local v8    # "fixedLayoutHorizontal":Z
    .end local v9    # "fixedLayoutSize":Z
    .end local v10    # "fixedLayoutVertical":Z
    .end local v13    # "isHorizontal":Z
    .end local v14    # "isVertical":Z
    .end local v15    # "left":I
    .end local v19    # "right":I
    .end local v20    # "top":I
    :cond_d7
    const/4 v9, 0x0

    goto/16 :goto_45

    .line 504
    .restart local v9    # "fixedLayoutSize":Z
    :cond_da
    const/4 v8, 0x0

    goto/16 :goto_50

    .line 505
    .restart local v8    # "fixedLayoutHorizontal":Z
    :cond_dd
    const/4 v10, 0x0

    goto :goto_61

    .line 513
    .restart local v10    # "fixedLayoutVertical":Z
    :cond_df
    if-eqz v10, :cond_104

    .line 514
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    sub-int v21, p2, v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v22

    sub-int v17, v21, v22

    .line 515
    .local v17, "paddedHeight":I
    move/from16 v4, p1

    .line 516
    .restart local v4    # "adjustedWidth":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    const/high16 v22, 0x3f000000

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v3, v0

    .line 517
    .restart local v3    # "adjustedHeight":I
    goto :goto_89

    .line 518
    .end local v3    # "adjustedHeight":I
    .end local v4    # "adjustedWidth":I
    .end local v17    # "paddedHeight":I
    :cond_104
    move/from16 v4, p1

    .line 519
    .restart local v4    # "adjustedWidth":I
    move/from16 v3, p2

    .restart local v3    # "adjustedHeight":I
    goto :goto_89

    .line 533
    .restart local v5    # "bottom":I
    .restart local v6    # "childHeight":I
    .restart local v7    # "childWidth":I
    .restart local v13    # "isHorizontal":Z
    .restart local v14    # "isVertical":Z
    .restart local v15    # "left":I
    .restart local v19    # "right":I
    .restart local v20    # "top":I
    :sswitch_109
    if-eqz v10, :cond_133

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, v3, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 535
    :goto_117
    add-int v5, v20, v6

    .line 536
    if-eqz p5, :cond_ac

    if-eqz v14, :cond_ac

    .line 537
    move-object/from16 v0, p4

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 538
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_ac

    .line 533
    :cond_133
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    goto :goto_117

    .line 542
    :sswitch_13a
    if-eqz v10, :cond_16a

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, p2

    sub-int v22, v3, v6

    div-int/lit8 v22, v22, 0x2

    sub-int v5, v21, v22

    .line 545
    :goto_14a
    sub-int v20, v5, v6

    .line 546
    if-eqz p5, :cond_ac

    if-eqz v14, :cond_ac

    .line 547
    sub-int v21, p2, v20

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 548
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    div-int/lit8 v22, v6, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_ac

    .line 542
    :cond_16a
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v5, v21, p2

    goto :goto_14a

    .line 552
    :sswitch_173
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v21

    if-eqz v21, :cond_199

    .line 553
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v22, p2, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 554
    add-int v21, v20, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v5, v21, v22

    goto/16 :goto_ac

    .line 556
    :cond_199
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v22, p2, v6

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 557
    add-int v5, v20, v6

    goto/16 :goto_ac

    .line 563
    :pswitch_1a9
    if-eqz v8, :cond_1d7

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v22, v4, v7

    div-int/lit8 v22, v22, 0x2

    add-int v15, v21, v22

    .line 565
    :goto_1b7
    add-int v19, v15, v7

    .line 566
    if-eqz p5, :cond_b1

    if-eqz v13, :cond_b1

    if-nez v14, :cond_b1

    .line 567
    move/from16 v0, v19

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 568
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    div-int/lit8 v22, v7, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_b1

    .line 563
    :cond_1d7
    move-object/from16 v0, p4

    iget v15, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1b7

    .line 572
    :pswitch_1dc
    if-eqz v8, :cond_20e

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    sub-int v22, v4, v7

    div-int/lit8 v22, v22, 0x2

    sub-int v19, v21, v22

    .line 575
    :goto_1ec
    sub-int v15, v19, v7

    .line 576
    if-eqz p5, :cond_b1

    if-eqz v13, :cond_b1

    if-nez v14, :cond_b1

    .line 577
    sub-int v21, p1, v15

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 578
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    div-int/lit8 v22, v7, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_b1

    .line 572
    :cond_20e
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v19, p1, v21

    goto :goto_1ec

    .line 582
    :pswitch_217
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v21, p1, v21

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    .line 583
    .restart local v18    # "paddedWidth":I
    sub-int v21, v18, v7

    div-int/lit8 v15, v21, 0x2

    .line 584
    add-int v19, v15, v7

    goto/16 :goto_b1

    .line 531
    nop

    :sswitch_data_230
    .sparse-switch
        0x10 -> :sswitch_173
        0x30 -> :sswitch_109
        0x50 -> :sswitch_13a
    .end sparse-switch

    .line 561
    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_217
        :pswitch_b1
        :pswitch_1a9
        :pswitch_b1
        :pswitch_1dc
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 613
    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout;->isPointInView(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 113
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsSecured:Z

    if-nez v0, :cond_12

    .line 114
    :cond_10
    const/4 v0, 0x0

    .line 118
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 608
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 596
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 601
    instance-of v0, p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getBouncerAnimationDuration()I
    .registers 2

    .prologue
    .line 173
    const/16 v0, 0x15e

    return v0
.end method

.method public hideBouncer()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 202
    iget-boolean v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_6

    .line 222
    :cond_5
    :goto_5
    return-void

    .line 203
    :cond_6
    iput-boolean v5, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    .line 204
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_35

    .line 205
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_17

    .line 206
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 209
    :cond_17
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 210
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 211
    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$3;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 217
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 219
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_35
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 458
    iget-object v4, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mTempRect:Landroid/graphics/Rect;

    .line 459
    .local v4, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 460
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 461
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 463
    sub-int v1, p4, p2

    .line 464
    .local v1, "width":I
    sub-int v12, p5, p3

    .line 465
    .local v12, "height":I
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v12, v0

    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v3

    .line 469
    .local v2, "insetHeight":I
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_45

    .line 470
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 471
    iget-object v3, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    .line 474
    :cond_45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 475
    .local v11, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4a
    if-ge v13, v11, :cond_85

    .line 476
    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 477
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 480
    .local v14, "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eq v8, v0, :cond_62

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_65

    .line 475
    :cond_62
    :goto_62
    add-int/lit8 v13, v13, 0x1

    goto :goto_4a

    .line 482
    :cond_65
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-ne v8, v0, :cond_6f

    .line 483
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v1, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_62

    .line 485
    :cond_6f
    iget v0, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_7e

    .line 486
    iget-object v9, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mZeroPadding:Landroid/graphics/Rect;

    const/4 v10, 0x0

    move-object v5, p0

    move v6, v1

    move v7, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_62

    .line 490
    :cond_7e
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/MultiPaneChallengeLayout;->layoutWithGravity(IILandroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_62

    .line 492
    .end local v8    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_85
    return-void
.end method

.method protected onMeasure(II)V
    .registers 21
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 278
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-ne v2, v5, :cond_10

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v5, 0x40000000

    if-eq v2, v5, :cond_18

    .line 280
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "MultiPaneChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_18
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 285
    .local v16, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 286
    .local v9, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v9, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v2, v5

    .line 289
    .local v12, "insetHeight":I
    const/high16 v2, 0x40000000

    invoke-static {v12, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 291
    .local v13, "insetHeightSpec":I
    const/16 v17, 0x0

    .line 292
    .local v17, "widthUsed":I
    const/4 v10, 0x0

    .line 296
    .local v10, "heightUsed":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    .line 298
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 299
    .local v8, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4f
    if-ge v11, v8, :cond_10f

    .line 300
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 301
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 303
    .local v14, "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_85

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_70

    .line 305
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type challenge"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_70
    instance-of v2, v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_7c

    .line 309
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_7c
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityContainer;

    .end local v3    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 299
    :cond_82
    :goto_82
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    .line 313
    .restart local v3    # "child":Landroid/view/View;
    :cond_85
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_fc

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    if-eqz v2, :cond_98

    .line 315
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "There may only be one child of type userSwitcher"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_98
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mUserSwitcherView:Landroid/view/View;

    .line 320
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_82

    .line 322
    move/from16 v4, p1

    .line 323
    .local v4, "adjustedWidthSpec":I
    move v6, v13

    .line 324
    .local v6, "adjustedHeightSpec":I
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_b9

    .line 325
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 328
    :cond_b9
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_c9

    .line 329
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 333
    :cond_c9
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 337
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 338
    int-to-float v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v10, v2

    goto :goto_82

    .line 339
    :cond_e4
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->gravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 340
    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000

    mul-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v17, v0

    goto :goto_82

    .line 342
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_fc
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_82

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setScrimView(Landroid/view/View;)V

    .line 344
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_82

    .line 348
    .end local v3    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_10f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_118

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->findChallenageView()Z

    .line 352
    :cond_118
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-nez v2, :cond_127

    .line 354
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->findScrimView(II)Z

    .line 363
    :cond_127
    :goto_127
    const/4 v11, 0x0

    :goto_128
    if-ge v11, v8, :cond_1dd

    .line 364
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 365
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;

    .line 367
    .restart local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x3

    if-eq v2, v5, :cond_148

    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->childType:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_148

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_15e

    .line 363
    :cond_148
    :goto_148
    add-int/lit8 v11, v11, 0x1

    goto :goto_128

    .line 356
    .end local v3    # "child":Landroid/view/View;
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_14b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mWidgetContainer:Landroid/view/View;

    if-nez v2, :cond_154

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->findWidgetContainerView()Z

    .line 358
    :cond_154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mEmergencyButton:Landroid/view/View;

    if-nez v2, :cond_127

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->findEmergencyButtonView()Z

    goto :goto_127

    .line 374
    .restart local v3    # "child":Landroid/view/View;
    .restart local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    :cond_15e
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v10}, Lcom/android/keyguard/MultiPaneChallengeLayout;->getVirtualHeight(Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;II)I

    move-result v15

    .line 378
    .local v15, "virtualHeight":I
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1ce

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mOrientation:I

    if-nez v2, :cond_1b7

    .line 380
    sub-int v2, v16, v17

    int-to-float v2, v2

    iget v5, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 383
    .restart local v4    # "adjustedWidthSpec":I
    const/high16 v2, 0x40000000

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 398
    .restart local v6    # "adjustedHeightSpec":I
    :goto_187
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    if-ltz v2, :cond_19b

    .line 399
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxWidth:I

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 403
    :cond_19b
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    if-ltz v2, :cond_1af

    .line 404
    iget v2, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 409
    :cond_1af
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_148

    .line 386
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_1b7
    sub-int v2, v16, v17

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 388
    .restart local v4    # "adjustedWidthSpec":I
    int-to-float v2, v15

    iget v5, v14, Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;->centerWithinArea:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v2, v5

    float-to-int v2, v2

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6    # "adjustedHeightSpec":I
    goto :goto_187

    .line 393
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    :cond_1ce
    sub-int v2, v16, v17

    const/high16 v5, 0x40000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 395
    .restart local v4    # "adjustedWidthSpec":I
    const/high16 v2, 0x40000000

    invoke-static {v15, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6    # "adjustedHeightSpec":I
    goto :goto_187

    .line 412
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "adjustedWidthSpec":I
    .end local v6    # "adjustedHeightSpec":I
    .end local v14    # "lp":Lcom/android/keyguard/MultiPaneChallengeLayout$LayoutParams;
    .end local v15    # "virtualHeight":I
    :cond_1dd
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_b

    .line 239
    invoke-virtual {p0}, Lcom/android/keyguard/MultiPaneChallengeLayout;->hideBouncer()V

    .line 241
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 155
    return-void
.end method

.method public setIsSecured(Z)V
    .registers 2
    .param p1, "secured"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsSecured:Z

    .line 101
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 232
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .registers 4
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_a
    iput-object p1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 250
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_33

    const/high16 v0, 0x3f800000

    :goto_18
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 251
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    :goto_22
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_32
    return-void

    .line 250
    :cond_33
    const/4 v0, 0x0

    goto :goto_18

    .line 251
    :cond_35
    const/4 v0, 0x4

    goto :goto_22
.end method

.method public showBouncer()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 178
    iget-boolean v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    if-eqz v1, :cond_6

    .line 198
    :cond_5
    :goto_5
    return-void

    .line 179
    :cond_6
    iput-boolean v6, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mIsBouncing:Z

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_36

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_17

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0x15e

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 185
    :cond_17
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 186
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 187
    new-instance v1, Lcom/android/keyguard/MultiPaneChallengeLayout$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/MultiPaneChallengeLayout$2;-><init>(Lcom/android/keyguard/MultiPaneChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 195
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_36
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 196
    iget-object v1, p0, Lcom/android/keyguard/MultiPaneChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method
