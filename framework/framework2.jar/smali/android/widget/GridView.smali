.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    iput v8, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 91
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 93
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 94
    iput v9, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 99
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 100
    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 102
    const v6, 0x800003

    iput v6, p0, Landroid/widget/GridView;->mGravity:I

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 117
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 122
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 124
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 126
    .local v5, "vSpacing":I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 128
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 129
    .local v3, "index":I
    if-ltz v3, :cond_3e

    .line 130
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 133
    :cond_3e
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 134
    .local v1, "columnWidth":I
    if-lez v1, :cond_48

    .line 135
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 138
    :cond_48
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 139
    .local v4, "numColumns":I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 141
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 142
    if-ltz v3, :cond_59

    .line 143
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 146
    :cond_59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 796
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 797
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 800
    .local v0, "offset":I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 802
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8
    .param p1, "childInSelectedRow"    # Landroid/view/View;
    .param p2, "topSelectionPixel"    # I
    .param p3, "bottomSelectionPixel"    # I

    .prologue
    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 823
    .local v1, "spaceAbove":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 824
    .local v2, "spaceBelow":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 827
    .local v0, "offset":I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 829
    .end local v0    # "offset":I
    .end local v1    # "spaceAbove":I
    .end local v2    # "spaceBelow":I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 2178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2180
    .local v1, "childCount":I
    if-lez v1, :cond_29

    .line 2184
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 2187
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2188
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 2189
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 2192
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 2194
    :cond_20
    if-gez v2, :cond_23

    .line 2196
    const/4 v2, 0x0

    .line 2215
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 2216
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 2219
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_29
    return-void

    .line 2200
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2201
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 2203
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 2206
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 2209
    :cond_49
    if-lez v2, :cond_23

    .line 2211
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1565
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_c

    .line 1696
    :goto_b
    return v2

    .line 1569
    :cond_c
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_13

    .line 1570
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1573
    :cond_13
    const/4 v1, 0x0

    .line 1574
    .local v1, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1576
    .local v0, "action":I
    if-eq v0, v3, :cond_1d

    .line 1577
    sparse-switch p1, :sswitch_data_1d6

    .line 1680
    :cond_1d
    :goto_1d
    if-eqz v1, :cond_1b5

    move v2, v3

    .line 1681
    goto :goto_b

    .line 1579
    :sswitch_21
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1580
    :cond_2d
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 1581
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_3f

    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_3f
    move v1, v3

    :goto_40
    goto :goto_1d

    :cond_41
    move v1, v2

    goto :goto_40

    .line 1586
    :sswitch_43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1587
    :cond_4f
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 1588
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_61

    const/16 v4, 0x42

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_61
    move v1, v3

    :goto_62
    goto :goto_1d

    :cond_63
    move v1, v2

    goto :goto_62

    .line 1593
    :sswitch_65
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_71

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1594
    :cond_71
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 1595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_83

    :cond_81
    move v1, v3

    :goto_82
    goto :goto_1d

    :cond_83
    move v1, v2

    goto :goto_82

    .line 1596
    :cond_85
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1597
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_97

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_99

    :cond_97
    move v1, v3

    :goto_98
    goto :goto_1d

    :cond_99
    move v1, v2

    goto :goto_98

    .line 1602
    :sswitch_9b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 1603
    :cond_a7
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v4, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 1604
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_b7

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v4

    if-eqz v4, :cond_ba

    :cond_b7
    move v1, v3

    :goto_b8
    goto/16 :goto_1d

    :cond_ba
    move v1, v2

    goto :goto_b8

    .line 1605
    :cond_bc
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1606
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_ce

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_d1

    :cond_ce
    move v1, v3

    :goto_cf
    goto/16 :goto_1d

    :cond_d1
    move v1, v2

    goto :goto_cf

    .line 1612
    :sswitch_d3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1613
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v1

    .line 1614
    if-nez v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1d

    .line 1616
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    .line 1617
    const/4 v1, 0x1

    goto/16 :goto_1d

    .line 1623
    :sswitch_f1
    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_fd

    iget-object v4, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1624
    :cond_fd
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_114

    .line 1625
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_10f

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_112

    :cond_10f
    move v1, v3

    :goto_110
    goto/16 :goto_1d

    :cond_112
    move v1, v2

    goto :goto_110

    .line 1626
    :cond_114
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1627
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_126

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_129

    :cond_126
    move v1, v3

    :goto_127
    goto/16 :goto_1d

    :cond_129
    move v1, v2

    goto :goto_127

    .line 1633
    :sswitch_12b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_142

    .line 1634
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_13d

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_140

    :cond_13d
    move v1, v3

    :goto_13e
    goto/16 :goto_1d

    :cond_140
    move v1, v2

    goto :goto_13e

    .line 1635
    :cond_142
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1636
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_154

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_157

    :cond_154
    move v1, v3

    :goto_155
    goto/16 :goto_1d

    :cond_157
    move v1, v2

    goto :goto_155

    .line 1641
    :sswitch_159
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_170

    .line 1642
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_16b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v4

    if-eqz v4, :cond_16e

    :cond_16b
    move v1, v3

    :goto_16c
    goto/16 :goto_1d

    :cond_16e
    move v1, v2

    goto :goto_16c

    .line 1643
    :cond_170
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1644
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_182

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_185

    :cond_182
    move v1, v3

    :goto_183
    goto/16 :goto_1d

    :cond_185
    move v1, v2

    goto :goto_183

    .line 1649
    :sswitch_187
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1650
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_199

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_19c

    :cond_199
    move v1, v3

    :goto_19a
    goto/16 :goto_1d

    :cond_19c
    move v1, v2

    goto :goto_19a

    .line 1655
    :sswitch_19e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1656
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v4

    if-nez v4, :cond_1b0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v4

    if-eqz v4, :cond_1b3

    :cond_1b0
    move v1, v3

    :goto_1b1
    goto/16 :goto_1d

    :cond_1b3
    move v1, v2

    goto :goto_1b1

    .line 1684
    :cond_1b5
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1be

    move v2, v3

    .line 1685
    goto/16 :goto_b

    .line 1688
    :cond_1be
    packed-switch v0, :pswitch_data_204

    goto/16 :goto_b

    .line 1690
    :pswitch_1c3
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1692
    :pswitch_1c9
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1694
    :pswitch_1cf
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1577
    nop

    :sswitch_data_1d6
    .sparse-switch
        0x13 -> :sswitch_65
        0x14 -> :sswitch_9b
        0x15 -> :sswitch_21
        0x16 -> :sswitch_43
        0x17 -> :sswitch_d3
        0x3e -> :sswitch_f1
        0x42 -> :sswitch_d3
        0x5c -> :sswitch_12b
        0x5d -> :sswitch_159
        0x7a -> :sswitch_187
        0x7b -> :sswitch_19e
    .end sparse-switch

    .line 1688
    :pswitch_data_204
    .packed-switch 0x0
        :pswitch_1c3
        :pswitch_1c9
        :pswitch_1cf
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 13
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 595
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    add-int/lit8 v6, v7, -0x1

    .line 596
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    .line 598
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 601
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 603
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 607
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 609
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 610
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 614
    .local v3, "firstTop":I
    if-lez v0, :cond_60

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    .line 615
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 617
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 621
    :cond_46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 622
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_60

    .line 625
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_54

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_54
    sub-int/2addr v7, p1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 628
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 632
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_60
    return-void
.end method

.method private correctTooLow(III)V
    .registers 14
    .param p1, "numColumns"    # I
    .param p2, "verticalSpacing"    # I
    .param p3, "childCount"    # I

    .prologue
    .line 635
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_61

    if-lez p3, :cond_61

    .line 637
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 640
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 643
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 646
    .local v6, "start":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 650
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 651
    .local v7, "topOffset":I
    add-int/lit8 v8, p3, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 652
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 653
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    add-int/lit8 v5, v8, -0x1

    .line 657
    .local v5, "lastPosition":I
    if-lez v7, :cond_61

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_61

    .line 658
    :cond_39
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 660
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 664
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 665
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_61

    .line 668
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_54

    const/4 p1, 0x1

    .end local p1    # "numColumns":I
    :cond_54
    add-int v8, v5, p1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 671
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 675
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_61
    return-void
