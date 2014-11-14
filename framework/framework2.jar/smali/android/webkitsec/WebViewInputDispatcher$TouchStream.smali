.class final Landroid/webkitsec/WebViewInputDispatcher$TouchStream;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchStream"
.end annotation


# instance fields
.field private mLastEvent:Landroid/view/MotionEvent;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/webkitsec/WebViewInputDispatcher$1;

    .prologue
    .line 1506
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>()V

    return-void
.end method

.method private updateLastEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1573
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    .line 1574
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1576
    :cond_9
    if-eqz p1, :cond_12

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    .line 1577
    return-void

    .line 1576
    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getLastEvent()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isCancelNeeded()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1569
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1525
    if-nez p1, :cond_15

    .line 1526
    invoke-virtual {p0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1527
    iget-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    .line 1528
    if-eqz p1, :cond_13

    .line 1529
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1530
    iput-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    :cond_13
    move-object v0, p1

    .line 1560
    :cond_14
    :goto_14
    return-object v0

    .line 1536
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    :pswitch_1c
    goto :goto_14

    .line 1549
    :pswitch_1d
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->updateLastEvent(Landroid/view/MotionEvent;)V

    move-object v0, p1

    .line 1550
    goto :goto_14

    .line 1541
    :pswitch_22
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    .line 1545
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->updateLastEvent(Landroid/view/MotionEvent;)V

    move-object v0, p1

    .line 1546
    goto :goto_14

    .line 1553
    :pswitch_34
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->mLastEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_14

    .line 1556
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->updateLastEvent(Landroid/view/MotionEvent;)V

    move-object v0, p1

    .line 1557
    goto :goto_14

    .line 1536
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_22
        :pswitch_22
        :pswitch_34
        :pswitch_1c
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method
