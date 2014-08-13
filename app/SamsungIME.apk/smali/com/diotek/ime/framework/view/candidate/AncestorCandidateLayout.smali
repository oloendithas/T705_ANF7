.class public Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;
.super Landroid/widget/HorizontalScrollView;
.source "AncestorCandidateLayout.java"


# instance fields
.field private mCandidatePositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateWidth:I

.field private mCandidatesCount:I

.field private mFlinged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidateWidth:I

    .line 14
    iput v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    .line 16
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    .line 31
    return-void
.end method


# virtual methods
.method public fling(I)V
    .locals 4
    .param p1, "velocityX"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "closest":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    if-ge v1, v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 49
    .local v2, "pos":I
    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 61
    .end local v2    # "pos":I
    :cond_0
    :goto_1
    return-void

    .line 52
    .restart local v2    # "pos":I
    :cond_1
    if-gez p1, :cond_3

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 57
    :cond_2
    move v0, v2

    .line 47
    :cond_3
    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method public holdScrollPosition()V
    .locals 6

    .prologue
    .line 76
    const/4 v2, -0x1

    .line 77
    .local v2, "minDistance":I
    const/4 v3, -0x1

    .line 78
    .local v3, "minPosition":I
    iget-object v5, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 79
    .local v4, "pos":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 80
    .local v0, "distance":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-le v2, v0, :cond_0

    .line 81
    :cond_1
    move v3, v4

    .line 82
    move v2, v0

    goto :goto_0

    .line 85
    .end local v0    # "distance":I
    .end local v4    # "pos":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 86
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 67
    .local v1, "res":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, "action":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    if-nez v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->holdScrollPosition()V

    .line 71
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mFlinged:Z

    .line 72
    return v1
.end method

.method public setCandidateWidthAndCount(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "count"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidateWidth:I

    .line 35
    iput p2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    .line 36
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatesCount:I

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidatePositions:Ljava/util/ArrayList;

    iget v2, p0, Lcom/diotek/ime/framework/view/candidate/AncestorCandidateLayout;->mCandidateWidth:I

    mul-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