.end method

.method private determineColumns(I)Z
    .registers 10
    .param p1, "availableSpace"    # I

    .prologue
    const/4 v7, 0x1

    .line 964
    iget v2, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 965
    .local v2, "requestedHorizontalSpacing":I
    iget v4, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 966
    .local v4, "stretchMode":I
    iget v1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 967
    .local v1, "requestedColumnWidth":I
    const/4 v0, 0x0

    .line 969
    .local v0, "didNotInitiallyFit":Z
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    .line 970
    if-lez v1, :cond_32

    .line 972
    add-int v5, p1, v2

    add-int v6, v1, v2

    div-int/2addr v5, v6

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 983
    :goto_16
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v5, :cond_1c

    .line 984
    iput v7, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 987
    :cond_1c
    packed-switch v4, :pswitch_data_74

    .line 995
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v5, v1

    sub-int v5, p1, v5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v6, v2

    sub-int v3, v5, v6

    .line 998
    .local v3, "spaceLeftOver":I
    if-gez v3, :cond_2e

    .line 999
    const/4 v0, 0x1

    .line 1002
    :cond_2e
    packed-switch v4, :pswitch_data_7a

    .line 1034
    .end local v3    # "spaceLeftOver":I
    :goto_31
    return v0

    .line 976
    :cond_32
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    .line 980
    :cond_36
    iget v5, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_16

    .line 990
    :pswitch_3b
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 991
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1005
    .restart local v3    # "spaceLeftOver":I
    :pswitch_40
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v3, v5

    add-int/2addr v5, v1

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1006
    iput v2, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1011
    :pswitch_4a
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1012
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_5a

    .line 1013
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1016
    :cond_5a
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1022
    :pswitch_5f
    iput v1, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 1023
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v5, v7, :cond_6f

    .line 1024
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v5, v5, 0x1

    div-int v5, v3, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 1027
    :cond_6f
    add-int v5, v2, v3

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_31

    .line 987
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch

    .line 1002
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_40
        :pswitch_5f
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, "selectedView":Landroid/view/View;
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 283
    .local v0, "end":I
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_14

    .line 284
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    .line 287
    :cond_14
    :goto_14
    if-ge p2, v0, :cond_30

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v3, :cond_30

    .line 288
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 289
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_22

    .line 290
    move-object v1, v2

    .line 295
    :cond_22
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 297
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 298
    goto :goto_14

    .line 300
    .end local v2    # "temp":Landroid/view/View;
    :cond_30
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 301
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .param p1, "lastPosition"    # I
    .param p2, "nextBottom"    # I

    .prologue
    .line 426
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 427
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 429
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, p1

    .line 430
    .local v0, "invertedPosition":I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 432
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 689
    .local v2, "fadingEdgeLength":I
    iget v9, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 690
    .local v9, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 691
    .local v4, "numColumns":I
    iget v11, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 694
    .local v11, "verticalSpacing":I
    const/4 v6, -0x1

    .line 696
    .local v6, "rowEnd":I
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_30

    .line 697
    rem-int v12, v9, v4

    sub-int v7, v9, v12

    .line 708
    .local v7, "rowStart":I
    :goto_13
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v7}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v10

    .line 709
    .local v10, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v2, v4, v7}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 712
    .local v1, "bottomSelectionPixel":I
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v12, :cond_4a

    move v12, v6

    :goto_24
    const/4 v13, 0x1

    invoke-direct {p0, v12, p1, v13}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 714
    .local v8, "sel":Landroid/view/View;
    iput v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 716
    iget-object v5, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 718
    .local v5, "referenceView":Landroid/view/View;
    if-nez v5, :cond_4c

    .line 736
    :goto_2f
    return-object v8

    .line 699
    .end local v1    # "bottomSelectionPixel":I
    .end local v5    # "referenceView":Landroid/view/View;
    .end local v7    # "rowStart":I
    .end local v8    # "sel":Landroid/view/View;
    .end local v10    # "topSelectionPixel":I
    :cond_30
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    sub-int v3, v12, v9

    .line 701
    .local v3, "invertedSelection":I
    iget v12, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v12, v12, -0x1

    rem-int v13, v3, v4

    sub-int v13, v3, v13

    sub-int v6, v12, v13

    .line 702
    const/4 v12, 0x0

    sub-int v13, v6, v4

    add-int/lit8 v13, v13, 0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "rowStart":I
    goto :goto_13

    .end local v3    # "invertedSelection":I
    .restart local v1    # "bottomSelectionPixel":I
    .restart local v10    # "topSelectionPixel":I
    :cond_4a
    move v12, v7

    .line 712
    goto :goto_24

    .line 722
    .restart local v5    # "referenceView":Landroid/view/View;
    .restart local v8    # "sel":Landroid/view/View;
    :cond_4c
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 723
    invoke-direct {p0, v5, v10, v1}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 725
    iget-boolean v12, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v12, :cond_6e

    .line 726
    sub-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 727
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 728
    add-int v12, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_2f

    .line 730
    :cond_6e
    add-int v12, v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 731
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 732
    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v13, v11

    invoke-direct {p0, v12, v13}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_2f
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .param p1, "nextTop"    # I

    .prologue
    .line 416
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 417
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 418
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 421
    :cond_1d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 422
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 18
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v10

    .line 437
    .local v10, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 438
    .local v4, "numColumns":I
    iget v12, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 441
    .local v12, "verticalSpacing":I
    const/4 v7, -0x1

    .line 443
    .local v7, "rowEnd":I
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_4a

    .line 444
    rem-int v13, v10, v4

    sub-int v8, v10, v13

    .line 452
    .local v8, "rowStart":I
    :goto_11
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 453
    .local v2, "fadingEdgeLength":I
    move/from16 v0, p1

    invoke-direct {p0, v0, v2, v8}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v11

    .line 455
    .local v11, "topSelectionPixel":I
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v13, :cond_64

    move v13, v7

    :goto_20
    const/4 v14, 0x1

    invoke-direct {p0, v13, v11, v14}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v9

    .line 456
    .local v9, "sel":Landroid/view/View;
    iput v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 458
    iget-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 460
    .local v6, "referenceView":Landroid/view/View;
    iget-boolean v13, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v13, :cond_66

    .line 461
    add-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 462
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 463
    sub-int v13, v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 464
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 476
    :goto_49
    return-object v9

    .line 446
    .end local v2    # "fadingEdgeLength":I
    .end local v6    # "referenceView":Landroid/view/View;
    .end local v8    # "rowStart":I
    .end local v9    # "sel":Landroid/view/View;
    .end local v11    # "topSelectionPixel":I
    :cond_4a
    iget v13, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    sub-int v3, v13, v10

    .line 448
    .local v3, "invertedSelection":I
    iget v13, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v13, v13, -0x1

    rem-int v14, v3, v4

    sub-int v14, v3, v14

    sub-int v7, v13, v14

    .line 449
    const/4 v13, 0x0

    sub-int v14, v7, v4

    add-int/lit8 v14, v14, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .restart local v8    # "rowStart":I
    goto :goto_11

    .end local v3    # "invertedSelection":I
    .restart local v2    # "fadingEdgeLength":I
    .restart local v11    # "topSelectionPixel":I
    :cond_64
    move v13, v8

    .line 455
    goto :goto_20

    .line 466
    .restart local v6    # "referenceView":Landroid/view/View;
    .restart local v9    # "sel":Landroid/view/View;
    :cond_66
    move/from16 v0, p2

    invoke-direct {p0, v0, v2, v4, v8}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v1

    .line 468
    .local v1, "bottomSelectionPixel":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int v5, v1, v13

    .line 469
    .local v5, "offset":I
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 470
    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 471
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 472
    add-int v13, v7, v4

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int/2addr v14, v12

    invoke-direct {p0, v13, v14}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 473
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_49
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 534
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 537
    .local v6, "numColumns":I
    const/4 v4, -0x1

    .line 539
    .local v4, "motionRowEnd":I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1d

    .line 540
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 548
    .local v5, "motionRowStart":I
    :goto_b
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_37

    move v10, v4

    :goto_10
    const/4 v11, 0x1

    invoke-direct {p0, v10, p2, v11}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 551
    .local v8, "temp":Landroid/view/View;
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 553
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 555
    .local v7, "referenceView":Landroid/view/View;
    if-nez v7, :cond_39

    .line 556
    const/4 v8, 0x0

    .line 589
    .end local v8    # "temp":Landroid/view/View;
    :cond_1c
    :goto_1c
    return-object v8

    .line 542
    .end local v5    # "motionRowStart":I
    .end local v7    # "referenceView":Landroid/view/View;
    :cond_1d
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    sub-int v3, v10, p1

    .line 544
    .local v3, "invertedSelection":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 545
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "motionRowStart":I
    goto :goto_b

    .end local v3    # "invertedSelection":I
    :cond_37
    move v10, v5

    .line 548
    goto :goto_10

    .line 559
    .restart local v7    # "referenceView":Landroid/view/View;
    .restart local v8    # "temp":Landroid/view/View;
    :cond_39
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 564
    .local v9, "verticalSpacing":I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_67

    .line 565
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 567
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 569
    .local v1, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 570
    .local v2, "childCount":I
    if-lez v2, :cond_61

    .line 571
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 584
    :cond_61
    :goto_61
    if-nez v8, :cond_1c

    .line 586
    if-eqz v0, :cond_8a

    move-object v8, v0

    .line 587
    goto :goto_1c

    .line 574
    .end local v0    # "above":Landroid/view/View;
    .end local v1    # "below":Landroid/view/View;
    .end local v2    # "childCount":I
    :cond_67
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 575
    .restart local v1    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 576
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 578
    .restart local v0    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 579
    .restart local v2    # "childCount":I
    if-lez v2, :cond_61

    .line 580
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_61

    :cond_8a
    move-object v8, v1

    .line 589
    goto :goto_1c
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, "selectedView":Landroid/view/View;
    const/4 v0, 0x0

    .line 381
    .local v0, "end":I
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v3, v3, 0x22

    const/16 v4, 0x22

    if-ne v3, v4, :cond_f

    .line 382
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 385
    :cond_f
    :goto_f
    if-le p2, v0, :cond_2a

    if-ltz p1, :cond_2a

    .line 387
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 388
    .local v2, "temp":Landroid/view/View;
    if-eqz v2, :cond_1a

    .line 389
    move-object v1, v2

    .line 392
    :cond_1a
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 394
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 396
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 397
    goto :goto_f

    .line 399
    .end local v2    # "temp":Landroid/view/View;
    :cond_2a
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_36

    .line 400
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 403
    :cond_36
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 404
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 8
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "numColumns"    # I
    .param p4, "rowStart"    # I

    .prologue
    .line 751
    move v0, p1

    .line 752
    .local v0, "bottomSelectionPixel":I
    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_c

    .line 753
    sub-int/2addr v0, p2

    .line 755
    :cond_c
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "rowStart"    # I

    .prologue
    .line 768
    move v0, p1

    .line 769
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 770
    add-int/2addr v0, p2

    .line 772
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11
    .param p1, "childIndex"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1927
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1928
    .local v0, "count":I
    add-int/lit8 v6, v0, -0x1

    sub-int v1, v6, p1

    .line 1933
    .local v1, "invertedIndex":I
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_28

    .line 1934
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v6, p1, v6

    sub-int v3, p1, v6

    .line 1935
    .local v3, "rowStart":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1941
    .local v2, "rowEnd":I
    :goto_1d
    sparse-switch p2, :sswitch_data_5e

    .line 1962
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1937
    .end local v2    # "rowEnd":I
    .end local v3    # "rowStart":I
    :cond_28
    add-int/lit8 v6, v0, -0x1

    iget v7, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v7, v1, v7

    sub-int v7, v1, v7

    sub-int v2, v6, v7

    .line 1938
    .restart local v2    # "rowEnd":I
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3    # "rowStart":I
    goto :goto_1d

    .line 1945
    :sswitch_3d
    if-ne p1, v3, :cond_40

    .line 1960
    :cond_3f
    :goto_3f
    return v4

    :cond_40
    move v4, v5

    .line 1945
    goto :goto_3f

    .line 1948
    :sswitch_42
    if-eqz v3, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1951
    :sswitch_46
    if-eq p1, v2, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1954
    :sswitch_4a
    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    move v4, v5

    goto :goto_3f

    .line 1957
    :sswitch_50
    if-ne p1, v3, :cond_54

    if-eqz v3, :cond_3f

    :cond_54
    move v4, v5

    goto :goto_3f

    .line 1960
    :sswitch_56
    if-ne p1, v2, :cond_5c

    add-int/lit8 v6, v0, -0x1

    if-eq v2, v6, :cond_3f

    :cond_5c
    move v4, v5

    goto :goto_3f

    .line 1941
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_56
        0x2 -> :sswitch_50
        0x11 -> :sswitch_46
        0x21 -> :sswitch_4a
        0x42 -> :sswitch_3d
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 17
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z
    .param p6, "where"    # I

    .prologue
    .line 1353
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1355
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1356
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1359
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1371
    .end local v1    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    :goto_19
    return-object v9

    .line 1366
    .end local v9    # "child":Landroid/view/View;
    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1369
    .restart local v1    # "child":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1371
    .end local v1    # "child":Landroid/view/View;
    .restart local v9    # "child":Landroid/view/View;
    goto :goto_19
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 22
    .param p1, "startPos"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    .line 306
    .local v9, "columnWidth":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 308
    .local v12, "horizontalSpacing":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v14

    .line 313
    .local v14, "isLayoutRtl":Z
    if-eqz v14, :cond_77

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_75

    move v1, v12

    :goto_23
    sub-int v5, v3, v1

    .line 321
    .local v5, "nextLeft":I
    :goto_25
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_8a

    .line 322
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    add-int v1, v1, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 333
    .local v15, "last":I
    :cond_39
    :goto_39
    const/16 v17, 0x0

    .line 335
    .local v17, "selectedView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v11

    .line 336
    .local v11, "hasFocus":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v13

    .line 337
    .local v13, "inClick":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v16, v0

    .line 339
    .local v16, "selectedPosition":I
    const/4 v8, 0x0

    .line 340
    .local v8, "child":Landroid/view/View;
    move/from16 v2, p1

    .local v2, "pos":I
    :goto_4c
    if-ge v2, v15, :cond_bb

    .line 342
    move/from16 v0, v16

    if-ne v2, v0, :cond_b4

    const/4 v6, 0x1

    .line 345
    .local v6, "selected":Z
    :goto_53
    if-eqz p3, :cond_b6

    const/4 v7, -0x1

    .local v7, "where":I
    :goto_56
    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    .line 346
    invoke-direct/range {v1 .. v7}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v8

    .line 348
    if-eqz v14, :cond_b9

    const/4 v1, -0x1

    :goto_63
    mul-int/2addr v1, v9

    add-int/2addr v5, v1

    .line 349
    add-int/lit8 v1, v15, -0x1

    if-ge v2, v1, :cond_6a

    .line 350
    add-int/2addr v5, v12

    .line 353
    :cond_6a
    if-eqz v6, :cond_72

    if-nez v11, :cond_70

    if-eqz v13, :cond_72

    .line 354
    :cond_70
    move-object/from16 v17, v8

    .line 340
    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 314
    .end local v2    # "pos":I
    .end local v5    # "nextLeft":I
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "hasFocus":Z
    .end local v13    # "inClick":Z
    .end local v15    # "last":I
    .end local v16    # "selectedPosition":I
    .end local v17    # "selectedView":Landroid/view/View;
    :cond_75
    const/4 v1, 0x0

    goto :goto_23

    .line 317
    :cond_77
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_88

    move v1, v12

    :goto_85
    add-int v5, v3, v1

    .restart local v5    # "nextLeft":I
    goto :goto_25

    .end local v5    # "nextLeft":I
    :cond_88
    const/4 v1, 0x0

    goto :goto_85

    .line 324
    .restart local v5    # "nextLeft":I
    :cond_8a
    add-int/lit8 v15, p1, 0x1

    .line 325
    .restart local v15    # "last":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 327
    sub-int v1, v15, p1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v1, v3, :cond_39

    .line 328
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, v15, p1

    sub-int/2addr v1, v3

    add-int v3, v9, v12

    mul-int v10, v1, v3

    .line 329
    .local v10, "deltaLeft":I
    if-eqz v14, :cond_b2

    const/4 v1, -0x1

    :goto_af
    mul-int/2addr v1, v10

    add-int/2addr v5, v1

    goto :goto_39

    :cond_b2
    const/4 v1, 0x1

    goto :goto_af

    .line 342
    .end local v10    # "deltaLeft":I
    .restart local v2    # "pos":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v11    # "hasFocus":Z
    .restart local v13    # "inClick":Z
    .restart local v16    # "selectedPosition":I
    .restart local v17    # "selectedView":Landroid/view/View;
    :cond_b4
    const/4 v6, 0x0

    goto :goto_53

    .line 345
    .restart local v6    # "selected":Z
    :cond_b6
    sub-int v7, v2, p1

    goto :goto_56

    .line 348
    .restart local v7    # "where":I
    :cond_b9
    const/4 v1, 0x1

    goto :goto_63

    .line 358
    .end local v6    # "selected":Z
    .end local v7    # "where":I
    :cond_bb
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 360
    if-eqz v17, :cond_c9

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 364
    :cond_c9
    return-object v17
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 27
    .param p1, "delta"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 865
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 866
    .local v5, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 867
    .local v17, "selectedPosition":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 868
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .line 872
    .local v19, "verticalSpacing":I
    const/4 v13, -0x1

    .line 874
    .local v13, "rowEnd":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_6d

    .line 875
    sub-int v20, v17, p1

    sub-int v21, v17, p1

    rem-int v21, v21, v7

    sub-int v9, v20, v21

    .line 877
    .local v9, "oldRowStart":I
    rem-int v20, v17, v7

    sub-int v14, v17, v20

    .line 889
    .local v14, "rowStart":I
    :goto_29
    sub-int v12, v14, v9

    .line 891
    .local v12, "rowDelta":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v5, v14}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 892
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v5, v7, v14}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v4

    .line 896
    .local v4, "bottomSelectionPixel":I
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 901
    if-lez v12, :cond_fb

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_b5

    const/4 v8, 0x0

    .line 909
    .local v8, "oldBottom":I
    :goto_4a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c0

    move/from16 v20, v13

    :goto_54
    add-int v21, v8, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 910
    .local v15, "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 913
    .local v11, "referenceView":Landroid/view/View;
    if-nez v11, :cond_c3

    move-object/from16 v16, v15

    .line 960
    .end local v8    # "oldBottom":I
    .end local v15    # "sel":Landroid/view/View;
    .local v16, "sel":Landroid/view/View;
    :goto_6c
    return-object v16

    .line 879
    .end local v4    # "bottomSelectionPixel":I
    .end local v9    # "oldRowStart":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v12    # "rowDelta":I
    .end local v14    # "rowStart":I
    .end local v16    # "sel":Landroid/view/View;
    .end local v18    # "topSelectionPixel":I
    :cond_6d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    sub-int v6, v20, v17

    .line 881
    .local v6, "invertedSelection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    rem-int v21, v6, v7

    sub-int v21, v6, v21

    sub-int v13, v20, v21

    .line 882
    const/16 v20, 0x0

    sub-int v21, v13, v7

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 884
    .restart local v14    # "rowStart":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    sub-int v21, v17, p1

    sub-int v6, v20, v21

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    rem-int v21, v6, v7

    sub-int v21, v6, v21

    sub-int v9, v20, v21

    .line 886
    .restart local v9    # "oldRowStart":I
    const/16 v20, 0x0

    sub-int v21, v9, v7

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_29

    .line 906
    .end local v6    # "invertedSelection":I
    .restart local v4    # "bottomSelectionPixel":I
    .restart local v12    # "rowDelta":I
    .restart local v18    # "topSelectionPixel":I
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_4a

    .restart local v8    # "oldBottom":I
    :cond_c0
    move/from16 v20, v14

    .line 909
    goto :goto_54

    .line 917
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_c3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 950
    .end local v8    # "oldBottom":I
    :cond_ca
    :goto_ca
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_177

    .line 951
    sub-int v20, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 952
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 953
    add-int v20, v14, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    :goto_f7
    move-object/from16 v16, v15

    .line 960
    .end local v15    # "sel":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    goto/16 :goto_6c

    .line 918
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    :cond_fb
    if-gez v12, :cond_140

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_12a

    const/4 v10, 0x0

    .line 925
    .local v10, "oldTop":I
    :goto_106
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_135

    move/from16 v20, v13

    :goto_110
    sub-int v21, v10, v19

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 926
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 929
    .restart local v11    # "referenceView":Landroid/view/View;
    if-nez v11, :cond_138

    move-object/from16 v16, v15

    .line 930
    .end local v15    # "sel":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    goto/16 :goto_6c

    .line 922
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    :cond_12a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_106

    .restart local v10    # "oldTop":I
    :cond_135
    move/from16 v20, v14

    .line 925
    goto :goto_110

    .line 933
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_138
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1, v4}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto :goto_ca

    .line 938
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v15    # "sel":Landroid/view/View;
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_169

    const/4 v10, 0x0

    .line 941
    .restart local v10    # "oldTop":I
    :goto_149
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_174

    move/from16 v20, v13

    :goto_153
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v15

    .line 942
    .restart local v15    # "sel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 945
    .restart local v11    # "referenceView":Landroid/view/View;
    if-nez v11, :cond_ca

    move-object/from16 v16, v15

    .line 946
    .end local v15    # "sel":Landroid/view/View;
    .restart local v16    # "sel":Landroid/view/View;
    goto/16 :goto_6c

    .line 938
    .end local v10    # "oldTop":I
    .end local v11    # "referenceView":Landroid/view/View;
    .end local v16    # "sel":Landroid/view/View;
    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v10

    goto :goto_149

    .restart local v10    # "oldTop":I
    :cond_174
    move/from16 v20, v14

    .line 941
    goto :goto_153

    .line 955
    .end local v10    # "oldTop":I
    .restart local v11    # "referenceView":Landroid/view/View;
    .restart local v15    # "sel":Landroid/view/View;
    :cond_177
    add-int v20, v13, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 956
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 957
    add-int/lit8 v20, v14, -0x1

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_f7
.end method

