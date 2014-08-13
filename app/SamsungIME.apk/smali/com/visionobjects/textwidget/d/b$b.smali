.class final Lcom/visionobjects/textwidget/d/b$b;
.super Lcom/visionobjects/stylus/core/InputMethodListener;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/textwidget/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/visionobjects/textwidget/d/b;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/d/b;Z)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    .line 595
    invoke-direct {p0}, Lcom/visionobjects/stylus/core/InputMethodListener;-><init>()V

    .line 596
    iput-boolean p2, p0, Lcom/visionobjects/textwidget/d/b$b;->f:Z

    .line 597
    return-void
.end method


# virtual methods
.method public final eraseGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 1

    .prologue
    .line 691
    invoke-super {p0, p1, p2}, Lcom/visionobjects/stylus/core/InputMethodListener;->eraseGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V

    .line 692
    const/4 v0, 0x5

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 693
    return-void
.end method

.method public final flowSync(Lcom/visionobjects/stylus/core/InputMethod;I)V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/visionobjects/textwidget/d/b$e;->a(I)V

    .line 648
    :cond_0
    return-void
.end method

.method public final insertGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    .prologue
    .line 662
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    .line 664
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    .line 665
    const/4 v0, 0x2

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 666
    return-void
.end method

.method public final joinGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    .prologue
    .line 671
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 673
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    .line 675
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    .line 676
    const/4 v0, 0x3

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 678
    :cond_0
    return-void
.end method

.method public final overwriteGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 1

    .prologue
    .line 697
    invoke-super {p0, p1, p2}, Lcom/visionobjects/stylus/core/InputMethodListener;->overwriteGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V

    .line 698
    const/4 v0, 0x6

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 699
    return-void
.end method

.method public final returnGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    .line 685
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    .line 686
    const/4 v0, 0x4

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 687
    return-void
.end method

.method public final selectionGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    .line 705
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    .line 706
    const/4 v0, 0x7

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 707
    return-void
.end method

.method public final singleTapGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    .prologue
    .line 653
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    .line 655
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    .line 656
    const/4 v0, 0x1

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 657
    return-void
.end method

.method public final underlineGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 2

    .prologue
    .line 711
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    .line 713
    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    .line 714
    const/16 v0, 0x8

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 715
    return-void
.end method

.method public final update(Lcom/visionobjects/stylus/core/InputMethod;)V
    .locals 3

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    .line 604
    iget-boolean v1, p0, Lcom/visionobjects/textwidget/d/b$b;->f:Z

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/b;->c(Lcom/visionobjects/textwidget/d/b;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 605
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/d/b$e;->a(Lcom/visionobjects/stylus/core/InkField;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 611
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->b(F)V

    .line 629
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    .line 640
    :cond_2
    return-void

    .line 612
    :cond_3
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 613
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->c(F)V

    goto :goto_0

    .line 614
    :cond_4
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 615
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->d(F)V

    goto :goto_0

    .line 616
    :cond_5
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 617
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->e(F)V

    goto :goto_0

    .line 618
    :cond_6
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 619
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/visionobjects/textwidget/d/b$d;->e()V

    goto :goto_0

    .line 620
    :cond_7
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 621
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/visionobjects/textwidget/d/b$d;->f()V

    goto :goto_0

    .line 622
    :cond_8
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    .line 623
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->f(F)V

    goto :goto_0

    .line 624
    :cond_9
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 625
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->g(F)V

    goto/16 :goto_0
.end method
