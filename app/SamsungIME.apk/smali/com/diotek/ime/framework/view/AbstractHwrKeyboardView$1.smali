.class Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AbstractHwrKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 174
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 175
    .local v0, "absX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 176
    .local v1, "absY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v2, v8, v9

    .line 177
    .local v2, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v3, v8, v9

    .line 178
    .local v3, "deltaY":F
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 179
    .local v6, "travelX":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 180
    .local v7, "travelY":I
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$000(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 181
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$000(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->getXVelocity()F

    move-result v4

    .line 182
    .local v4, "endingVelocityX":F
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$000(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;->getYVelocity()F

    move-result v5

    .line 185
    .local v5, "endingVelocityY":F
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p3, v8

    if-lez v8, :cond_2

    cmpg-float v8, v1, v0

    if-gez v8, :cond_2

    int-to-float v8, v6

    cmpl-float v8, v2, v8

    if-lez v8, :cond_2

    .line 186
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v8, 0x40800000

    div-float v8, p3, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_1

    .line 220
    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8

    .line 189
    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeRight()V
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$300(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V

    .line 190
    const/4 v8, 0x1

    goto :goto_0

    .line 192
    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_4

    cmpg-float v8, v1, v0

    if-gez v8, :cond_4

    neg-int v8, v6

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_4

    .line 193
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x40800000

    div-float v8, p3, v8

    cmpl-float v8, v4, v8

    if-gtz v8, :cond_0

    .line 196
    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeLeft()V
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$400(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V

    .line 197
    const/4 v8, 0x1

    goto :goto_0

    .line 199
    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_6

    cmpg-float v8, v0, v1

    if-gez v8, :cond_6

    neg-int v8, v7

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_6

    .line 200
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x40800000

    div-float v8, p4, v8

    cmpl-float v8, v5, v8

    if-gtz v8, :cond_0

    .line 203
    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeUp()V
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$500(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V

    .line 204
    const/4 v8, 0x1

    goto :goto_0

    .line 206
    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$100(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p4, v8

    if-lez v8, :cond_0

    const/high16 v8, 0x40000000

    div-float v8, v1, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_0

    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-lez v8, :cond_0

    .line 207
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$200(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x40800000

    div-float v8, p4, v8

    cmpg-float v8, v5, v8

    if-ltz v8, :cond_0

    .line 210
    :cond_7
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeDown()V
    invoke-static {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->access$600(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V

    .line 211
    const/4 v8, 0x1

    goto/16 :goto_0
.end method