.method private pinToBottom(I)V
    .registers 7
    .param p1, "childrenBottom"    # I

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 491
    .local v1, "count":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v4, :cond_1c

    .line 492
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 493
    .local v0, "bottom":I
    sub-int v2, p1, v0

    .line 494
    .local v2, "offset":I
    if-lez v2, :cond_1c

    .line 495
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 498
    .end local v0    # "bottom":I
    .end local v2    # "offset":I
    :cond_1c
    return-void
.end method

.method private pinToTop(I)V
    .registers 5
    .param p1, "childrenTop"    # I

    .prologue
    .line 480
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v2, :cond_14

    .line 481
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 482
    .local v1, "top":I
    sub-int v0, p1, v1

    .line 483
    .local v0, "offset":I
    if-gez v0, :cond_14

    .line 484
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 487
    .end local v0    # "offset":I
    .end local v1    # "top":I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 34
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flow"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z
    .param p8, "where"    # I

    .prologue
    .line 1392
    const-wide/16 v22, 0x8

    const-string/jumbo v24, "setupGridItem"

    invoke-static/range {v22 .. v24}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1394
    if-nez p1, :cond_12

    .line 1395
    const-string v22, "GridView"

    const-string v23, "child is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :goto_11
    return-void

    .line 1398
    :cond_12
    if-eqz p6, :cond_15f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v22

    if-eqz v22, :cond_15f

    const/4 v14, 0x1

    .line 1399
    .local v14, "isSelected":Z
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v22

    move/from16 v0, v22

    if-eq v14, v0, :cond_162

    const/16 v20, 0x1

    .line 1400
    .local v20, "updateChildSelected":Z
    :goto_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v16, v0

    .line 1401
    .local v16, "mode":I
    if-lez v16, :cond_166

    const/16 v22, 0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_166

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-ne v0, v1, :cond_166

    const/4 v13, 0x1

    .line 1403
    .local v13, "isPressed":Z
    :goto_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v22

    move/from16 v0, v22

    if-eq v13, v0, :cond_169

    const/16 v19, 0x1

    .line 1405
    .local v19, "updateChildPressed":Z
    :goto_4c
    if-eqz p7, :cond_56

    if-nez v20, :cond_56

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_16d

    :cond_56
    const/16 v17, 0x1

    .line 1409
    .local v17, "needToMeasure":Z
    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1410
    .local v18, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v18, :cond_66

    .line 1411
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .end local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v18, Landroid/widget/AbsListView$LayoutParams;

    .line 1413
    .restart local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1415
    if-eqz p7, :cond_171

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v22, v0

    if-nez v22, :cond_171

    .line 1416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1422
    :goto_8f
    if-eqz v20, :cond_9b

    .line 1423
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setSelected(Z)V

    .line 1424
    if-eqz v14, :cond_9b

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1429
    :cond_9b
    if-eqz v19, :cond_a2

    .line 1430
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setPressed(Z)V

    .line 1433
    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    if-eqz v22, :cond_cf

    .line 1434
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v22, v0

    if-eqz v22, :cond_18a

    move-object/from16 v22, p1

    .line 1435
    check-cast v22, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1442
    :cond_cf
    :goto_cf
    if-eqz v17, :cond_1b7

    .line 1443
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 1446
    .local v7, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    const/high16 v23, 0x40000000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    .line 1448
    .local v11, "childWidthSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1453
    .end local v7    # "childHeightSpec":I
    .end local v11    # "childWidthSpec":I
    :goto_102
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1454
    .local v21, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 1457
    .local v12, "h":I
    if-eqz p4, :cond_1bc

    move/from16 v10, p3

    .line 1459
    .local v10, "childTop":I
    :goto_10e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v15

    .line 1460
    .local v15, "layoutDirection":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 1461
    .local v5, "absoluteGravity":I
    and-int/lit8 v22, v5, 0x7

    packed-switch v22, :pswitch_data_1fa

    .line 1472
    :pswitch_123
    move/from16 v8, p5

    .line 1476
    .local v8, "childLeft":I
    :goto_125
    if-eqz v17, :cond_1de

    .line 1477
    add-int v9, v8, v21

    .line 1478
    .local v9, "childRight":I
    add-int v6, v10, v12

    .line 1479
    .local v6, "childBottom":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v9, v6}, Landroid/view/View;->layout(IIII)V

    .line 1485
    .end local v6    # "childBottom":I
    .end local v9    # "childRight":I
    :goto_130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_141

    .line 1486
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1489
    :cond_141
    if-eqz p7, :cond_158

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p2

    if-eq v0, v1, :cond_158

    .line 1491
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1494
    :cond_158
    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_11

    .line 1398
    .end local v5    # "absoluteGravity":I
    .end local v8    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "h":I
    .end local v13    # "isPressed":Z
    .end local v14    # "isSelected":Z
    .end local v15    # "layoutDirection":I
    .end local v16    # "mode":I
    .end local v17    # "needToMeasure":Z
    .end local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v19    # "updateChildPressed":Z
    .end local v20    # "updateChildSelected":Z
    .end local v21    # "w":I
    :cond_15f
    const/4 v14, 0x0

    goto/16 :goto_1b

    .line 1399
    .restart local v14    # "isSelected":Z
    :cond_162
    const/16 v20, 0x0

    goto/16 :goto_25

    .line 1401
    .restart local v16    # "mode":I
    .restart local v20    # "updateChildSelected":Z
    :cond_166
    const/4 v13, 0x0

    goto/16 :goto_42

    .line 1403
    .restart local v13    # "isPressed":Z
    :cond_169
    const/16 v19, 0x0

    goto/16 :goto_4c

    .line 1405
    .restart local v19    # "updateChildPressed":Z
    :cond_16d
    const/16 v17, 0x0

    goto/16 :goto_58

    .line 1418
    .restart local v17    # "needToMeasure":Z
    .restart local v18    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_171
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1419
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_8f

    .line 1436
    :cond_18a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v22, v0

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_cf

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_cf

    .line 1450
    :cond_1b7
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_102

    .line 1457
    .restart local v12    # "h":I
    .restart local v21    # "w":I
    :cond_1bc
    sub-int v10, p3, v12

    goto/16 :goto_10e

    .line 1463
    .restart local v5    # "absoluteGravity":I
    .restart local v10    # "childTop":I
    .restart local v15    # "layoutDirection":I
    :pswitch_1c0
    move/from16 v8, p5

    .line 1464
    .restart local v8    # "childLeft":I
    goto/16 :goto_125

    .line 1466
    .end local v8    # "childLeft":I
    :pswitch_1c4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v22, v22, 0x2

    add-int v8, p5, v22

    .line 1467
    .restart local v8    # "childLeft":I
    goto/16 :goto_125

    .line 1469
    .end local v8    # "childLeft":I
    :pswitch_1d2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v22, v0

    add-int v22, v22, p5

    sub-int v8, v22, v21

    .line 1470
    .restart local v8    # "childLeft":I
    goto/16 :goto_125

    .line 1481
    :cond_1de
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v22

    sub-int v22, v8, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1482
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v22, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_130

    .line 1461
    :pswitch_data_1fa
    .packed-switch 0x1
        :pswitch_1c4
        :pswitch_123
        :pswitch_1c0
        :pswitch_123
        :pswitch_1d2
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 12
    .param p1, "direction"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 1762
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1763
    .local v4, "selectedPosition":I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1768
    .local v3, "numColumns":I
    const/4 v2, 0x0

    .line 1770
    .local v2, "moved":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_30

    .line 1771
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1772
    .local v5, "startOfRowPos":I
    add-int v6, v5, v3

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1779
    .local v0, "endOfRowPos":I
    :goto_1b
    sparse-switch p1, :sswitch_data_98

    .line 1810
    :cond_1e
    :goto_1e
    if-eqz v2, :cond_2a

    .line 1811
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/View;->playSoundEffect(I)V

    .line 1812
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1815
    :cond_2a
    if-eqz v2, :cond_2f

    .line 1816
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1819
    :cond_2f
    return v2

    .line 1774
    .end local v0    # "endOfRowPos":I
    .end local v5    # "startOfRowPos":I
    :cond_30
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    sub-int v1, v6, v4

    .line 1775
    .local v1, "invertedSelection":I
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1776
    .restart local v0    # "endOfRowPos":I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5    # "startOfRowPos":I
    goto :goto_1b

    .line 1781
    .end local v1    # "invertedSelection":I
    :sswitch_48
    if-lez v5, :cond_1e

    .line 1782
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1783
    sub-int v6, v4, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1784
    const/4 v2, 0x1

    goto :goto_1e

    .line 1788
    :sswitch_57
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_1e

    .line 1789
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1790
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1791
    const/4 v2, 0x1

    goto :goto_1e

    .line 1795
    :sswitch_6e
    if-lt v4, v5, :cond_1e

    if-lez v4, :cond_1e

    .line 1796
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1797
    add-int/lit8 v6, v4, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1798
    const/4 v2, 0x1

    goto :goto_1e

    .line 1802
    :sswitch_7f
    if-gt v4, v0, :cond_1e

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1e

    .line 1803
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1804
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1805
    const/4 v2, 0x1

    goto :goto_1e

    .line 1779
    :sswitch_data_98
    .sparse-switch
        0x11 -> :sswitch_6e
        0x21 -> :sswitch_48
        0x42 -> :sswitch_7f
        0x82 -> :sswitch_57
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "index"    # I
    .param p4, "count"    # I

    .prologue
    .line 1128
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1131
    .local v0, "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_d

    .line 1132
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1133
    .restart local v0    # "animationParams":Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1136
    :cond_d
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 1137
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 1138
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1139
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1141
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_2c

    .line 1142
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1143
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1150
    :goto_2b
    return-void

    .line 1145
    :cond_2c
    add-int/lit8 v2, p4, -0x1

    sub-int v1, v2, p3

    .line 1147
    .local v1, "invertedIndex":I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1148
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2b
.end method

