.class public Lcom/samsung/android/toolbox/TwToolBoxChildLayout;
.super Landroid/widget/LinearLayout;
.source "TwToolBoxChildLayout.java"


# instance fields
.field private final mDensity:F

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    .line 34
    if-nez p1, :cond_d

    const/high16 v0, 0x3f800000

    :goto_a
    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    .line 35
    return-void

    .line 34
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_a
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    .line 83
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 40
    .local v10, "parent":Landroid/view/ViewGroup;
    if-eqz v10, :cond_1c

    .line 41
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/lit8 v11, v15, -0x1

    .line 42
    .local v11, "parentWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    if-ge v15, v11, :cond_1c

    .line 43
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->setRight(I)V

    .line 47
    .end local v11    # "parentWidth":I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 48
    .local v1, "allCount":I
    const/4 v2, 0x0

    .line 49
    .local v2, "contentSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_22
    if-ge v7, v1, :cond_32

    .line 50
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 51
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v2, v15

    .line 49
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 54
    .end local v14    # "v":Landroid/view/View;
    :cond_32
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a3

    const/high16 v15, 0x41880000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    :goto_46
    float-to-int v9, v15

    .line 55
    .local v9, "leftPadding":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_ae

    const/high16 v15, 0x41400000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    :goto_5b
    float-to-int v12, v15

    .line 56
    .local v12, "rightPadding":I
    div-int/lit8 v6, v1, 0x2

    .line 57
    .local v6, "emptyViewCount":I
    move v3, v9

    .line 58
    .local v3, "currPosition":I
    if-lez v1, :cond_b9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 59
    .local v5, "eachImageSize":I
    :goto_6c
    if-nez v6, :cond_bb

    const/4 v4, 0x0

    .line 61
    .local v4, "eachEmptySize":I
    :goto_6f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mOrientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c5

    .line 62
    const/high16 v15, 0x41b80000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v4, v15

    .line 70
    :cond_84
    :goto_84
    const/4 v7, 0x0

    :goto_85
    if-ge v7, v1, :cond_da

    .line 71
    rem-int/lit8 v15, v7, 0x2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d6

    const/4 v8, 0x1

    .line 72
    .local v8, "isEmptyView":Z
    :goto_90
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 73
    .restart local v14    # "v":Landroid/view/View;
    invoke-virtual {v14, v3}, Landroid/view/View;->setLeft(I)V

    .line 74
    if-eqz v8, :cond_d8

    move v15, v4

    :goto_9c
    add-int/2addr v3, v15

    .line 75
    invoke-virtual {v14, v3}, Landroid/view/View;->setRight(I)V

    .line 70
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 54
    .end local v3    # "currPosition":I
    .end local v4    # "eachEmptySize":I
    .end local v5    # "eachImageSize":I
    .end local v6    # "emptyViewCount":I
    .end local v8    # "isEmptyView":Z
    .end local v9    # "leftPadding":I
    .end local v12    # "rightPadding":I
    .end local v14    # "v":Landroid/view/View;
    :cond_a3
    const/high16 v15, 0x41e00000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    goto :goto_46

    .line 55
    .restart local v9    # "leftPadding":I
    :cond_ae
    const/high16 v15, 0x41d80000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    goto :goto_5b

    .line 58
    .restart local v3    # "currPosition":I
    .restart local v6    # "emptyViewCount":I
    .restart local v12    # "rightPadding":I
    :cond_b9
    const/4 v5, 0x0

    goto :goto_6c

    .line 59
    .restart local v5    # "eachImageSize":I
    :cond_bb
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v15, v2

    sub-int/2addr v15, v9

    sub-int/2addr v15, v12

    div-int v4, v15, v6

    goto :goto_6f

    .line 64
    .restart local v4    # "eachEmptySize":I
    :cond_c5
    sub-int v13, v1, v6

    .line 65
    .local v13, "shortcutCount":I
    const/4 v15, 0x3

    if-gt v13, v15, :cond_84

    .line 66
    const/high16 v15, 0x429c0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxChildLayout;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v4, v15

    goto :goto_84

    .line 71
    .end local v13    # "shortcutCount":I
    :cond_d6
    const/4 v8, 0x0

    goto :goto_90

    .restart local v8    # "isEmptyView":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_d8
    move v15, v5

    .line 74
    goto :goto_9c

    .line 78
    .end local v8    # "isEmptyView":Z
    .end local v14    # "v":Landroid/view/View;
    :cond_da
    return-void
.end method
