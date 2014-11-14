.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableLtrTop"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableRtlTop"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5195
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 5198
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5199
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 5200
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .registers 6

    .prologue
    .line 5319
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5320
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v3}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v2

    .line 5321
    .local v2, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 5323
    .local v1, "iconSize":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v2}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_29

    const/4 v3, 0x1

    :goto_28
    return v3

    :cond_29
    const/4 v3, 0x0

    goto :goto_28
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5272
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 5273
    .local v0, "bSwitchCursor":Z
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5275
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 5277
    invoke-direct {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5278
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 5281
    :cond_18
    iget-boolean v5, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-eq v0, v5, :cond_4b

    .line 5282
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5283
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 5284
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f000000

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5285
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5288
    .end local v2    # "layout":Landroid/text/Layout;
    :goto_4a
    return v3

    :cond_4b
    move v3, v4

    goto :goto_4a
.end method

.method public getCurrentCursorOffset()I
    .registers 2

    .prologue
    .line 5213
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5204
    if-eqz p2, :cond_b

    .line 5205
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 5207
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_a
.end method

.method public isHandleViewAtTop()Z
    .registers 2

    .prologue
    .line 5338
    const/4 v0, 0x0

    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .registers 4
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 5254
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5255
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_18

    .line 5257
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    .line 5258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 5259
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5261
    :cond_18
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .registers 2

    .prologue
    .line 5264
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_19

    .line 5265
    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5266
    const/4 v0, 0x1

    .line 5268
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .registers 2
    .param p1, "actionPopupWindow"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    .line 5243
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 5244
    return-void
.end method

.method public setNewActionPopupWindow(Landroid/widget/Editor$NewActionPopupWindow;)V
    .registers 2
    .param p1, "newActionPopupWindow"    # Landroid/widget/Editor$NewActionPopupWindow;

    .prologue
    .line 5248
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 5249
    return-void
.end method

.method protected updateDrawable()V
    .registers 5

    .prologue
    .line 5292
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v3}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 5293
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5316
    :cond_b
    :goto_b
    return-void

    .line 5297
    :cond_c
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 5298
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5299
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5301
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_27

    .line 5302
    if-nez v0, :cond_46

    const/4 v0, 0x1

    .line 5305
    :cond_27
    :goto_27
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewAtTop()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 5306
    if-eqz v0, :cond_48

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_31
    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5310
    :goto_33
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/Editor$SelectionEndHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 5312
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_b

    .line 5313
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 5314
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_b

    .line 5302
    :cond_46
    const/4 v0, 0x0

    goto :goto_27

    .line 5306
    :cond_48
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_31

    .line 5308
    :cond_4b
    if-eqz v0, :cond_52

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtlTop:Landroid/graphics/drawable/Drawable;

    :goto_4f
    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_33

    :cond_52
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableLtrTop:Landroid/graphics/drawable/Drawable;

    goto :goto_4f
.end method

.method public updatePosition(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5225
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 5228
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5230
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2600(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 5231
    if-gt v0, v1, :cond_32

    .line 5232
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5239
    :cond_32
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 5240
    :goto_36
    return-void

    .line 5235
    :cond_37
    if-ne v0, v1, :cond_32

    goto :goto_36
.end method

.method public updateSelection(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 5218
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5220
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5221
    return-void
.end method
