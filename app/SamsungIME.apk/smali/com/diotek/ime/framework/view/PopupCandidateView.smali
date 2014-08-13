.class public Lcom/diotek/ime/framework/view/PopupCandidateView;
.super Landroid/view/View;
.source "PopupCandidateView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public init(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)V
    .locals 2
    .param p1, "CandidateView"    # Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    .prologue
    const/16 v1, 0xff

    .line 24
    const/4 v0, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 20
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 21
    return-void
.end method
