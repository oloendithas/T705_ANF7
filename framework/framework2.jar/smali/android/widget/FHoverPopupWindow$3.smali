.class Landroid/widget/FHoverPopupWindow$3;
.super Ljava/lang/Object;
.source "FHoverPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/FHoverPopupWindow;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v3, -0x1

    .line 214
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v1, v0}, Landroid/widget/FHoverPopupWindow;->access$802(Landroid/widget/FHoverPopupWindow;F)F

    .line 216
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5d

    .line 217
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$500(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$900(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5e

    .line 220
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 231
    :cond_5d
    :goto_5d
    return-void

    .line 221
    :cond_5e
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$200(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_a6

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$1000(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a6

    .line 224
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5d

    .line 225
    :cond_a6
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$600(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_cd

    .line 226
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5d

    .line 227
    :cond_cd
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$700(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_5d

    .line 228
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    # getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_5d
.end method