.method protected computeVerticalScrollExtent()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 2223
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2224
    .local v1, "count":I
    if-lez v1, :cond_3e

    .line 2225
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2226
    .local v4, "numColumns":I
    add-int v9, v1, v4

    add-int/lit8 v9, v9, -0x1

    div-int v5, v9, v4

    .line 2228
    .local v5, "rowCount":I
    mul-int/lit8 v2, v5, 0x64

    .line 2230
    .local v2, "extent":I
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2231
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2232
    .local v6, "top":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2233
    .local v3, "height":I
    if-lez v3, :cond_23

    .line 2234
    mul-int/lit8 v8, v6, 0x64

    div-int/2addr v8, v3

    add-int/2addr v2, v8

    .line 2237
    :cond_23
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2238
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2239
    .local v0, "bottom":I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2240
    if-lez v3, :cond_3d

    .line 2241
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v8, v0, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v2, v8

    .line 2246
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "numColumns":I
    .end local v5    # "rowCount":I
    .end local v6    # "top":I
    .end local v7    # "view":Landroid/view/View;
    :cond_3d
    :goto_3d
    return v2

    :cond_3e
    move v2, v8

    goto :goto_3d
.end method

.method protected computeVerticalScrollOffset()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2251
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v8, :cond_4d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4d

    .line 2252
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2253
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2254
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2255
    .local v0, "height":I
    if-lez v0, :cond_4d

    .line 2256
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2257
    .local v1, "numColumns":I
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    div-int v3, v8, v1

    .line 2261
    .local v3, "rowCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v8

    if-eqz v8, :cond_4e

    mul-int v8, v3, v1

    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int v2, v8, v9

    .line 2263
    .local v2, "oddItemsOnFirstRow":I
    :goto_2e
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, v2

    div-int v6, v8, v1

    .line 2264
    .local v6, "whichRow":I
    mul-int/lit8 v8, v6, 0x64

    mul-int/lit8 v9, v4, 0x64

    div-int/2addr v9, v0

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2268
    .end local v0    # "height":I
    .end local v1    # "numColumns":I
    .end local v2    # "oddItemsOnFirstRow":I
    .end local v3    # "rowCount":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "whichRow":I
    :cond_4d
    return v7

    .restart local v0    # "height":I
    .restart local v1    # "numColumns":I
    .restart local v3    # "rowCount":I
    .restart local v4    # "top":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_4e
    move v2, v7

    .line 2261
    goto :goto_2e
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .prologue
    .line 2274
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 2275
    .local v0, "numColumns":I
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 2276
    .local v2, "rowCount":I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2277
    .local v1, "result":I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_28

    .line 2279
    iget v3, p0, Landroid/view/View;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2281
    :cond_28
    return v1
