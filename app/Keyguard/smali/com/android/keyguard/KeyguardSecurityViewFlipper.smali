.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    .line 51
    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .registers 6
    .param p1, "maxSize"    # I
    .param p2, "childDimen"    # I

    .prologue
    .line 231
    packed-switch p2, :pswitch_data_16

    .line 241
    const/high16 v0, 0x40000000

    .line 242
    .local v0, "mode":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 245
    .local v1, "size":I
    :goto_9
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 233
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_e
    const/high16 v0, -0x80000000

    .line 234
    .restart local v0    # "mode":I
    move v1, p1

    .line 235
    .restart local v1    # "size":I
    goto :goto_9

    .line 237
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_12
    const/high16 v0, 0x40000000

    .line 238
    .restart local v0    # "mode":I
    move v1, p1

    .line 239
    .restart local v1    # "size":I
    goto :goto_9

    .line 231
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 163
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 168
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_f

    .line 72
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 74
    .end local v0    # "child":Landroid/view/View;
    :goto_e
    return-object v0

    .restart local v0    # "child":Landroid/view/View;
    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hideBouncer(I)V
    .registers 7
    .param p1, "duration"    # I

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 152
    .local v0, "active":Lcom/android/keyguard/KeyguardSecurityView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_21

    .line 153
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v4, :cond_1c

    move-object v3, v1

    .line 155
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityView;

    .line 156
    .local v3, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-ne v3, v0, :cond_1f

    move v4, p1

    :goto_19
    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    .line 152
    .end local v3    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 156
    .restart local v3    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1f
    const/4 v4, 0x0

    goto :goto_19

    .line 159
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_21
    return-void
.end method

.method public needsInput()Z
    .registers 3

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 120
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 178
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 179
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 189
    .local v9, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 190
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 191
    .local v10, "heightSize":I
    move/from16 v14, v18

    .line 192
    .local v14, "maxWidth":I
    move v13, v10

    .line 193
    .local v13, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 194
    .local v6, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_18
    if-ge v11, v6, :cond_49

    .line 195
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 198
    .local v12, "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_36

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v14, :cond_36

    .line 199
    iget v14, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 201
    :cond_36
    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_46

    iget v0, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v13, :cond_46

    .line 202
    iget v13, v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    .line 194
    :cond_46
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 206
    .end local v3    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    :cond_49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    add-int v15, v19, v20

    .line 207
    .local v15, "wPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    add-int v7, v19, v20

    .line 208
    .local v7, "hPadding":I
    sub-int/2addr v14, v15

    .line 209
    sub-int/2addr v13, v7

    .line 211
    const/high16 v19, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_bf

    move/from16 v16, v18

    .line 212
    .local v16, "width":I
    :goto_69
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    if-ne v9, v0, :cond_c2

    move v8, v10

    .line 213
    .local v8, "height":I
    :goto_70
    const/4 v11, 0x0

    :goto_71
    if-ge v11, v6, :cond_c4

    .line 214
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 215
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 217
    .restart local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v5

    .line 218
    .local v5, "childWidthSpec":I
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v4

    .line 220
    .local v4, "childHeightSpec":I
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    sub-int v20, v18, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    sub-int v20, v10, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 213
    add-int/lit8 v11, v11, 0x1

    goto :goto_71

    .line 211
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childHeightSpec":I
    .end local v5    # "childWidthSpec":I
    .end local v8    # "height":I
    .end local v12    # "lp":Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .end local v16    # "width":I
    :cond_bf
    const/16 v16, 0x0

    goto :goto_69

    .line 212
    .restart local v16    # "width":I
    :cond_c2
    const/4 v8, 0x0

    goto :goto_70

    .line 225
    .restart local v8    # "height":I
    :cond_c4
    add-int v19, v16, v15

    add-int v20, v8, v7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 226
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 104
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 105
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 107
    :cond_9
    return-void
.end method

.method public onResume(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 112
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 113
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 115
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 56
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_45

    .line 60
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 61
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_35

    if-eqz v2, :cond_48

    :cond_35
    const/4 v2, 0x1

    .line 63
    :goto_36
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 57
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_48
    move v2, v3

    .line 62
    goto :goto_36

    .line 66
    .end local v0    # "child":Landroid/view/View;
    :cond_4a
    return v2
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 96
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 97
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    .line 99
    :cond_9
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 80
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 81
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 83
    :cond_9
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 88
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 89
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 91
    :cond_9
    return-void
.end method

.method public showBouncer(I)V
    .registers 7
    .param p1, "duration"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 140
    .local v0, "active":Lcom/android/keyguard/KeyguardSecurityView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_21

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "child":Landroid/view/View;
    instance-of v4, v1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v4, :cond_1c

    move-object v3, v1

    .line 143
    check-cast v3, Lcom/android/keyguard/KeyguardSecurityView;

    .line 144
    .local v3, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-ne v3, v0, :cond_1f

    move v4, p1

    :goto_19
    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    .line 140
    .end local v3    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 144
    .restart local v3    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_1f
    const/4 v4, 0x0

    goto :goto_19

    .line 147
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_21
    return-void
.end method

.method public showUsabilityHint()V
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 132
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_9

    .line 133
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    .line 135
    :cond_9
    return-void
.end method
