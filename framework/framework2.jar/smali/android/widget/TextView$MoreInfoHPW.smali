.class Landroid/widget/TextView$MoreInfoHPW;
.super Landroid/widget/FHoverPopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;I)V
    .registers 6
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 11546
    iput-object p1, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    .line 11547
    invoke-direct {p0, p2, p3}, Landroid/widget/FHoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 11542
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    .line 11543
    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    .line 11544
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 11548
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 11549
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    .line 11557
    :goto_1a
    return-void

    .line 11552
    :cond_1b
    const-string v0, "MoreInfoHPW"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11553
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_1a
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 11577
    const/4 v1, 0x1

    .line 11579
    .local v1, "ret":Z
    iget v3, p0, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 11580
    iget-boolean v3, p0, Landroid/widget/HoverPopupWindow;->mShowPopupAlways:Z

    if-eqz v3, :cond_c

    .line 11615
    :goto_b
    return v2

    .line 11584
    :cond_c
    const/4 v1, 0x0

    .line 11586
    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 11589
    const/4 v1, 0x1

    :cond_16
    :goto_16
    move v2, v1

    .line 11615
    goto :goto_b

    .line 11590
    :cond_18
    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v2, :cond_2a

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->canMarquee()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1300(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 11591
    const/4 v1, 0x1

    goto :goto_16

    .line 11592
    :cond_2a
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 11593
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    .line 11596
    .local v0, "l":Landroid/text/Layout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_16

    .line 11597
    const/4 v1, 0x1

    goto :goto_16

    .line 11613
    .end local v0    # "l":Landroid/text/Layout;
    :cond_41
    invoke-super {p0}, Landroid/widget/FHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    goto :goto_16
.end method

.method protected makeDefaultContentView()V
    .registers 9

    .prologue
    const v7, 0x7011214

    .line 11621
    const/4 v4, 0x0

    .line 11623
    .local v4, "v":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 11625
    .local v2, "orientation":I
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_20

    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_20

    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    if-eq v2, v5, :cond_7c

    .line 11628
    :cond_20
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 11629
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x109005e

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 11631
    .restart local v4    # "v":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 11632
    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 11633
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    .line 11635
    iput v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    .line 11642
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_3f
    iget-object v5, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    iget-object v3, p0, Landroid/widget/HoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 11644
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    .line 11645
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11646
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 11648
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 11649
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_79

    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_79

    .line 11650
    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11656
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    :cond_79
    :goto_79
    iput-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .line 11657
    return-void

    .line 11638
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_7c
    iget-object v4, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "v":Landroid/widget/TextView;
    goto :goto_3f

    .line 11642
    :cond_81
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_49

    .line 11653
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_88
    const/4 v4, 0x0

    goto :goto_79
.end method

.method protected setInstanceByType(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x2

    .line 11561
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 11562
    if-ne p1, v1, :cond_23

    .line 11563
    const/16 v0, 0x3031

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 11565
    const v0, 0x1030354

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mAnimationStyle:I

    .line 11566
    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mHoverDetectTimeMS:I

    .line 11568
    iget v0, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    if-ne v0, v1, :cond_23

    .line 11569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 11570
    const/high16 v0, 0x40c00000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    .line 11573
    :cond_23
    return-void
.end method