.end method

.method fillGap(Z)V
    .registers 11
    .param p1, "down"    # Z

    .prologue
    const/16 v8, 0x22

    .line 232
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 233
    .local v1, "numColumns":I
    iget v6, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 235
    .local v6, "verticalSpacing":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 237
    .local v0, "count":I
    if-eqz p1, :cond_3d

    .line 238
    const/4 v3, 0x0

    .line 239
    .local v3, "paddingTop":I
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_17

    .line 240
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v3

    .line 242
    :cond_17
    if-lez v0, :cond_3b

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v5, v7, v6

    .line 244
    .local v5, "startOffset":I
    :goto_25
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v4, v7, v0

    .line 245
    .local v4, "position":I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v7, :cond_30

    .line 246
    add-int/lit8 v7, v1, -0x1

    add-int/2addr v4, v7

    .line 248
    :cond_30
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 249
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 266
    .end local v3    # "paddingTop":I
    :goto_3a
    return-void

    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    .restart local v3    # "paddingTop":I
    :cond_3b
    move v5, v3

    .line 242
    goto :goto_25

    .line 251
    .end local v3    # "paddingTop":I
    :cond_3d
    const/4 v2, 0x0

    .line 252
    .local v2, "paddingBottom":I
    iget v7, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v7, v7, 0x22

    if-ne v7, v8, :cond_48

    .line 253
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v2

    .line 255
    :cond_48
    if-lez v0, :cond_67

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v5, v7, v6

    .line 257
    .restart local v5    # "startOffset":I
    :goto_55
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 258
    .restart local v4    # "position":I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v7, :cond_6e

    .line 259
    sub-int/2addr v4, v1

    .line 263
    :goto_5c
    invoke-direct {p0, v4, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 264
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-direct {p0, v1, v6, v7}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_3a

    .line 255
    .end local v4    # "position":I
    .end local v5    # "startOffset":I
    :cond_67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v5, v7, v2

    goto :goto_55

    .line 261
    .restart local v4    # "position":I
    .restart local v5    # "startOffset":I
    :cond_6e
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 503
    .local v0, "childCount":I
    if-lez v0, :cond_33

    .line 505
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 506
    .local v2, "numColumns":I
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 507
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_33

    .line 508
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 509
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 520
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :goto_1c
    return v3

    .line 507
    .restart local v1    # "i":I
    .restart local v2    # "numColumns":I
    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    .line 513
    .end local v1    # "i":I
    :cond_1f
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_21
    if-ltz v1, :cond_33

    .line 514
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 515
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1c

    .line 513
    :cond_31
    sub-int/2addr v1, v2

    goto :goto_21

    .line 520
    .end local v1    # "i":I
    .end local v2    # "numColumns":I
    :cond_33
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method fullScroll(I)Z
    .registers 5
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x2

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "moved":Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    .line 1735
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1736
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1737
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1738
    const/4 v0, 0x1

    .line 1746
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 1747
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1750
    :cond_15
    return v0

    .line 1739
    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    .line 1740
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1741
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1742
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1743
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .registers 2

    .prologue
    .line 2126
    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .prologue
    .line 1991
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .registers 2

    .prologue
    .line 2026
    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2170
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .registers 2

    .prologue
    .line 2143
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .registers 2

    .prologue
    .line 2046
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .registers 2

    .prologue
    .line 2096
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .registers 2

    .prologue
    .line 2077
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 22

    .prologue
    .line 1154
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1155
    .local v3, "blockLayoutRequests":Z
    if-nez v3, :cond_e

    .line 1156
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1160
    :cond_e
    :try_start_e
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_2d

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_1d7

    .line 1328
    if-nez v3, :cond_2c

    .line 1329
    :goto_24
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1332
    :cond_2c
    return-void

    .line 1170
    :cond_2d
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 1171
    .local v7, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    .line 1173
    .local v6, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1175
    .local v5, "childCount":I
    const/4 v9, 0x0

    .line 1178
    .local v9, "delta":I
    const/16 v16, 0x0

    .line 1179
    .local v16, "oldSel":Landroid/view/View;
    const/4 v15, 0x0

    .line 1180
    .local v15, "oldFirst":Landroid/view/View;
    const/4 v14, 0x0

    .line 1183
    .local v14, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_314

    .line 1202
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1203
    .local v12, "index":I
    if-ltz v12, :cond_7d

    if-ge v12, v5, :cond_7d

    .line 1204
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1208
    :cond_7d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1211
    .end local v12    # "index":I
    :cond_87
    :goto_87
    :pswitch_87
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1212
    .local v8, "dataChanged":Z
    if-eqz v8, :cond_90

    .line 1213
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 1218
    :cond_90
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    if-nez v19, :cond_d1

    .line 1219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->resetList()V

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1328
    if-nez v3, :cond_2c

    goto :goto_24

    .line 1185
    .end local v8    # "dataChanged":Z
    :pswitch_a1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v12, v19, v20

    .line 1186
    .restart local v12    # "index":I
    if-ltz v12, :cond_87

    if-ge v12, v5, :cond_87

    .line 1187
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    goto :goto_87

    .line 1196
    .end local v12    # "index":I
    :pswitch_ba
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_87

    .line 1197
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto :goto_87

    .line 1224
    .restart local v8    # "dataChanged":Z
    :cond_d1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1228
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1229
    .local v10, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v17, v0

    .line 1231
    .local v17, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v8, :cond_101

    .line 1232
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_eb
    if-ge v11, v5, :cond_106

    .line 1233
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int v20, v10, v11

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1232
    add-int/lit8 v11, v11, 0x1

    goto :goto_eb

    .line 1236
    .end local v11    # "i":I
    :cond_101
    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v10}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1241
    :cond_106
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 1242
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1244
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_324

    .line 1272
    if-nez v5, :cond_25e

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v19, v0

    if-nez v19, :cond_234

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_230

    :cond_12d
    const/16 v19, -0x1

    :goto_12f
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1276
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1298
    .end local v7    # "childrenTop":I
    .local v18, "sel":Landroid/view/View;
    :goto_13c
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1300
    if-eqz v18, :cond_2c4

    .line 1301
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 1302
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1311
    :cond_156
    :goto_156
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1312
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_183

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1315
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1317
    :cond_183
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1318
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1320
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 1322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    if-lez v19, :cond_1a6

    .line 1323
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1326
    :cond_1a6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1328
    if-nez v3, :cond_2c

    goto/16 :goto_24

    .line 1246
    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :pswitch_1ad
    if-eqz v14, :cond_1bc

    .line 1247
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7, v6}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto :goto_13c

    .line 1249
    .end local v18    # "sel":Landroid/view/View;
    :cond_1bc
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v18

    .line 1251
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .line 1253
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_1c4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1254
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v18

    .line 1255
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1d5
    .catchall {:try_start_2d .. :try_end_1d5} :catchall_1d7

    goto/16 :goto_13c

    .line 1328
    .end local v5    # "childCount":I
    .end local v6    # "childrenBottom":I
    .end local v7    # "childrenTop":I
    .end local v8    # "dataChanged":Z
    .end local v9    # "delta":I
    .end local v10    # "firstPosition":I
    .end local v14    # "newSel":Landroid/view/View;
    .end local v15    # "oldFirst":Landroid/view/View;
    .end local v16    # "oldSel":Landroid/view/View;
    .end local v17    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v18    # "sel":Landroid/view/View;
    :catchall_1d7
    move-exception v19

    if-nez v3, :cond_1e2

    .line 1329
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1328
    :cond_1e2
    throw v19

    .line 1258
    .restart local v5    # "childCount":I
    .restart local v6    # "childrenBottom":I
    .restart local v7    # "childrenTop":I
    .restart local v8    # "dataChanged":Z
    .restart local v9    # "delta":I
    .restart local v10    # "firstPosition":I
    .restart local v14    # "newSel":Landroid/view/View;
    .restart local v15    # "oldFirst":Landroid/view/View;
    .restart local v16    # "oldSel":Landroid/view/View;
    .restart local v17    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :pswitch_1e3
    :try_start_1e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v6}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v18

    .line 1259
    .restart local v18    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_13c

    .line 1262
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_1f8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1263
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .line 1265
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_210
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .line 1266
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .line 1269
    .end local v18    # "sel":Landroid/view/View;
    :pswitch_228
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v6}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v18

    .line 1270
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .line 1274
    .end local v18    # "sel":Landroid/view/View;
    :cond_230
    const/16 v19, 0x0

    goto/16 :goto_12f

    .line 1278
    :cond_234
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v19, v0

    add-int/lit8 v13, v19, -0x1

    .line 1279
    .local v13, "last":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_24a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_25b

    :cond_24a
    const/16 v19, -0x1

    :goto_24c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1281
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v18

    .line 1282
    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .end local v18    # "sel":Landroid/view/View;
    :cond_25b
    move/from16 v19, v13

    .line 1279
    goto :goto_24c

    .line 1284
    .end local v13    # "last":I
    :cond_25e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-ltz v19, :cond_28f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_28f

    .line 1285
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v19, v0

    if-nez v16, :cond_28a

    .end local v7    # "childrenTop":I
    :goto_280
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_28a
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_280

    .line 1287
    :cond_28f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2b8

    .line 1288
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v19, v0

    if-nez v15, :cond_2b3

    .end local v7    # "childrenTop":I
    :goto_2a9
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .end local v18    # "sel":Landroid/view/View;
    .restart local v7    # "childrenTop":I
    :cond_2b3
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_2a9

    .line 1291
    :cond_2b8
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v18

    .restart local v18    # "sel":Landroid/view/View;
    goto/16 :goto_13c

    .line 1303
    .end local v7    # "childrenTop":I
    :cond_2c4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    if-lez v19, :cond_301

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_301

    .line 1304
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1305
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_156

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_156

    .line 1307
    .end local v4    # "child":Landroid/view/View;
    :cond_301
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_312
    .catchall {:try_start_1e3 .. :try_end_312} :catchall_1d7

    goto/16 :goto_156

    .line 1183
    :pswitch_data_314
    .packed-switch 0x1
        :pswitch_87
        :pswitch_a1
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_ba
    .end packed-switch

    .line 1244
    :pswitch_data_324
    .packed-switch 0x1
        :pswitch_1c4
        :pswitch_1ad
        :pswitch_1e3
        :pswitch_1f8
        :pswitch_210
        :pswitch_228
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v1, -0x1

    .line 216
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 217
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move p1, v1

    .line 224
    .end local p1    # "position":I
    :cond_c
    :goto_c
    return p1

    .line 221
    .restart local p1    # "position":I
    :cond_d
    if-ltz p1, :cond_13

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt p1, v2, :cond_c

    :cond_13
    move p1, v1

    .line 222
    goto :goto_c
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1882
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1884
    const/4 v1, -0x1

    .line 1885
    .local v1, "closestChildIndex":I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1886
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1890
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1891
    .local v6, "otherRect":Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1892
    .local v4, "minDistance":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1893
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v0, :cond_37

    .line 1895
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1893
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1899
    :cond_24
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1900
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1901
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1902
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1904
    .local v2, "distance":I
    if-ge v2, v4, :cond_21

    .line 1905
    move v4, v2

    .line 1906
    move v1, v3

    goto :goto_21

    .line 1911
    .end local v0    # "childCount":I
    .end local v2    # "distance":I
    .end local v3    # "i":I
    .end local v4    # "minDistance":I
    .end local v5    # "other":Landroid/view/View;
    .end local v6    # "otherRect":Landroid/graphics/Rect;
    :cond_37
    if-ltz v1, :cond_40

    .line 1912
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1916
    :goto_3f
    return-void

    .line 1914
    :cond_40
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_3f
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2286
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2287
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2288
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2292
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2293
    const-class v3, Landroid/widget/GridView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2295
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2296
    .local v1, "columnsCount":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    div-int v2, v3, v1

    .line 2297
    .local v2, "rowsCount":I
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 2298
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 2299
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v9, 0x1

    .line 2304
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2306
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 2307
    .local v2, "count":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 2308
    .local v1, "columnsCount":I
    div-int v8, v2, v1

    .line 2312
    .local v8, "rowsCount":I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_2c

    .line 2313
    rem-int v0, p2, v1

    .line 2314
    .local v0, "column":I
    div-int v7, p2, v1

    .line 2322
    .local v7, "row":I
    :goto_16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 2323
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v6, :cond_3d

    iget v10, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v11, -0x2

    if-eq v10, v11, :cond_3d

    move v4, v9

    .line 2324
    .local v4, "isHeading":Z
    :goto_24
    invoke-static {v0, v9, v7, v9, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v5

    .line 2325
    .local v5, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 2326
    return-void

    .line 2316
    .end local v0    # "column":I
    .end local v4    # "isHeading":Z
    .end local v5    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "row":I
    :cond_2c
    add-int/lit8 v10, v2, -0x1

    sub-int v3, v10, p2

    .line 2318
    .local v3, "invertedIndex":I
    add-int/lit8 v10, v1, -0x1

    rem-int v11, v3, v1

    sub-int v0, v10, v11

    .line 2319
    .restart local v0    # "column":I
    add-int/lit8 v10, v8, -0x1

    div-int v11, v3, v1

    sub-int v7, v10, v11

    .restart local v7    # "row":I
    goto :goto_16

    .line 2323
    .end local v3    # "invertedIndex":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3d
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1551
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1556
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1561
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1040
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1042
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1043
    .local v17, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1044
    .local v11, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 1045
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1047
    .local v12, "heightSize":I
    if-nez v17, :cond_45

    .line 1048
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_1e6

    .line 1049
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 1053
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v19

    add-int v18, v18, v19

    .line 1056
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    .line 1057
    .local v7, "childWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v10

    .line 1059
    .local v10, "didNotInitiallyFit":Z
    const/4 v4, 0x0

    .line 1060
    .local v4, "childHeight":I
    const/4 v6, 0x0

    .line 1062
    .local v6, "childState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_202

    const/16 v19, 0x0

    :goto_73
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 1063
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1064
    .local v9, "count":I
    if-lez v9, :cond_11c

    .line 1065
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1067
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1068
    .local v16, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_a4

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1070
    .restart local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1072
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1073
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1075
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v5

    .line 1077
    .local v5, "childHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1079
    .local v8, "childWidthSpec":I
    invoke-virtual {v3, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1081
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1082
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v6

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v19

    if-eqz v19, :cond_11c

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1089
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v16    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_11c
    if-nez v11, :cond_142

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v19, v19, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1094
    :cond_142
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v11, v0, :cond_17c

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1097
    .local v15, "ourSize":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/GridView;->mNumColumns:I

    .line 1098
    .local v14, "numColumns":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_167
    if-ge v13, v9, :cond_17b

    .line 1099
    add-int/2addr v15, v4

    .line 1100
    add-int v19, v13, v14

    move/from16 v0, v19

    if-ge v0, v9, :cond_178

    .line 1101
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 1103
    :cond_178
    if-lt v15, v12, :cond_20e

    .line 1104
    move v15, v12

    .line 1108
    :cond_17b
    move v12, v15

    .line 1111
    .end local v13    # "i":I
    .end local v14    # "numColumns":I
    .end local v15    # "ourSize":I
    :cond_17c
    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1d8

    .line 1112
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    move/from16 v21, v0

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v15, v19, v20

    .line 1115
    .restart local v15    # "ourSize":I
    move/from16 v0, v18

    if-gt v15, v0, :cond_1d4

    if-eqz v10, :cond_1d8

    .line 1116
    :cond_1d4
    const/high16 v19, 0x1000000

    or-int v18, v18, v19

    .line 1120
    .end local v15    # "ourSize":I
    :cond_1d8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1121
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1122
    return-void

    .line 1051
    .end local v4    # "childHeight":I
    .end local v6    # "childState":I
    .end local v7    # "childWidth":I
    .end local v9    # "count":I
    .end local v10    # "didNotInitiallyFit":Z
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int v18, v19, v20

    goto/16 :goto_3f

    .line 1062
    .restart local v4    # "childHeight":I
    .restart local v6    # "childState":I
    .restart local v7    # "childWidth":I
    .restart local v10    # "didNotInitiallyFit":Z
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/ListAdapter;->getCount()I

    move-result v19

    goto/16 :goto_73

    .line 1098
    .restart local v9    # "count":I
    .restart local v13    # "i":I
    .restart local v14    # "numColumns":I
    .restart local v15    # "ourSize":I
    :cond_20e
    add-int/2addr v13, v14

    goto/16 :goto_167
.end method

.method pageScroll(I)Z
    .registers 7
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1707
    const/4 v0, -0x1

    .line 1709
    .local v0, "nextPage":I
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1e

    .line 1710
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1715
    :cond_11
    :goto_11
    if-ltz v0, :cond_1d

    .line 1716
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1717
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1718
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1719
    const/4 v1, 0x1

    .line 1722
    :cond_1d
    return v1

    .line 1711
    :cond_1e
    const/16 v2, 0x82

    if-ne p1, v2, :cond_11

    .line 1712
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_11
.end method

.method sequenceScroll(I)Z
    .registers 15
    .param p1, "direction"    # I

    .prologue
    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1827
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1828
    .local v5, "selectedPosition":I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1829
    .local v4, "numColumns":I
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1833
    .local v0, "count":I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_32

    .line 1834
    div-int v10, v5, v4

    mul-int v7, v10, v4

    .line 1835
    .local v7, "startOfRow":I
    add-int v10, v7, v4

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1842
    .local v1, "endOfRow":I
    :goto_1b
    const/4 v3, 0x0

    .line 1843
    .local v3, "moved":Z
    const/4 v6, 0x0

    .line 1844
    .local v6, "showScroll":Z
    packed-switch p1, :pswitch_data_68

    .line 1868
    :cond_20
    :goto_20
    if-eqz v3, :cond_2c

    .line 1869
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 1870
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1873
    :cond_2c
    if-eqz v6, :cond_31

    .line 1874
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1877
    :cond_31
    return v3

    .line 1837
    .end local v1    # "endOfRow":I
    .end local v3    # "moved":Z
    .end local v6    # "showScroll":Z
    .end local v7    # "startOfRow":I
    :cond_32
    add-int/lit8 v10, v0, -0x1

    sub-int v2, v10, v5

    .line 1838
    .local v2, "invertedSelection":I
    add-int/lit8 v10, v0, -0x1

    div-int v11, v2, v4

    mul-int/2addr v11, v4

    sub-int v1, v10, v11

    .line 1839
    .restart local v1    # "endOfRow":I
    sub-int v10, v1, v4

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .restart local v7    # "startOfRow":I
    goto :goto_1b

    .line 1846
    .end local v2    # "invertedSelection":I
    .restart local v3    # "moved":Z
    .restart local v6    # "showScroll":Z
    :pswitch_46
    add-int/lit8 v10, v0, -0x1

    if-ge v5, v10, :cond_20

    .line 1848
    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1849
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1850
    const/4 v3, 0x1

    .line 1852
    if-ne v5, v1, :cond_56

    move v6, v8

    :goto_55
    goto :goto_20

    :cond_56
    move v6, v9

    goto :goto_55

    .line 1857
    :pswitch_58
    if-lez v5, :cond_20

    .line 1859
    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1860
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1861
    const/4 v3, 0x1

    .line 1863
    if-ne v5, v7, :cond_66

    move v6, v8

    :goto_65
    goto :goto_20

    :cond_66
    move v6, v9

    goto :goto_65

    .line 1844
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_58
        :pswitch_46
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 55
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 7
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 172
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 175
    :cond_11
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 176
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 177
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 180
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 183
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_71

    .line 186
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 187
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 188
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 189
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 191
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 192
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 197
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_6c

    .line 198
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 202
    .local v0, "position":I
    :goto_5f
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 211
    .end local v0    # "position":I
    :goto_68
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 212
    return-void

    .line 200
    :cond_6c
    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_5f

    .line 206
    .end local v0    # "position":I
    :cond_71
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 208
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_68
.end method

.method public setColumnWidth(I)V
    .registers 3
    .param p1, "columnWidth"    # I

    .prologue
    .line 2107
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 2108
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 2109
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2111
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 1977
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1978
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 1979
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 1981
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 2004
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2005
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 2006
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2008
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .param p1, "numColumns"    # I

    .prologue
    .line 2154
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 2155
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 2156
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2158
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1507
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1508
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1512
    :goto_9
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1513
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_15

    .line 1514
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1516
    :cond_15
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1517
    return-void

    .line 1510
    :cond_19
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 1526
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1528
    .local v4, "previousSelectedPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v5, :cond_b

    .line 1529
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1532
    :cond_b
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1533
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1535
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_35

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    sub-int v0, v5, v6

    .line 1537
    .local v0, "next":I
    :goto_1d
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_38

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    sub-int v2, v5, v4

    .line 1540
    .local v2, "previous":I
    :goto_27
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1541
    .local v1, "nextRow":I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1543
    .local v3, "previousRow":I
    if-eq v1, v3, :cond_34

    .line 1544
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1547
    :cond_34
    return-void

    .line 1535
    .end local v0    # "next":I
    .end local v1    # "nextRow":I
    .end local v2    # "previous":I
    .end local v3    # "previousRow":I
    :cond_35
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    goto :goto_1d

    .restart local v0    # "next":I
    :cond_38
    move v2, v4

    .line 1537
    goto :goto_27
.end method

.method public setStretchMode(I)V
    .registers 3
    .param p1, "stretchMode"    # I

    .prologue
    .line 2089
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 2090
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 2091
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2093
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 2061
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 2062
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 2063
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2065
    :cond_9
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 848
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 849
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 838
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 839
    return-void
.end method
