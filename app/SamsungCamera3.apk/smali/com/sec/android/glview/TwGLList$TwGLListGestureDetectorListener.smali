.class public Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLListGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLList;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLList;)V
    .locals 0

    .prologue
    .line 1815
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v3, 0x42c80000

    const/4 v2, 0x0

    .line 1844
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    div-float v1, p4, v3

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1846
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # invokes: Lcom/sec/android/glview/TwGLList;->checkBoundary()Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$400(Lcom/sec/android/glview/TwGLList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v2}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1851
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    div-float v1, p3, v3

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1853
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # invokes: Lcom/sec/android/glview/TwGLList;->checkBoundary()Z
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$400(Lcom/sec/android/glview/TwGLList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v2}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1859
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1860
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v0, 0x1

    .line 1826
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1836
    :goto_0
    return v0

    .line 1829
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v1}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1830
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v1

    mul-float/2addr v1, p4

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$202(Lcom/sec/android/glview/TwGLList;F)F

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    # getter for: Lcom/sec/android/glview/TwGLList;->mScroll:I
    invoke-static {v0}, Lcom/sec/android/glview/TwGLList;->access$100(Lcom/sec/android/glview/TwGLList;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v1

    mul-float/2addr v1, p3

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    # setter for: Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLList;->access$302(Lcom/sec/android/glview/TwGLList;F)F

    .line 1835
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;->this$0:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1836
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
