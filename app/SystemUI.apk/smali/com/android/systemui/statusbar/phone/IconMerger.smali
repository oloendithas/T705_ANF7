.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IconMerger"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-IconMerger"


# instance fields
.field private mCarrierNameView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIconSize:I

.field private mMoreView:Landroid/view/View;

.field private mOperatorLogoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    .local v0, "iconPadding":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/IconMerger;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/IconMerger;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/IconMerger;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/IconMerger;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/IconMerger;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method private checkOverflow(I)V
    .registers 11
    .param p1, "width"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 113
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v7, :cond_7

    .line 149
    :goto_6
    return-void

    .line 115
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 116
    .local v0, "N":I
    move v3, p1

    .line 117
    .local v3, "notificationIconsWidth":I
    const/4 v5, 0x0

    .line 118
    .local v5, "visibleChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_21

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1e

    add-int/lit8 v5, v5, 0x1

    .line 118
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 121
    :cond_21
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7a

    move v4, v2

    .line 123
    .local v4, "overflowShown":Z
    :goto_2a
    if-eqz v4, :cond_34

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->isNeedtoRemoveOneChildren()Z

    move-result v7

    if-eqz v7, :cond_34

    add-int/lit8 v5, v5, -0x1

    .line 124
    :cond_34
    iget v7, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v7, v5

    if-le v7, p1, :cond_7c

    .line 125
    .local v2, "moreRequired":Z
    :goto_39
    if-eq v2, v4, :cond_43

    .line 126
    new-instance v6, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v6, p0, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;ZZI)V

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 148
    :cond_43
#    const-string v6, "STATUSBAR-IconMerger"

#    new-instance v7, Ljava/lang/StringBuilder;

#    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

#    const-string v8, "checkOverflow("

#    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#    move-result-object v7

#    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

#    move-result-object v7

#    const-string v8, "), More:"

#    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#    move-result-object v7

#    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

#    move-result-object v7

#    const-string v8, ", Req:"

#    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#    move-result-object v7

#    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

#    move-result-object v7

#    const-string v8, " Child:"

#    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

#    move-result-object v7

#    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

#    move-result-object v7

#    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

#    move-result-object v7

#    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v2    # "moreRequired":Z
    .end local v4    # "overflowShown":Z
    :cond_7a
    move v4, v6

    .line 121
    goto :goto_2a

    .restart local v4    # "overflowShown":Z
    :cond_7c
    move v2, v6

    .line 124
    goto :goto_39
.end method


# virtual methods
.method public isNeedtoRemoveOneChildren()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 88
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-nez v1, :cond_6

    .line 94
    :cond_5
    :goto_5
    return v0

    .line 91
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_20

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    :cond_20
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 109
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 110
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 103
    .local v0, "width":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public setAttCarrierLabel(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;

    .line 83
    return-void
.end method

.method public setOperatorLogoIndicator(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    .line 77
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 69
    .local v0, "NaturalBarHeight":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    return-void
.end method
