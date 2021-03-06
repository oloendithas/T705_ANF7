.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 114
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 128
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 130
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 133
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 138
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 154
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 159
    .local v3, "entries":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_3b

    .line 160
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :cond_3b
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 165
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_44

    .line 167
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :cond_44
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 172
    .local v5, "osHeader":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4e

    .line 173
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_4e
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 178
    .local v4, "osFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_58

    .line 179
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_58
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 185
    .local v2, "dividerHeight":I
    if-eqz v2, :cond_62

    .line 186
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 189
    :cond_62
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 190
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    return-void
.end method

.method static synthetic access$200(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/ListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 3126
    add-int/lit8 v2, p2, -0x1

    .line 3127
    .local v2, "abovePosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3128
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 3129
    .local v3, "edgeOfNewChild":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3131
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .param p1, "theView"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 3135
    add-int/lit8 v2, p2, 0x1

    .line 3136
    .local v2, "belowPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3137
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 3138
    .local v3, "edgeOfNewChild":I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 3140
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 211
    .local v1, "childCount":I
    if-lez v1, :cond_29

    .line 214
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 219
    .local v2, "delta":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 222
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 224
    :cond_20
    if-gez v2, :cond_23

    .line 226
    const/4 v2, 0x0

    .line 244
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 245
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 248
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "delta":I
    :cond_29
    return-void

    .line 230
    :cond_2a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 233
    .restart local v2    # "delta":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_49

    .line 236
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 239
    :cond_49
    if-lez v2, :cond_23

    .line 240
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private amountToScroll(II)I
    .registers 15
    .param p1, "direction"    # I
    .param p2, "nextSelectedPosition"    # I

    .prologue
    .line 2735
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2736
    .local v4, "listBottom":I
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2738
    .local v5, "listTop":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 2740
    .local v7, "numChildren":I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_85

    .line 2741
    add-int/lit8 v3, v7, -0x1

    .line 2742
    .local v3, "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_1f

    .line 2743
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2745
    :cond_1f
    :goto_1f
    if-gt v7, v3, :cond_32

    .line 2747
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 2748
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 2750
    :cond_32
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2751
    .local v8, "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2753
    .local v9, "viewToMakeVisible":Landroid/view/View;
    move v1, v4

    .line 2754
    .local v1, "goalBottom":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_46

    .line 2755
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2758
    :cond_46
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_4e

    .line 2760
    const/4 v10, 0x0

    .line 2812
    .end local v1    # "goalBottom":I
    :goto_4d
    return v10

    .line 2763
    .restart local v1    # "goalBottom":I
    :cond_4e
    const/4 v10, -0x1

    if-eq p2, v10, :cond_5f

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_5f

    .line 2766
    const/4 v10, 0x0

    goto :goto_4d

    .line 2769
    :cond_5f
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2771
    .local v0, "amountToScroll":I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_7c

    .line 2773
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2774
    .local v6, "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2777
    .end local v6    # "max":I
    :cond_7c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_4d

    .line 2779
    .end local v0    # "amountToScroll":I
    .end local v1    # "goalBottom":I
    .end local v3    # "indexToMakeVisible":I
    .end local v8    # "positionToMakeVisible":I
    .end local v9    # "viewToMakeVisible":Landroid/view/View;
    :cond_85
    const/4 v3, 0x0

    .line 2780
    .restart local v3    # "indexToMakeVisible":I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_8d

    .line 2781
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2783
    :cond_8d
    :goto_8d
    if-gez v3, :cond_a4

    .line 2785
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v10, v11}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    .line 2786
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2787
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    goto :goto_8d

    .line 2789
    :cond_a4
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2790
    .restart local v8    # "positionToMakeVisible":I
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2791
    .restart local v9    # "viewToMakeVisible":Landroid/view/View;
    move v2, v5

    .line 2792
    .local v2, "goalTop":I
    if-lez v8, :cond_b4

    .line 2793
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2795
    :cond_b4
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_bc

    .line 2797
    const/4 v10, 0x0

    goto :goto_4d

    .line 2800
    :cond_bc
    const/4 v10, -0x1

    if-eq p2, v10, :cond_cc

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_cc

    .line 2803
    const/4 v10, 0x0

    goto :goto_4d

    .line 2806
    :cond_cc
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2807
    .restart local v0    # "amountToScroll":I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_e5

    .line 2809
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2810
    .restart local v6    # "max":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2812
    .end local v6    # "max":I
    :cond_e5
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_4d
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 8
    .param p1, "direction"    # I
    .param p2, "newFocus"    # Landroid/view/View;
    .param p3, "positionOfNewFocus"    # I

    .prologue
    .line 3004
    const/4 v0, 0x0

    .line 3005
    .local v0, "amountToScroll":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3006
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3007
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2b

    .line 3008
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 3009
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 3010
    if-lez p3, :cond_2a

    .line 3011
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 3023
    :cond_2a
    :goto_2a
    return v0

    .line 3015
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3016
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_2a

    .line 3017
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 3018
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_2a

    .line 3019
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2a
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 19
    .param p1, "direction"    # I

    .prologue
    .line 2902
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v11

    .line 2904
    .local v11, "selectedView":Landroid/view/View;
    if-eqz v11, :cond_4a

    invoke-virtual {v11}, Landroid/view/View;->hasFocus()Z

    move-result v14

    if-eqz v14, :cond_4a

    .line 2905
    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v8

    .line 2906
    .local v8, "oldFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v8, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2931
    .end local v8    # "oldFocus":Landroid/view/View;
    .local v7, "newFocus":Landroid/view/View;
    :goto_1c
    if-eqz v7, :cond_113

    .line 2932
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v9

    .line 2936
    .local v9, "positionOfNewFocus":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v9, v14, :cond_d9

    .line 2937
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v10

    .line 2938
    .local v10, "selectablePosition":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_d9

    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_40

    if-lt v10, v9, :cond_48

    :cond_40
    const/16 v14, 0x21

    move/from16 v0, p1

    if-ne v0, v14, :cond_d9

    if-le v10, v9, :cond_d9

    .line 2941
    :cond_48
    const/4 v14, 0x0

    .line 2963
    .end local v9    # "positionOfNewFocus":I
    .end local v10    # "selectablePosition":I
    :goto_49
    return-object v14

    .line 2908
    .end local v7    # "newFocus":Landroid/view/View;
    :cond_4a
    const/16 v14, 0x82

    move/from16 v0, p1

    if-ne v0, v14, :cond_94

    .line 2909
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v14, :cond_8e

    const/4 v12, 0x1

    .line 2910
    .local v12, "topFadingEdgeShowing":Z
    :goto_57
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_90

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_63
    add-int v5, v15, v14

    .line 2912
    .local v5, "listTop":I
    if-eqz v11, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v14

    if-le v14, v5, :cond_92

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v13

    .line 2916
    .local v13, "ySearchPoint":I
    :goto_71
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2928
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :goto_7d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v14, v0, v15, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v7

    .restart local v7    # "newFocus":Landroid/view/View;
    goto :goto_1c

    .line 2909
    .end local v7    # "newFocus":Landroid/view/View;
    .end local v13    # "ySearchPoint":I
    :cond_8e
    const/4 v12, 0x0

    goto :goto_57

    .line 2910
    .restart local v12    # "topFadingEdgeShowing":Z
    :cond_90
    const/4 v14, 0x0

    goto :goto_63

    .restart local v5    # "listTop":I
    :cond_92
    move v13, v5

    .line 2912
    goto :goto_71

    .line 2918
    .end local v5    # "listTop":I
    .end local v12    # "topFadingEdgeShowing":Z
    :cond_94
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v14, v15, :cond_d3

    const/4 v2, 0x1

    .line 2920
    .local v2, "bottomFadingEdgeShowing":Z
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v14, v15

    if-eqz v2, :cond_d5

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v14

    :goto_b8
    sub-int v4, v15, v14

    .line 2922
    .local v4, "listBottom":I
    if-eqz v11, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v14

    if-ge v14, v4, :cond_d7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 2926
    .restart local v13    # "ySearchPoint":I
    :goto_c6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v0, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7d

    .line 2918
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .end local v13    # "ySearchPoint":I
    :cond_d3
    const/4 v2, 0x0

    goto :goto_a6

    .line 2920
    .restart local v2    # "bottomFadingEdgeShowing":Z
    :cond_d5
    const/4 v14, 0x0

    goto :goto_b8

    .restart local v4    # "listBottom":I
    :cond_d7
    move v13, v4

    .line 2922
    goto :goto_c6

    .line 2945
    .end local v2    # "bottomFadingEdgeShowing":Z
    .end local v4    # "listBottom":I
    .restart local v7    # "newFocus":Landroid/view/View;
    .restart local v9    # "positionOfNewFocus":I
    :cond_d9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v9}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v3

    .line 2947
    .local v3, "focusScroll":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v6

    .line 2948
    .local v6, "maxScrollAmount":I
    if-ge v3, v6, :cond_f9

    .line 2950
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2951
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v3}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 2953
    :cond_f9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v14

    if-ge v14, v6, :cond_113

    .line 2958
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->requestFocus(I)Z

    .line 2959
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    invoke-virtual {v14, v9, v6}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2960
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    goto/16 :goto_49

    .line 2963
    .end local v3    # "focusScroll":I
    .end local v6    # "maxScrollAmount":I
    .end local v9    # "positionOfNewFocus":I
    :cond_113
    const/4 v14, 0x0

    goto/16 :goto_49
.end method

.method private arrowScrollImpl(I)Z
    .registers 14
    .param p1, "direction"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v11, -0x1

    const/4 v9, 0x0

    .line 2514
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_a

    .line 2593
    :cond_9
    :goto_9
    return v9

    .line 2518
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2519
    .local v6, "selectedView":Landroid/view/View;
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 2521
    .local v5, "selectedPos":I
    invoke-direct {p0, v6, v5, p1}, Landroid/widget/ListView;->nextSelectedPositionForDirection(Landroid/view/View;II)I

    move-result v4

    .line 2522
    .local v4, "nextSelectedPosition":I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2525
    .local v0, "amountToScroll":I
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_bc

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v1

    .line 2526
    .local v1, "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v1, :cond_2a

    .line 2527
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2528
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2531
    :cond_2a
    if-eqz v1, :cond_bf

    move v3, v8

    .line 2532
    .local v3, "needToRedraw":Z
    :goto_2d
    if-eq v4, v11, :cond_53

    .line 2533
    if-eqz v1, :cond_c2

    move v7, v8

    :goto_32
    invoke-direct {p0, v6, p1, v4, v7}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2534
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2535
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2536
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2537
    move v5, v4

    .line 2538
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_4f

    if-nez v1, :cond_4f

    .line 2541
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2542
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_4f

    .line 2543
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2546
    .end local v2    # "focused":Landroid/view/View;
    :cond_4f
    const/4 v3, 0x1

    .line 2547
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 2550
    :cond_53
    if-lez v0, :cond_6a

    .line 2552
    const-string v7, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 2553
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2555
    :cond_62
    const/16 v7, 0x21

    if-ne p1, v7, :cond_c5

    .end local v0    # "amountToScroll":I
    :goto_66
    invoke-direct {p0, v0}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2556
    const/4 v3, 0x1

    .line 2561
    :cond_6a
    iget-boolean v7, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v7, :cond_8b

    if-nez v1, :cond_8b

    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 2563
    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2564
    .restart local v2    # "focused":Landroid/view/View;
    invoke-direct {p0, v2, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v7

    if-lez v7, :cond_8b

    .line 2565
    :cond_88
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2570
    .end local v2    # "focused":Landroid/view/View;
    :cond_8b
    if-ne v4, v11, :cond_a0

    if-eqz v6, :cond_a0

    invoke-direct {p0, v6, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 2572
    const/4 v6, 0x0

    .line 2573
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 2574
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 2578
    iput v11, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2581
    :cond_a0
    if-eqz v3, :cond_9

    .line 2582
    if-eqz v6, :cond_ad

    .line 2583
    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 2584
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2586
    :cond_ad
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v7

    if-nez v7, :cond_b6

    .line 2587
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2589
    :cond_b6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    move v9, v8

    .line 2590
    goto/16 :goto_9

    .line 2525
    .end local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3    # "needToRedraw":Z
    .restart local v0    # "amountToScroll":I
    :cond_bc
    const/4 v1, 0x0

    goto/16 :goto_20

    .restart local v1    # "focusResult":Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_bf
    move v3, v9

    .line 2531
    goto/16 :goto_2d

    .restart local v3    # "needToRedraw":Z
    :cond_c2
    move v7, v9

    .line 2533
    goto/16 :goto_32

    .line 2555
    :cond_c5
    neg-int v0, v0

    goto :goto_66
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 534
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 536
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 537
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, v4, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 538
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 539
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 540
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 536
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 544
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_1f
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x82

    const/16 v6, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2147
    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    move v4, v3

    .line 2298
    :cond_12
    :goto_12
    return v4

    .line 2151
    :cond_13
    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v5, :cond_1a

    .line 2152
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2155
    :cond_1a
    const/4 v2, 0x0

    .line 2156
    .local v2, "handled":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2158
    .local v0, "action":I
    if-eq v0, v4, :cond_24

    .line 2159
    sparse-switch p1, :sswitch_data_1ca

    .line 2279
    :cond_24
    :goto_24
    if-nez v2, :cond_12

    .line 2283
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2287
    packed-switch v0, :pswitch_data_1f8

    move v4, v3

    .line 2298
    goto :goto_12

    .line 2161
    :sswitch_31
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 2162
    :cond_3d
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 2163
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2164
    if-nez v2, :cond_24

    move v1, p2

    .line 2165
    .end local p2    # "count":I
    .local v1, "count":I
    :goto_48
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_24

    .line 2166
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2167
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_48

    .line 2173
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_55
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2174
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_67

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_69

    :cond_67
    move v2, v4

    :goto_68
    goto :goto_24

    :cond_69
    move v2, v3

    goto :goto_68

    .line 2179
    :sswitch_6b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_77

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 2180
    :cond_77
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 2181
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2182
    if-nez v2, :cond_24

    move v1, p2

    .line 2183
    .end local p2    # "count":I
    .restart local v1    # "count":I
    :goto_82
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "count":I
    .restart local p2    # "count":I
    if-lez v1, :cond_24

    .line 2184
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2185
    const/4 v2, 0x1

    move v1, p2

    .end local p2    # "count":I
    .restart local v1    # "count":I
    goto :goto_82

    .line 2191
    .end local v1    # "count":I
    .restart local p2    # "count":I
    :cond_8f
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2192
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_a1

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_a3

    :cond_a1
    move v2, v4

    :goto_a2
    goto :goto_24

    :cond_a3
    move v2, v3

    goto :goto_a2

    .line 2197
    :sswitch_a5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_b1

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2198
    :cond_b1
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 2199
    const/16 v5, 0x11

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_24

    .line 2204
    :sswitch_bd
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_c9

    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2205
    :cond_c9
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/AbsListView;->mTwCurrentFocusPosition:I

    .line 2206
    const/16 v5, 0x42

    invoke-direct {p0, v5}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v2

    goto/16 :goto_24

    .line 2212
    :sswitch_d5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2213
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v2

    .line 2214
    if-nez v2, :cond_24

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_24

    .line 2216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->keyPressed()V

    .line 2217
    const/4 v2, 0x1

    goto/16 :goto_24

    .line 2223
    :sswitch_f3
    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_ff

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_24

    .line 2224
    :cond_ff
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_117

    .line 2225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_111

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_115

    :cond_111
    move v2, v4

    .line 2229
    :cond_112
    :goto_112
    const/4 v2, 0x1

    goto/16 :goto_24

    :cond_115
    move v2, v3

    .line 2225
    goto :goto_112

    .line 2226
    :cond_117
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 2227
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_129

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_12b

    :cond_129
    move v2, v4

    :goto_12a
    goto :goto_112

    :cond_12b
    move v2, v3

    goto :goto_12a

    .line 2234
    :sswitch_12d
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_144

    .line 2235
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_13f

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_142

    :cond_13f
    move v2, v4

    :goto_140
    goto/16 :goto_24

    :cond_142
    move v2, v3

    goto :goto_140

    .line 2236
    :cond_144
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2237
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_156

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_159

    :cond_156
    move v2, v4

    :goto_157
    goto/16 :goto_24

    :cond_159
    move v2, v3

    goto :goto_157

    .line 2242
    :sswitch_15b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_172

    .line 2243
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_16d

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->pageScroll(I)Z

    move-result v5

    if-eqz v5, :cond_170

    :cond_16d
    move v2, v4

    :goto_16e
    goto/16 :goto_24

    :cond_170
    move v2, v3

    goto :goto_16e

    .line 2244
    :cond_172
    invoke-virtual {p3, v8}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2245
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_184

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_187

    :cond_184
    move v2, v4

    :goto_185
    goto/16 :goto_24

    :cond_187
    move v2, v3

    goto :goto_185

    .line 2250
    :sswitch_189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2251
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_19b

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_19e

    :cond_19b
    move v2, v4

    :goto_19c
    goto/16 :goto_24

    :cond_19e
    move v2, v3

    goto :goto_19c

    .line 2256
    :sswitch_1a0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2257
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_1b2

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v5

    if-eqz v5, :cond_1b5

    :cond_1b2
    move v2, v4

    :goto_1b3
    goto/16 :goto_24

    :cond_1b5
    move v2, v3

    goto :goto_1b3

    .line 2289
    :pswitch_1b7
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2292
    :pswitch_1bd
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2295
    :pswitch_1c3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_12

    .line 2159
    nop

    :sswitch_data_1ca
    .sparse-switch
        0x13 -> :sswitch_31
        0x14 -> :sswitch_6b
        0x15 -> :sswitch_a5
        0x16 -> :sswitch_bd
        0x17 -> :sswitch_d5
        0x3e -> :sswitch_f3
        0x42 -> :sswitch_d5
        0x5c -> :sswitch_12d
        0x5d -> :sswitch_15b
        0x7a -> :sswitch_189
        0x7b -> :sswitch_1a0
    .end sparse-switch

    .line 2287
    :pswitch_data_1f8
    .packed-switch 0x0
        :pswitch_1b7
        :pswitch_1bd
        :pswitch_1c3
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .param p1, "childCount"    # I

    .prologue
    .line 1395
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    add-int/lit8 v6, v7, -0x1

    .line 1396
    .local v6, "lastPosition":I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5e

    if-lez p1, :cond_5e

    .line 1399
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1402
    .local v5, "lastChild":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1405
    .local v4, "lastBottom":I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1409
    .local v1, "end":I
    sub-int v0, v1, v4

    .line 1410
    .local v0, "bottomOffset":I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1411
    .local v2, "firstChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1415
    .local v3, "firstTop":I
    if-lez v0, :cond_5e

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_5e

    .line 1416
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 1418
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1421
    :cond_46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1422
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_5e

    .line 1425
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1427
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1432
    .end local v0    # "bottomOffset":I
    .end local v1    # "end":I
    .end local v2    # "firstChild":Landroid/view/View;
    .end local v3    # "firstTop":I
    .end local v4    # "lastBottom":I
    .end local v5    # "lastChild":Landroid/view/View;
    :cond_5e
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .param p1, "childCount"    # I

    .prologue
    .line 1444
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_5e

    if-lez p1, :cond_5e

    .line 1447
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    .local v1, "firstChild":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1453
    .local v2, "firstTop":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1456
    .local v6, "start":I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1460
    .local v0, "end":I
    sub-int v7, v2, v6

    .line 1461
    .local v7, "topOffset":I
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1462
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1463
    .local v3, "lastBottom":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    add-int/lit8 v5, v8, -0x1

    .line 1467
    .local v5, "lastPosition":I
    if-lez v7, :cond_5e

    .line 1468
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_5f

    .line 1469
    :cond_39
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_45

    .line 1471
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1474
    :cond_45
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 1475
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_5e

    .line 1478
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1480
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1487
    .end local v0    # "end":I
    .end local v1    # "firstChild":Landroid/view/View;
    .end local v2    # "firstTop":I
    .end local v3    # "lastBottom":I
    .end local v4    # "lastChild":Landroid/view/View;
    .end local v5    # "lastPosition":I
    .end local v6    # "start":I
    .end local v7    # "topOffset":I
    :cond_5e
    :goto_5e
    return-void

    .line 1482
    .restart local v0    # "end":I
    .restart local v1    # "firstChild":Landroid/view/View;
    .restart local v2    # "firstTop":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "lastChild":Landroid/view/View;
    .restart local v5    # "lastPosition":I
    .restart local v6    # "start":I
    .restart local v7    # "topOffset":I
    :cond_5f
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_5e

    .line 1483
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_5e
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    .line 3034
    const/4 v0, 0x0

    .line 3035
    .local v0, "distance":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3036
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3037
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 3038
    .local v1, "listBottom":I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2b

    .line 3039
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 3043
    :cond_2a
    :goto_2a
    return v0

    .line 3040
    :cond_2b
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_2a

    .line 3041
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_2a
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .registers 6
    .param p1, "sel"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 810
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 811
    .local v0, "dividerHeight":I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_1e

    .line 812
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 813
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 814
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 820
    :goto_1d
    return-void

    .line 816
    :cond_1e
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 817
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 818
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_1d
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextTop"    # I

    .prologue
    const/4 v3, 0x1

    .line 687
    const/4 v8, 0x0

    .line 689
    .local v8, "selectedView":Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int v7, v0, v1

    .line 690
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_15

    .line 691
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v0

    .line 694
    :cond_15
    :goto_15
    if-ge p2, v7, :cond_3d

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_3d

    .line 696
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3b

    move v5, v3

    .line 697
    .local v5, "selected":Z
    :goto_20
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 699
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_38

    .line 700
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 701
    if-eqz v5, :cond_38

    .line 702
    move-object v8, v6

    .line 705
    :cond_38
    add-int/lit8 p1, p1, 0x1

    .line 706
    goto :goto_15

    .line 696
    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_3b
    const/4 v5, 0x0

    goto :goto_20

    .line 708
    :cond_3d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 709
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 12
    .param p1, "childrenTop"    # I
    .param p2, "childrenBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 778
    sub-int v6, p2, p1

    .line 780
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v1

    .line 782
    .local v1, "position":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 784
    .local v7, "sel":Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 786
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 787
    .local v8, "selHeight":I
    if-gt v8, v6, :cond_21

    .line 788
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 791
    :cond_21
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 793
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_30

    .line 794
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 799
    :goto_2f
    return-object v7

    .line 796
    :cond_30
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_2f
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 18
    .param p1, "selectedTop"    # I
    .param p2, "childrenTop"    # I
    .param p3, "childrenBottom"    # I

    .prologue
    .line 834
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v8

    .line 835
    .local v8, "fadingEdgeLength":I
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 839
    .local v2, "selectedPosition":I
    move/from16 v0, p2

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v13

    .line 841
    .local v13, "topSelectionPixel":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v8, v2}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v7

    .line 844
    .local v7, "bottomSelectionPixel":I
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x1

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 848
    .local v10, "sel":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, v7, :cond_47

    .line 851
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v1, v13

    .line 855
    .local v11, "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v1, v7

    .line 856
    .local v12, "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 859
    .local v9, "offset":I
    neg-int v1, v9

    invoke-virtual {v10, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 875
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_38
    :goto_38
    invoke-direct {p0, v10, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 877
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_61

    .line 878
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 883
    :goto_46
    return-object v10

    .line 860
    :cond_47
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v1, v13, :cond_38

    .line 863
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v11, v13, v1

    .line 867
    .restart local v11    # "spaceAbove":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v12, v7, v1

    .line 868
    .restart local v12    # "spaceBelow":I
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 871
    .restart local v9    # "offset":I
    invoke-virtual {v10, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_38

    .line 880
    .end local v9    # "offset":I
    .end local v11    # "spaceAbove":I
    .end local v12    # "spaceBelow":I
    :cond_61
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_46
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 4
    .param p1, "nextTop"    # I

    .prologue
    .line 758
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 759
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 760
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 763
    :cond_1d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    const/4 v3, 0x1

    .line 1347
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3e

    move v5, v3

    .line 1348
    .local v5, "tempIsSelected":Z
    :goto_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1350
    .local v10, "temp":Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1355
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1356
    .local v9, "dividerHeight":I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_40

    .line 1357
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1359
    .local v6, "above":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1360
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1361
    .local v7, "below":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1362
    .local v8, "childCount":I
    if-lez v8, :cond_3b

    .line 1363
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1376
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_63

    .line 1381
    .end local v10    # "temp":Landroid/view/View;
    :goto_3d
    return-object v10

    .line 1347
    .end local v5    # "tempIsSelected":Z
    .end local v6    # "above":Landroid/view/View;
    .end local v7    # "below":Landroid/view/View;
    .end local v8    # "childCount":I
    .end local v9    # "dividerHeight":I
    :cond_3e
    const/4 v5, 0x0

    goto :goto_6

    .line 1366
    .restart local v5    # "tempIsSelected":Z
    .restart local v9    # "dividerHeight":I
    .restart local v10    # "temp":Landroid/view/View;
    :cond_40
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1368
    .restart local v7    # "below":Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1369
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1370
    .restart local v6    # "above":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1371
    .restart local v8    # "childCount":I
    if-lez v8, :cond_3b

    .line 1372
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_3b

    .line 1378
    :cond_63
    if-eqz v6, :cond_67

    move-object v10, v6

    .line 1379
    goto :goto_3d

    :cond_67
    move-object v10, v7

    .line 1381
    goto :goto_3d
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 12
    .param p1, "pos"    # I
    .param p2, "nextBottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 723
    const/4 v8, 0x0

    .line 725
    .local v8, "selectedView":Landroid/view/View;
    const/4 v7, 0x0

    .line 726
    .local v7, "end":I
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_f

    .line 727
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 730
    :cond_f
    :goto_f
    if-le p2, v7, :cond_35

    if-ltz p1, :cond_35

    .line 732
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_33

    const/4 v5, 0x1

    .line 733
    .local v5, "selected":Z
    :goto_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 735
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_30

    .line 736
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 737
    if-eqz v5, :cond_30

    .line 738
    move-object v8, v6

    .line 741
    :cond_30
    add-int/lit8 p1, p1, -0x1

    .line 742
    goto :goto_f

    .end local v5    # "selected":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_33
    move v5, v3

    .line 732
    goto :goto_18

    .line 744
    :cond_35
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 745
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setVisibleRangeHint(II)V

    .line 746
    return-object v8
.end method

.method private getAccessibilityFocusedChild()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1757
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 1758
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-nez v2, :cond_9

    move-object v0, v3

    .line 1777
    :cond_8
    :goto_8
    return-object v0

    .line 1762
    :cond_9
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 1763
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_11

    move-object v0, v3

    .line 1764
    goto :goto_8

    .line 1767
    :cond_11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1768
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_15
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_23

    if-eq v1, p0, :cond_23

    move-object v0, v1

    .line 1769
    check-cast v0, Landroid/view/View;

    .line 1770
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_15

    .line 1773
    :cond_23
    instance-of v4, v1, Landroid/view/View;

    if-nez v4, :cond_8

    move-object v0, v3

    .line 1774
    goto :goto_8
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2719
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .registers 6
    .param p1, "childrenBottom"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 896
    move v0, p1

    .line 897
    .local v0, "bottomSelectionPixel":I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_8

    .line 898
    sub-int/2addr v0, p2

    .line 900
    :cond_8
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .param p1, "childrenTop"    # I
    .param p2, "fadingEdgeLength"    # I
    .param p3, "selectedPosition"    # I

    .prologue
    .line 913
    move v0, p1

    .line 914
    .local v0, "topSelectionPixel":I
    if-lez p3, :cond_4

    .line 915
    add-int/2addr v0, p2

    .line 917
    :cond_4
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    .line 2403
    const/16 v5, 0x11

    if-eq p1, v5, :cond_10

    const/16 v5, 0x42

    if-eq p1, v5, :cond_10

    .line 2404
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2408
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2409
    .local v3, "numChildren":I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_74

    if-lez v3, :cond_74

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_74

    .line 2410
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2411
    .local v4, "selectedView":Landroid/view/View;
    if-eqz v4, :cond_74

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_74

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_74

    .line 2414
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2415
    .local v0, "currentFocus":Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4    # "selectedView":Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2417
    .local v2, "nextFocus":Landroid/view/View;
    if-eqz v2, :cond_5f

    .line 2419
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2420
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2421
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2422
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 2423
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 2424
    const/4 v5, 0x1

    .line 2438
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :goto_5e
    return v5

    .line 2431
    .restart local v0    # "currentFocus":Landroid/view/View;
    .restart local v2    # "nextFocus":Landroid/view/View;
    :cond_5f
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2433
    .local v1, "globalNextFocus":Landroid/view/View;
    if-eqz v1, :cond_74

    .line 2434
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_5e

    .line 2438
    .end local v0    # "currentFocus":Landroid/view/View;
    .end local v1    # "globalNextFocus":Landroid/view/View;
    .end local v2    # "nextFocus":Landroid/view/View;
    :cond_74
    const/4 v5, 0x0

    goto :goto_5e
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 15
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "newSelectedPosition"    # I
    .param p4, "newFocusAssigned"    # Z

    .prologue
    .line 2611
    const/4 v8, -0x1

    if-ne p3, v8, :cond_c

    .line 2612
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2622
    :cond_c
    const/4 v5, 0x0

    .line 2623
    .local v5, "topSelected":Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2624
    .local v4, "selectedIndex":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2625
    .local v2, "nextSelectedIndex":I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_42

    .line 2626
    move v7, v2

    .line 2627
    .local v7, "topViewIndex":I
    move v1, v4

    .line 2628
    .local v1, "bottomViewIndex":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2629
    .local v6, "topView":Landroid/view/View;
    move-object v0, p1

    .line 2630
    .local v0, "bottomView":Landroid/view/View;
    const/4 v5, 0x1

    .line 2638
    :goto_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2641
    .local v3, "numChildren":I
    if-eqz v6, :cond_34

    .line 2642
    if-nez p4, :cond_4a

    if-eqz v5, :cond_4a

    const/4 v8, 0x1

    :goto_2e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2643
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2647
    :cond_34
    if-eqz v0, :cond_41

    .line 2648
    if-nez p4, :cond_4c

    if-nez v5, :cond_4c

    const/4 v8, 0x1

    :goto_3b
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2649
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2651
    :cond_41
    return-void

    .line 2632
    .end local v0    # "bottomView":Landroid/view/View;
    .end local v1    # "bottomViewIndex":I
    .end local v3    # "numChildren":I
    .end local v6    # "topView":Landroid/view/View;
    .end local v7    # "topViewIndex":I
    :cond_42
    move v7, v4

    .line 2633
    .restart local v7    # "topViewIndex":I
    move v1, v2

    .line 2634
    .restart local v1    # "bottomViewIndex":I
    move-object v6, p1

    .line 2635
    .restart local v6    # "topView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "bottomView":Landroid/view/View;
    goto :goto_23

    .line 2642
    .restart local v3    # "numChildren":I
    :cond_4a
    const/4 v8, 0x0

    goto :goto_2e

    .line 2648
    :cond_4c
    const/4 v8, 0x0

    goto :goto_3b
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2986
    if-ne p1, p2, :cond_4

    .line 2991
    :cond_3
    :goto_3
    return v1

    .line 2990
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2991
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private logActivity()V
    .registers 2

    .prologue
    .line 3899
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 3900
    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/View;

    .prologue
    .line 3834
    const-string/jumbo v3, "service.gate.enabled"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3896
    :cond_f
    :goto_f
    return-void

    .line 3840
    :cond_10
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    move-object v2, p1

    .line 3841
    check-cast v2, Landroid/view/ViewGroup;

    .line 3842
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3843
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_28

    .line 3844
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 3843
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 3848
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_28
    instance-of v3, p1, Landroid/widget/CheckBox;

    if-eqz v3, :cond_66

    .line 3850
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_ea

    const-string v3, "CHECKED"

    :goto_55
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    :cond_66
    instance-of v3, p1, Landroid/widget/RadioButton;

    if-eqz v3, :cond_a4

    .line 3856
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_ee

    const-string v3, "CHECKED"

    :goto_93
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    :cond_a4
    if-eqz p2, :cond_d8

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_d8

    move-object v3, p1

    .line 3862
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_d8

    .line 3863
    const-string v4, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</GATE-M>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3868
    :cond_d8
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_f

    .line 3869
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/widget/ListView$1;

    invoke-direct {v4, p0, p1}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_f

    .line 3850
    :cond_ea
    const-string v3, "UNCHECKED"

    goto/16 :goto_55

    .line 3856
    :cond_ee
    const-string v3, "UNCHECKED"

    goto :goto_93
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, -0x1

    .line 2849
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2850
    .local v1, "firstPosition":I
    const/16 v7, 0x82

    if-ne p1, v7, :cond_3e

    .line 2851
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_19

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, 0x1

    .line 2854
    .local v5, "startPos":I
    :goto_f
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_1b

    move v4, v6

    .line 2889
    :cond_18
    :goto_18
    return v4

    .end local v5    # "startPos":I
    :cond_19
    move v5, v1

    .line 2851
    goto :goto_f

    .line 2857
    .restart local v5    # "startPos":I
    :cond_1b
    if-ge v5, v1, :cond_1e

    .line 2858
    move v5, v1

    .line 2861
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 2862
    .local v3, "lastVisiblePos":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2863
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, "pos":I
    :goto_27
    if-gt v4, v3, :cond_80

    .line 2864
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2863
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2870
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "pos":I
    .end local v5    # "startPos":I
    :cond_3e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v2, v7, -0x1

    .line 2871
    .local v2, "last":I
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v7, v6, :cond_59

    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v5, v7, -0x1

    .line 2874
    .restart local v5    # "startPos":I
    :goto_4d
    if-ltz v5, :cond_57

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v5, v7, :cond_61

    :cond_57
    move v4, v6

    .line 2875
    goto :goto_18

    .line 2871
    .end local v5    # "startPos":I
    :cond_59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, -0x1

    goto :goto_4d

    .line 2877
    .restart local v5    # "startPos":I
    :cond_61
    if-le v5, v2, :cond_64

    .line 2878
    move v5, v2

    .line 2881
    :cond_64
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2882
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4    # "pos":I
    :goto_69
    if-lt v4, v1, :cond_80

    .line 2883
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7d

    sub-int v7, v4, v1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_18

    .line 2882
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_69

    .end local v2    # "last":I
    :cond_80
    move v4, v6

    .line 2889
    goto :goto_18
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .param p1, "position"    # I
    .param p2, "y"    # I
    .param p3, "flow"    # Z
    .param p4, "childrenLeft"    # I
    .param p5, "selected"    # Z

    .prologue
    .line 1798
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 1800
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1801
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1804
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1818
    .end local v1    # "child":Landroid/view/View;
    .local v8, "child":Landroid/view/View;
    :goto_17
    return-object v8

    .line 1811
    .end local v8    # "child":Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1815
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_2e

    .line 1816
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    :cond_2e
    move-object v8, v1

    .line 1818
    .end local v1    # "child":Landroid/view/View;
    .restart local v8    # "child":Landroid/view/View;
    goto :goto_17
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "numChildren"    # I

    .prologue
    .line 2661
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2662
    .local v2, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2663
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_24

    .line 2665
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2668
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2669
    .local v0, "heightDelta":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_18
    if-ge v1, p3, :cond_24

    .line 2670
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2669
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2673
    .end local v0    # "heightDelta":I
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2681
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2682
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_e

    .line 2683
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2688
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2690
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2692
    .local v2, "lpHeight":I
    if-lez v2, :cond_2d

    .line 2693
    const/high16 v4, 0x40000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2697
    .local v0, "childHeightSpec":I
    :goto_29
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2698
    return-void

    .line 2695
    .end local v0    # "childHeightSpec":I
    :cond_2d
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_29
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "widthMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 1194
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1195
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_12

    .line 1196
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1197
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    :cond_12
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1200
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1202
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1204
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1206
    .local v2, "lpHeight":I
    if-lez v2, :cond_3a

    .line 1207
    const/high16 v4, 0x40000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1211
    .local v0, "childHeightSpec":I
    :goto_36
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1212
    return-void

    .line 1209
    .end local v0    # "childHeightSpec":I
    :cond_3a
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_36
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 25
    .param p1, "oldSel"    # Landroid/view/View;
    .param p2, "newSel"    # Landroid/view/View;
    .param p3, "delta"    # I
    .param p4, "childrenTop"    # I
    .param p5, "childrenBottom"    # I

    .prologue
    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v10

    .line 960
    .local v10, "fadingEdgeLength":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 964
    .local v15, "selectedPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v18

    .line 966
    .local v18, "topSelectionPixel":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v10, v15}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v8

    .line 969
    .local v8, "bottomSelectionPixel":I
    if-lez p3, :cond_bd

    .line 991
    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 994
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 997
    .local v9, "dividerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int v4, v2, v9

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1001
    .local v14, "sel":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_6f

    .line 1004
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v2, v18

    .line 1007
    .local v16, "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v2, v8

    .line 1010
    .local v17, "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1011
    .local v11, "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1012
    .local v13, "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1015
    neg-int v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1017
    neg-int v2, v13

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1021
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_6f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_99

    .line 1022
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1023
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1024
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1105
    .end local v9    # "dividerHeight":I
    :goto_98
    return-object v14

    .line 1026
    .restart local v9    # "dividerHeight":I
    :cond_99
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1027
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1028
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_98

    .line 1030
    .end local v9    # "dividerHeight":I
    .end local v14    # "sel":Landroid/view/View;
    :cond_bd
    if-gez p3, :cond_111

    .line 1051
    if-eqz p2, :cond_fd

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1063
    .restart local v14    # "sel":Landroid/view/View;
    :goto_d4
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_f7

    .line 1065
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v16, v18, v2

    .line 1068
    .restart local v16    # "spaceAbove":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v17, v8, v2

    .line 1071
    .restart local v17    # "spaceBelow":I
    sub-int v2, p5, p4

    div-int/lit8 v11, v2, 0x2

    .line 1072
    .restart local v11    # "halfVerticalSpace":I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1073
    .restart local v13    # "offset":I
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1076
    invoke-virtual {v14, v13}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1080
    .end local v11    # "halfVerticalSpace":I
    .end local v13    # "offset":I
    .end local v16    # "spaceAbove":I
    .end local v17    # "spaceBelow":I
    :cond_f7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_98

    .line 1058
    .end local v14    # "sel":Landroid/view/View;
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .restart local v14    # "sel":Landroid/view/View;
    goto :goto_d4

    .line 1083
    .end local v14    # "sel":Landroid/view/View;
    :cond_111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1088
    .local v4, "oldTop":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move v3, v15

    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v14

    .line 1091
    .restart local v14    # "sel":Landroid/view/View;
    move/from16 v0, p4

    if-ge v4, v0, :cond_139

    .line 1094
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1095
    .local v12, "newBottom":I
    add-int/lit8 v2, p4, 0x14

    if-ge v12, v2, :cond_139

    .line 1097
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    invoke-virtual {v14, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1102
    .end local v12    # "newBottom":I
    :cond_139
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_98
.end method

.method private final nextSelectedPositionForDirection(Landroid/view/View;II)I
    .registers 12
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "selectedPos"    # I
    .param p3, "direction"    # I

    .prologue
    const/16 v7, 0x82

    const/4 v4, -0x1

    .line 2479
    if-ne p3, v7, :cond_2d

    .line 2480
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 2481
    .local v1, "listBottom":I
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v5, v1, :cond_29

    .line 2482
    if-eq p2, v4, :cond_2a

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt p2, v5, :cond_2a

    add-int/lit8 v3, p2, 0x1

    .line 2500
    .end local v1    # "listBottom":I
    .local v3, "nextSelected":I
    :goto_1f
    if-ltz v3, :cond_29

    iget-object v5, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v3, v5, :cond_4b

    .line 2503
    .end local v3    # "nextSelected":I
    :cond_29
    :goto_29
    return v4

    .line 2482
    .restart local v1    # "listBottom":I
    :cond_2a
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_1f

    .line 2489
    .end local v1    # "listBottom":I
    :cond_2d
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v5, Landroid/graphics/Rect;->top:I

    .line 2490
    .local v2, "listTop":I
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v5, v2, :cond_29

    .line 2491
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v0, v5, -0x1

    .line 2492
    .local v0, "lastPos":I
    if-eq p2, v4, :cond_49

    if-gt p2, v0, :cond_49

    add-int/lit8 v3, p2, -0x1

    .line 2495
    .restart local v3    # "nextSelected":I
    :goto_48
    goto :goto_1f

    .end local v3    # "nextSelected":I
    :cond_49
    move v3, v0

    .line 2492
    goto :goto_48

    .line 2503
    .end local v0    # "lastPos":I
    .end local v2    # "listTop":I
    .restart local v3    # "nextSelected":I
    :cond_4b
    if-ne p3, v7, :cond_53

    const/4 v4, 0x1

    :goto_4e
    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v4

    goto :goto_29

    :cond_53
    const/4 v4, 0x0

    goto :goto_4e
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 7
    .param p1, "newFocus"    # Landroid/view/View;

    .prologue
    .line 2971
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2972
    .local v2, "numChildren":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_18

    .line 2973
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2974
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2975
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2972
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2978
    .end local v0    # "child":Landroid/view/View;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2706
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2707
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2708
    .local v4, "h":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2709
    .local v1, "childLeft":I
    add-int v2, v1, v5

    .line 2710
    .local v2, "childRight":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2711
    .local v3, "childTop":I
    add-int v0, v3, v4

    .line 2712
    .local v0, "childBottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2713
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 334
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 335
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 336
    .local v1, "info":Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 337
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    .end local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_14
    return-void

    .line 334
    .restart local v1    # "info":Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private scrollListItemsBy(I)V
    .registers 14
    .param p1, "amount"    # I

    .prologue
    const/4 v11, 0x0

    .line 3054
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3056
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 3057
    .local v5, "listBottom":I
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 3058
    .local v6, "listTop":I
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 3060
    .local v8, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_72

    .line 3064
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 3065
    .local v7, "numChildren":I
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3066
    .local v1, "last":Landroid/view/View;
    :goto_20
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_38

    .line 3067
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 3068
    .local v3, "lastVisiblePosition":I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_38

    .line 3069
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3070
    add-int/lit8 v7, v7, 0x1

    .line 3074
    goto :goto_20

    .line 3079
    .end local v3    # "lastVisiblePosition":I
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_47

    .line 3080
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3084
    :cond_47
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3085
    .local v0, "first":Landroid/view/View;
    :goto_4b
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_ca

    .line 3086
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3087
    .local v4, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_64

    .line 3088
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v8, v0, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3090
    :cond_64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3091
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3092
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_4b

    .line 3096
    .end local v0    # "first":Landroid/view/View;
    .end local v1    # "last":Landroid/view/View;
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v7    # "numChildren":I
    :cond_72
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3099
    .restart local v0    # "first":Landroid/view/View;
    :goto_76
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_8d

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_8d

    .line 3100
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3101
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_76

    .line 3106
    :cond_8d
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_9c

    .line 3107
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->offsetChildrenTopAndBottom(I)V

    .line 3110
    :cond_9c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 3111
    .local v2, "lastIndex":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3114
    .restart local v1    # "last":Landroid/view/View;
    :goto_a6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_ca

    .line 3115
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 3116
    .restart local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 3117
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {v8, v1, v9}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3119
    :cond_c0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 3120
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3121
    goto :goto_a6

    .line 3123
    .end local v2    # "lastIndex":I
    .end local v4    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    :cond_ca
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 30
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "y"    # I
    .param p4, "flowDown"    # Z
    .param p5, "childrenLeft"    # I
    .param p6, "selected"    # Z
    .param p7, "recycled"    # Z

    .prologue
    .line 1837
    const-wide/16 v19, 0x8

    const-string/jumbo v21, "setupListItem"

    invoke-static/range {v19 .. v21}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1839
    if-eqz p6, :cond_153

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v19

    if-eqz v19, :cond_153

    const/4 v11, 0x1

    .line 1840
    .local v11, "isSelected":Z
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v19

    move/from16 v0, v19

    if-eq v11, v0, :cond_156

    const/16 v17, 0x1

    .line 1841
    .local v17, "updateChildSelected":Z
    :goto_1b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 1842
    .local v13, "mode":I
    if-lez v13, :cond_15a

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ge v13, v0, :cond_15a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_15a

    const/4 v10, 0x1

    .line 1844
    .local v10, "isPressed":Z
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_15d

    const/16 v16, 0x1

    .line 1845
    .local v16, "updateChildPressed":Z
    :goto_3e
    if-eqz p7, :cond_48

    if-nez v17, :cond_48

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v19

    if-eqz v19, :cond_161

    :cond_48
    const/4 v14, 0x1

    .line 1849
    .local v14, "needToMeasure":Z
    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1850
    .local v15, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_57

    .line 1851
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 1853
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1855
    if-eqz p7, :cond_71

    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v19, v0

    if-eqz v19, :cond_83

    :cond_71
    iget-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v19, v0

    if-eqz v19, :cond_168

    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_168

    .line 1857
    :cond_83
    if-eqz p4, :cond_164

    const/16 v19, -0x1

    :goto_87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1866
    :goto_90
    if-eqz v17, :cond_97

    .line 1867
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 1870
    :cond_97
    if-eqz v16, :cond_9e

    .line 1871
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    .line 1874
    :cond_9e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_cb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    if-eqz v19, :cond_cb

    .line 1875
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_196

    move-object/from16 v19, p1

    .line 1876
    check-cast v19, Landroid/widget/Checkable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    invoke-interface/range {v19 .. v20}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1883
    :cond_cb
    :goto_cb
    if-eqz v14, :cond_1cd

    .line 1884
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int v20, v20, v21

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 1886
    .local v8, "childWidthSpec":I
    iget v12, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1888
    .local v12, "lpHeight":I
    if-lez v12, :cond_1c3

    .line 1889
    const/high16 v19, 0x40000000

    move/from16 v0, v19

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1893
    .local v5, "childHeightSpec":I
    :goto_101
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Landroid/view/View;->measure(II)V

    .line 1898
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :goto_106
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 1899
    .local v18, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1900
    .local v9, "h":I
    if-eqz p4, :cond_1d2

    move/from16 v7, p3

    .line 1902
    .local v7, "childTop":I
    :goto_112
    if-eqz v14, :cond_1d6

    .line 1903
    add-int v6, p5, v18

    .line 1904
    .local v6, "childRight":I
    add-int v4, v7, v9

    .line 1905
    .local v4, "childBottom":I
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    .line 1911
    .end local v4    # "childBottom":I
    .end local v6    # "childRight":I
    :goto_11f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_136

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v19

    if-nez v19, :cond_136

    .line 1912
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1915
    :cond_136
    if-eqz p7, :cond_14d

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_14d

    .line 1917
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1920
    :cond_14d
    const-wide/16 v19, 0x8

    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 1921
    return-void

    .line 1839
    .end local v7    # "childTop":I
    .end local v9    # "h":I
    .end local v10    # "isPressed":Z
    .end local v11    # "isSelected":Z
    .end local v13    # "mode":I
    .end local v14    # "needToMeasure":Z
    .end local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    .end local v16    # "updateChildPressed":Z
    .end local v17    # "updateChildSelected":Z
    .end local v18    # "w":I
    :cond_153
    const/4 v11, 0x0

    goto/16 :goto_11

    .line 1840
    .restart local v11    # "isSelected":Z
    :cond_156
    const/16 v17, 0x0

    goto/16 :goto_1b

    .line 1842
    .restart local v13    # "mode":I
    .restart local v17    # "updateChildSelected":Z
    :cond_15a
    const/4 v10, 0x0

    goto/16 :goto_34

    .line 1844
    .restart local v10    # "isPressed":Z
    :cond_15d
    const/16 v16, 0x0

    goto/16 :goto_3e

    .line 1845
    .restart local v16    # "updateChildPressed":Z
    :cond_161
    const/4 v14, 0x0

    goto/16 :goto_49

    .line 1857
    .restart local v14    # "needToMeasure":Z
    .restart local v15    # "p":Landroid/widget/AbsListView$LayoutParams;
    :cond_164
    const/16 v19, 0x0

    goto/16 :goto_87

    .line 1859
    :cond_168
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1860
    iget v0, v15, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_180

    .line 1861
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v15, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1863
    :cond_180
    if-eqz p4, :cond_193

    const/16 v19, -0x1

    :goto_184
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_90

    :cond_193
    const/16 v19, 0x0

    goto :goto_184

    .line 1877
    :cond_196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v0

    const/16 v20, 0xb

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_cb

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_cb

    .line 1891
    .restart local v8    # "childWidthSpec":I
    .restart local v12    # "lpHeight":I
    :cond_1c3
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .restart local v5    # "childHeightSpec":I
    goto/16 :goto_101

    .line 1895
    .end local v5    # "childHeightSpec":I
    .end local v8    # "childWidthSpec":I
    .end local v12    # "lpHeight":I
    :cond_1cd
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_106

    .line 1900
    .restart local v9    # "h":I
    .restart local v18    # "w":I
    :cond_1d2
    sub-int v7, p3, v9

    goto/16 :goto_112

    .line 1907
    .restart local v7    # "childTop":I
    :cond_1d6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v19

    sub-int v19, p5, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1908
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v19

    sub-int v19, v7, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_11f
.end method

.method private showingBottomFadingEdge()Z
    .registers 7

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 559
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 560
    .local v0, "bottomOfBottomChild":I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 562
    .local v2, "lastVisiblePosition":I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 564
    .local v3, "listBottom":I
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_28

    if-ge v0, v3, :cond_2a

    :cond_28
    const/4 v4, 0x1

    :goto_29
    return v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private showingTopFadingEdge()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 550
    iget v2, p0, Landroid/view/View;->mScrollY:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 551
    .local v0, "listTop":I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v2, :cond_17

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 396
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 360
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 361
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 362
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 363
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 364
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_30

    .line 368
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_27

    .line 369
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 374
    :cond_27
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_30

    .line 375
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 378
    :cond_30
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 303
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 267
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 268
    .local v0, "info":Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 269
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 270
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 271
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_30

    .line 275
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/HeaderViewListAdapter;

    if-nez v1, :cond_27

    .line 276
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 281
    :cond_27
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_30

    .line 282
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 285
    :cond_30
    return-void
.end method

.method public areFooterDividersEnabled()Z
    .registers 2

    .prologue
    .line 3517
    iget-boolean v0, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    return v0
.end method

.method public areHeaderDividersEnabled()Z
    .registers 2

    .prologue
    .line 3494
    iget-boolean v0, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    return v0
.end method

.method arrowScroll(I)Z
    .registers 6
    .param p1, "direction"    # I

    .prologue
    const/4 v3, 0x0

    .line 2450
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2451
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2454
    :cond_e
    const/4 v1, 0x1

    :try_start_f
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2455
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2456
    .local v0, "handled":Z
    if-eqz v0, :cond_1e

    .line 2457
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_21

    .line 2461
    :cond_1e
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2459
    return v0

    .line 2461
    .end local v0    # "handled":Z
    :catchall_21
    move-exception v1

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1925
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3234
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v39, v0

    if-eqz v39, :cond_10

    .line 3235
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3239
    :cond_10
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3240
    .local v10, "dividerHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 3241
    .local v33, "overscrollHeader":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    .line 3242
    .local v32, "overscrollFooter":Landroid/graphics/drawable/Drawable;
    if-eqz v33, :cond_1bf

    const/4 v13, 0x1

    .line 3243
    .local v13, "drawOverscrollHeader":Z
    :goto_23
    if-eqz v32, :cond_1c2

    const/4 v12, 0x1

    .line 3244
    .local v12, "drawOverscrollFooter":Z
    :goto_26
    if-lez v10, :cond_1c5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_1c5

    const/4 v11, 0x1

    .line 3246
    .local v11, "drawDividers":Z
    :goto_31
    if-nez v11, :cond_37

    if-nez v13, :cond_37

    if-eqz v12, :cond_230

    .line 3248
    :cond_37
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3249
    .local v7, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 3250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 3252
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 3253
    .local v9, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3254
    .local v20, "headerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v27, v0

    .line 3255
    .local v27, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    sub-int v19, v27, v39

    .line 3256
    .local v19, "footerLimit":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v21, v0

    .line 3257
    .local v21, "headerDividers":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v18, v0

    .line 3258
    .local v18, "footerDividers":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    .line 3259
    .local v17, "first":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 3260
    .local v5, "areAllItemsSelectable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3265
    .local v4, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v39

    if-eqz v39, :cond_1c8

    invoke-super/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v39

    if-nez v39, :cond_1c8

    const/16 v16, 0x1

    .line 3267
    .local v16, "fillForMissingDividers":Z
    :goto_a7
    if-eqz v16, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    if-nez v39, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v39, v0

    if-eqz v39, :cond_d1

    .line 3268
    new-instance v39, Landroid/graphics/Paint;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 3271
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    .line 3273
    .local v34, "paint":Landroid/graphics/Paint;
    const/4 v15, 0x0

    .line 3274
    .local v15, "effectivePaddingTop":I
    const/4 v14, 0x0

    .line 3275
    .local v14, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v39, v0

    and-int/lit8 v39, v39, 0x22

    const/16 v40, 0x22

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_fd

    .line 3276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    .line 3280
    :cond_fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v40, v0

    sub-int v39, v39, v40

    sub-int v39, v39, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v40, v0

    add-int v29, v39, v40

    .line 3281
    .local v29, "listBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v39, v0

    if-nez v39, :cond_234

    .line 3282
    const/4 v6, 0x0

    .line 3285
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v36, v0

    .line 3286
    .local v36, "scrollY":I
    if-lez v9, :cond_13d

    if-gez v36, :cond_13d

    .line 3287
    if-eqz v13, :cond_1cc

    .line 3288
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3289
    move/from16 v0, v36

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3298
    :cond_13d
    :goto_13d
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_13f
    move/from16 v0, v22

    if-ge v0, v9, :cond_205

    .line 3299
    add-int v28, v17, v22

    .line 3300
    .local v28, "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_1e8

    const/16 v25, 0x1

    .line 3301
    .local v25, "isHeader":Z
    :goto_14d
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_1ec

    const/16 v24, 0x1

    .line 3302
    .local v24, "isFooter":Z
    :goto_155
    if-nez v21, :cond_159

    if-nez v25, :cond_1bc

    :cond_159
    if-nez v18, :cond_15d

    if-nez v24, :cond_1bc

    .line 3303
    :cond_15d
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3304
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 3305
    add-int/lit8 v39, v9, -0x1

    move/from16 v0, v22

    move/from16 v1, v39

    if-ne v0, v1, :cond_1f0

    const/16 v26, 0x1

    .line 3307
    .local v26, "isLastItem":Z
    :goto_173
    if-eqz v11, :cond_1bc

    move/from16 v0, v29

    if-ge v6, v0, :cond_1bc

    if-eqz v12, :cond_17d

    if-nez v26, :cond_1bc

    .line 3309
    :cond_17d
    add-int/lit8 v30, v28, 0x1

    .line 3312
    .local v30, "nextIndex":I
    if-nez v5, :cond_1ab

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_191

    if-eqz v21, :cond_18d

    if-nez v25, :cond_191

    :cond_18d
    if-eqz v18, :cond_1f3

    if-eqz v24, :cond_1f3

    :cond_191
    if-nez v26, :cond_1ab

    move/from16 v0, v30

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_1ab

    if-eqz v21, :cond_1a3

    move/from16 v0, v30

    move/from16 v1, v20

    if-lt v0, v1, :cond_1ab

    :cond_1a3
    if-eqz v18, :cond_1f3

    move/from16 v0, v30

    move/from16 v1, v19

    if-lt v0, v1, :cond_1f3

    .line 3318
    :cond_1ab
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3319
    add-int v39, v6, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3320
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3298
    .end local v8    # "child":Landroid/view/View;
    .end local v26    # "isLastItem":Z
    .end local v30    # "nextIndex":I
    :cond_1bc
    :goto_1bc
    add-int/lit8 v22, v22, 0x1

    goto :goto_13f

    .line 3242
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v11    # "drawDividers":Z
    .end local v12    # "drawOverscrollFooter":Z
    .end local v13    # "drawOverscrollHeader":Z
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v27    # "itemCount":I
    .end local v28    # "itemIndex":I
    .end local v29    # "listBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_1bf
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 3243
    .restart local v13    # "drawOverscrollHeader":Z
    :cond_1c2
    const/4 v12, 0x0

    goto/16 :goto_26

    .line 3244
    .restart local v12    # "drawOverscrollFooter":Z
    :cond_1c5
    const/4 v11, 0x0

    goto/16 :goto_31

    .line 3265
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v11    # "drawDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    :cond_1c8
    const/16 v16, 0x0

    goto/16 :goto_a7

    .line 3291
    .restart local v6    # "bottom":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    .restart local v36    # "scrollY":I
    :cond_1cc
    if-eqz v11, :cond_13d

    .line 3292
    const/16 v39, 0x0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3293
    neg-int v0, v10

    move/from16 v39, v0

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3294
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_13d

    .line 3300
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    :cond_1e8
    const/16 v25, 0x0

    goto/16 :goto_14d

    .line 3301
    .restart local v25    # "isHeader":Z
    :cond_1ec
    const/16 v24, 0x0

    goto/16 :goto_155

    .line 3305
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    :cond_1f0
    const/16 v26, 0x0

    goto :goto_173

    .line 3321
    .restart local v26    # "isLastItem":Z
    .restart local v30    # "nextIndex":I
    :cond_1f3
    if-eqz v16, :cond_1bc

    .line 3322
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3323
    add-int v39, v6, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3324
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1bc

    .line 3330
    .end local v8    # "child":Landroid/view/View;
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v26    # "isLastItem":Z
    .end local v28    # "itemIndex":I
    .end local v30    # "nextIndex":I
    :cond_205
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v40, v0

    add-int v31, v39, v40

    .line 3331
    .local v31, "overFooterBottom":I
    if-eqz v12, :cond_230

    add-int v39, v17, v9

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_230

    move/from16 v0, v31

    if-le v0, v6, :cond_230

    .line 3333
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 3334
    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3335
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3399
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "areAllItemsSelectable":Z
    .end local v6    # "bottom":I
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "count":I
    .end local v14    # "effectivePaddingBottom":I
    .end local v15    # "effectivePaddingTop":I
    .end local v16    # "fillForMissingDividers":Z
    .end local v17    # "first":I
    .end local v18    # "footerDividers":Z
    .end local v19    # "footerLimit":I
    .end local v20    # "headerCount":I
    .end local v21    # "headerDividers":Z
    .end local v22    # "i":I
    .end local v27    # "itemCount":I
    .end local v29    # "listBottom":I
    .end local v31    # "overFooterBottom":I
    .end local v34    # "paint":Landroid/graphics/Paint;
    .end local v36    # "scrollY":I
    :cond_230
    :goto_230
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3400
    return-void

    .line 3340
    .restart local v4    # "adapter":Landroid/widget/ListAdapter;
    .restart local v5    # "areAllItemsSelectable":Z
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "count":I
    .restart local v14    # "effectivePaddingBottom":I
    .restart local v15    # "effectivePaddingTop":I
    .restart local v16    # "fillForMissingDividers":Z
    .restart local v17    # "first":I
    .restart local v18    # "footerDividers":Z
    .restart local v19    # "footerLimit":I
    .restart local v20    # "headerCount":I
    .restart local v21    # "headerDividers":Z
    .restart local v27    # "itemCount":I
    .restart local v29    # "listBottom":I
    .restart local v34    # "paint":Landroid/graphics/Paint;
    :cond_234
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v36, v0

    .line 3342
    .restart local v36    # "scrollY":I
    if-lez v9, :cond_25d

    if-eqz v13, :cond_25d

    .line 3343
    move/from16 v0, v36

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3344
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getTop()I

    move-result v39

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3345
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3348
    :cond_25d
    if-eqz v13, :cond_2e1

    const/16 v37, 0x1

    .line 3349
    .local v37, "start":I
    :goto_261
    move/from16 v22, v37

    .restart local v22    # "i":I
    :goto_263
    move/from16 v0, v22

    if-ge v0, v9, :cond_302

    .line 3350
    add-int v28, v17, v22

    .line 3351
    .restart local v28    # "itemIndex":I
    move/from16 v0, v28

    move/from16 v1, v20

    if-ge v0, v1, :cond_2e5

    const/16 v25, 0x1

    .line 3352
    .restart local v25    # "isHeader":Z
    :goto_271
    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_2e8

    const/16 v24, 0x1

    .line 3353
    .restart local v24    # "isFooter":Z
    :goto_279
    if-nez v21, :cond_27d

    if-nez v25, :cond_2de

    :cond_27d
    if-nez v18, :cond_281

    if-nez v24, :cond_2de

    .line 3354
    :cond_281
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3355
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v38

    .line 3356
    .local v38, "top":I
    if-eqz v11, :cond_2de

    move/from16 v0, v38

    if-le v0, v15, :cond_2de

    .line 3357
    move/from16 v0, v22

    move/from16 v1, v37

    if-ne v0, v1, :cond_2eb

    const/16 v23, 0x1

    .line 3358
    .local v23, "isFirstItem":Z
    :goto_29b
    add-int/lit8 v35, v28, -0x1

    .line 3361
    .local v35, "previousIndex":I
    if-nez v5, :cond_2c9

    move/from16 v0, v28

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_2af

    if-eqz v21, :cond_2ab

    if-nez v25, :cond_2af

    :cond_2ab
    if-eqz v18, :cond_2ee

    if-eqz v24, :cond_2ee

    :cond_2af
    if-nez v23, :cond_2c9

    move/from16 v0, v35

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v39

    if-nez v39, :cond_2c9

    if-eqz v21, :cond_2c1

    move/from16 v0, v35

    move/from16 v1, v20

    if-lt v0, v1, :cond_2c9

    :cond_2c1
    if-eqz v18, :cond_2ee

    move/from16 v0, v35

    move/from16 v1, v19

    if-lt v0, v1, :cond_2ee

    .line 3367
    :cond_2c9
    sub-int v39, v38, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3368
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3373
    add-int/lit8 v39, v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3349
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v35    # "previousIndex":I
    .end local v38    # "top":I
    :cond_2de
    :goto_2de
    add-int/lit8 v22, v22, 0x1

    goto :goto_263

    .line 3348
    .end local v22    # "i":I
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v37    # "start":I
    :cond_2e1
    const/16 v37, 0x0

    goto/16 :goto_261

    .line 3351
    .restart local v22    # "i":I
    .restart local v28    # "itemIndex":I
    .restart local v37    # "start":I
    :cond_2e5
    const/16 v25, 0x0

    goto :goto_271

    .line 3352
    .restart local v25    # "isHeader":Z
    :cond_2e8
    const/16 v24, 0x0

    goto :goto_279

    .line 3357
    .restart local v8    # "child":Landroid/view/View;
    .restart local v24    # "isFooter":Z
    .restart local v38    # "top":I
    :cond_2eb
    const/16 v23, 0x0

    goto :goto_29b

    .line 3374
    .restart local v23    # "isFirstItem":Z
    .restart local v35    # "previousIndex":I
    :cond_2ee
    if-eqz v16, :cond_2de

    .line 3375
    sub-int v39, v38, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3376
    move/from16 v0, v38

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3377
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2de

    .line 3383
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "isFirstItem":Z
    .end local v24    # "isFooter":Z
    .end local v25    # "isHeader":Z
    .end local v28    # "itemIndex":I
    .end local v35    # "previousIndex":I
    .end local v38    # "top":I
    :cond_302
    if-lez v9, :cond_230

    if-lez v36, :cond_230

    .line 3384
    if-eqz v12, :cond_31f

    .line 3385
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    .line 3386
    .local v3, "absListBottom":I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 3387
    add-int v39, v3, v36

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_230

    .line 3389
    .end local v3    # "absListBottom":I
    :cond_31f
    if-eqz v11, :cond_230

    .line 3390
    move/from16 v0, v29

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 3391
    add-int v39, v29, v10

    move/from16 v0, v39

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 3392
    const/16 v39, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    invoke-virtual {v0, v1, v7, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_230
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2118
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2119
    .local v1, "handled":Z
    if-nez v1, :cond_1a

    .line 2121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2122
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2125
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2128
    .end local v0    # "focused":Landroid/view/View;
    :cond_1a
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3405
    .local v0, "more":Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p2, Landroid/view/View;->mCachingFailed:Z

    if-eqz v1, :cond_f

    .line 3406
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    .line 3408
    :cond_f
    return v0
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 3422
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3424
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3425
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3426
    return-void
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3216
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3218
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3219
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3221
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3222
    .local v1, "span":I
    if-ge v1, v0, :cond_17

    .line 3223
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3226
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3227
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3229
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3230
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3199
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3201
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3202
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3204
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3205
    .local v1, "span":I
    if-ge v1, v0, :cond_17

    .line 3206
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3209
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3210
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3213
    return-void
.end method

.method fillGap(Z)V
    .registers 8
    .param p1, "down"    # Z

    .prologue
    const/16 v5, 0x22

    .line 653
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 654
    .local v0, "count":I
    if-eqz p1, :cond_33

    .line 655
    const/4 v2, 0x0

    .line 656
    .local v2, "paddingTop":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_13

    .line 657
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result v2

    .line 659
    :cond_13
    if-lez v0, :cond_31

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v4, v5

    .line 661
    .local v3, "startOffset":I
    :goto_23
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 662
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 673
    .end local v2    # "paddingTop":I
    :goto_30
    return-void

    .end local v3    # "startOffset":I
    .restart local v2    # "paddingTop":I
    :cond_31
    move v3, v2

    .line 659
    goto :goto_23

    .line 664
    .end local v2    # "paddingTop":I
    :cond_33
    const/4 v1, 0x0

    .line 665
    .local v1, "paddingBottom":I
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x22

    if-ne v4, v5, :cond_3e

    .line 666
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result v1

    .line 668
    :cond_3e
    if-lez v0, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v4, v5

    .line 670
    .restart local v3    # "startOffset":I
    :goto_4d
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4, v3}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 671
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_30

    .line 668
    .end local v3    # "startOffset":I
    :cond_5c
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    goto :goto_4d
.end method

.method findMotionRow(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 1314
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1315
    .local v0, "childCount":I
    if-lez v0, :cond_33

    .line 1316
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1e

    .line 1317
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_33

    .line 1318
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1319
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1320
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1332
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1a
    return v3

    .line 1317
    .restart local v1    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1324
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_20
    if-ltz v1, :cond_33

    .line 1325
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1326
    .restart local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_30

    .line 1327
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1a

    .line 1324
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 1332
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_33
    const/4 v3, -0x1

    goto :goto_1a
.end method

.method findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .param p3, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3750
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    if-eqz p1, :cond_23

    .line 3751
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3754
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_23

    .line 3755
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3757
    .local v2, "v":Landroid/view/View;
    if-eq v2, p3, :cond_20

    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3758
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3760
    if-eqz v2, :cond_20

    .line 3766
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1f
    return-object v2

    .line 3754
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3766
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 6
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3728
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3729
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3730
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3731
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3740
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3735
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1, p2}, Landroid/widget/ListView;->findViewByPredicateInHeadersOrFooters(Ljava/util/ArrayList;Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3736
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3737
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3740
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3655
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3656
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3659
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3660
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3662
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3663
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3665
    if-eqz v2, :cond_1e

    .line 3671
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3659
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3671
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 3636
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3637
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3638
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3639
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3647
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3642
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3643
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3644
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3647
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3701
    .local p1, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_21

    .line 3702
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3705
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_21

    .line 3706
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, v3, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3708
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3709
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3711
    if-eqz v2, :cond_1e

    .line 3717
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :goto_1d
    return-object v2

    .line 3705
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3717
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "v":Landroid/view/View;
    :cond_21
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3681
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3682
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3683
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3684
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3693
    .end local v0    # "v":Landroid/view/View;
    .local v1, "v":Landroid/view/View;
    :goto_f
    return-object v1

    .line 3688
    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewWithTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3689
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3690
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f

    .end local v1    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3693
    .end local v0    # "v":Landroid/view/View;
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_f
.end method

.method fullScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2362
    const/4 v1, 0x0

    .line 2363
    .local v1, "moved":Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_2b

    .line 2364
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v3, :cond_1c

    .line 2365
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2366
    .local v2, "position":I
    if-ltz v2, :cond_1b

    .line 2367
    iput v5, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2368
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2369
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2371
    :cond_1b
    const/4 v1, 0x1

    .line 2387
    .end local v2    # "position":I
    :cond_1c
    :goto_1c
    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 2388
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2389
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2392
    :cond_2a
    return v1

    .line 2373
    :cond_2b
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1c

    .line 2374
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v0, v3, -0x1

    .line 2375
    .local v0, "lastItem":I
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ge v3, v0, :cond_1c

    .line 2376
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v3, v0, v4}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2378
    .restart local v2    # "position":I
    if-ltz v2, :cond_48

    .line 2379
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2380
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2381
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2383
    :cond_48
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3781
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3782
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 3811
    :cond_11
    :goto_11
    return-object v5

    .line 3787
    :cond_12
    iget v8, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v8, :cond_4c

    iget-object v8, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_4c

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4c

    .line 3788
    iget-object v7, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3789
    .local v7, "states":Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3790
    .local v3, "count":I
    new-array v5, v3, [J

    .line 3791
    .local v5, "ids":[J
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3793
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3794
    .local v1, "checkedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v2, v1

    .end local v1    # "checkedCount":I
    .local v2, "checkedCount":I
    :goto_2b
    if-ge v4, v3, :cond_43

    .line 3795
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 3796
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3794
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "checkedCount":I
    .restart local v2    # "checkedCount":I
    goto :goto_2b

    .line 3802
    :cond_43
    if-eq v2, v3, :cond_11

    .line 3805
    new-array v6, v2, [J

    .line 3806
    .local v6, "result":[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    .line 3808
    goto :goto_11

    .line 3811
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "checkedCount":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v5    # "ids":[J
    .end local v6    # "result":[J
    .end local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4c
    new-array v5, v10, [J

    goto :goto_11

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "checkedCount":I
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "ids":[J
    .restart local v7    # "states":Landroid/util/SparseBooleanArray;
    :cond_4f
    move v1, v2

    .end local v2    # "checkedCount":I
    .restart local v1    # "checkedCount":I
    goto :goto_3f
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3434
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .prologue
    .line 3459
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3161
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 200
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3556
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3537
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isOpaque()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 3166
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v5, :cond_13

    iget-boolean v5, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->hasOpaqueScrollbars()Z

    move-result v5

    if-nez v5, :cond_19

    :cond_13
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_32

    :cond_19
    const/4 v4, 0x1

    .line 3168
    .local v4, "retValue":Z
    :goto_1a
    if-eqz v4, :cond_31

    .line 3170
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_34

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 3171
    .local v3, "listTop":I
    :goto_24
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3172
    .local v0, "first":Landroid/view/View;
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v3, :cond_37

    :cond_30
    move v4, v6

    .line 3182
    .end local v0    # "first":Landroid/view/View;
    .end local v3    # "listTop":I
    .end local v4    # "retValue":Z
    :cond_31
    :goto_31
    return v4

    :cond_32
    move v4, v6

    .line 3166
    goto :goto_1a

    .line 3170
    .restart local v4    # "retValue":Z
    :cond_34
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    goto :goto_24

    .line 3175
    .restart local v0    # "first":Landroid/view/View;
    .restart local v3    # "listTop":I
    :cond_37
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-eqz v5, :cond_59

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    :goto_43
    sub-int v2, v7, v5

    .line 3177
    .local v2, "listBottom":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3178
    .local v1, "last":Landroid/view/View;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v5, v2, :cond_31

    :cond_57
    move v4, v6

    .line 3179
    goto :goto_31

    .line 3175
    .end local v1    # "last":Landroid/view/View;
    .end local v2    # "listBottom":I
    :cond_59
    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_43
.end method

.method protected layoutChildren()V
    .registers 29

    .prologue
    .line 1491
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1492
    .local v10, "blockLayoutRequests":Z
    if-eqz v10, :cond_7

    .line 1750
    :cond_6
    :goto_6
    return-void

    .line 1496
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1499
    :try_start_c
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1501
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_26

    .line 1504
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1505
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_120

    .line 1746
    if-nez v10, :cond_6

    .line 1747
    :goto_20
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    goto :goto_6

    .line 1509
    :cond_26
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 1510
    .local v6, "childrenTop":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v7, v2, v26

    .line 1511
    .local v7, "childrenBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 1513
    .local v12, "childCount":I
    const/16 v18, 0x0

    .line 1514
    .local v18, "index":I
    const/4 v5, 0x0

    .line 1517
    .local v5, "delta":I
    const/4 v3, 0x0

    .line 1518
    .local v3, "oldSel":Landroid/view/View;
    const/16 v20, 0x0

    .line 1519
    .local v20, "oldFirst":Landroid/view/View;
    const/4 v4, 0x0

    .line 1522
    .local v4, "newSel":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_3de

    .line 1537
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    .line 1538
    if-ltz v18, :cond_72

    move/from16 v0, v18

    if-ge v0, v12, :cond_72

    .line 1539
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1543
    :cond_72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 1545
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v2, :cond_8b

    .line 1546
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v26, v0

    sub-int v5, v2, v26

    .line 1550
    :cond_8b
    add-int v2, v18, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1554
    :cond_93
    :goto_93
    :pswitch_93
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1555
    .local v13, "dataChanged":Z
    if-eqz v13, :cond_9c

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->handleDataChanged()V

    .line 1561
    :cond_9c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v2, :cond_c7

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1746
    if-nez v10, :cond_6

    goto/16 :goto_20

    .line 1524
    .end local v13    # "dataChanged":Z
    :pswitch_ac
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v18, v2, v26

    .line 1525
    if-ltz v18, :cond_93

    move/from16 v0, v18

    if-ge v0, v12, :cond_93

    .line 1526
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_93

    .line 1565
    .restart local v13    # "dataChanged":Z
    :cond_c7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/widget/ListAdapter;->getCount()I

    move-result v26

    move/from16 v0, v26

    if-eq v2, v0, :cond_12c

    .line 1566
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") with Adapter("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_120
    .catchall {:try_start_26 .. :try_end_120} :catchall_120

    .line 1746
    .end local v3    # "oldSel":Landroid/view/View;
    .end local v4    # "newSel":Landroid/view/View;
    .end local v5    # "delta":I
    .end local v6    # "childrenTop":I
    .end local v7    # "childrenBottom":I
    .end local v12    # "childCount":I
    .end local v13    # "dataChanged":Z
    .end local v18    # "index":I
    .end local v20    # "oldFirst":Landroid/view/View;
    :catchall_120
    move-exception v2

    if-nez v10, :cond_12b

    .line 1747
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1746
    :cond_12b
    throw v2

    .line 1574
    .restart local v3    # "oldSel":Landroid/view/View;
    .restart local v4    # "newSel":Landroid/view/View;
    .restart local v5    # "delta":I
    .restart local v6    # "childrenTop":I
    .restart local v7    # "childrenBottom":I
    .restart local v12    # "childCount":I
    .restart local v13    # "dataChanged":Z
    .restart local v18    # "index":I
    .restart local v20    # "oldFirst":Landroid/view/View;
    :cond_12c
    :try_start_12c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1578
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getAccessibilityFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1579
    .local v8, "accessFocusedChild":Landroid/view/View;
    if-eqz v8, :cond_177

    .line 1580
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .line 1581
    .local v9, "accessibilityFocusPosition":I
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1589
    :goto_145
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v16

    .line 1590
    .local v16, "focusedChild":Landroid/view/View;
    if-eqz v16, :cond_151

    .line 1591
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1596
    :cond_151
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1597
    .local v14, "firstPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v22, v0

    .line 1598
    .local v22, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    if-eqz v13, :cond_179

    .line 1599
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_15f
    move/from16 v0, v17

    if-ge v0, v12, :cond_17e

    .line 1600
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v26, v14, v17

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1599
    add-int/lit8 v17, v17, 0x1

    goto :goto_15f

    .line 1583
    .end local v9    # "accessibilityFocusPosition":I
    .end local v14    # "firstPosition":I
    .end local v16    # "focusedChild":Landroid/view/View;
    .end local v17    # "i":I
    .end local v22    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_177
    const/4 v9, -0x1

    .restart local v9    # "accessibilityFocusPosition":I
    goto :goto_145

    .line 1603
    .restart local v14    # "firstPosition":I
    .restart local v16    # "focusedChild":Landroid/view/View;
    .restart local v22    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    :cond_179
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v14}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1607
    :cond_17e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 1608
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 1610
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_3ec

    .line 1637
    if-nez v12, :cond_2f2

    .line 1638
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_2cd

    .line 1639
    const/4 v2, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1640
    .local v21, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1641
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v24

    .line 1662
    .end local v6    # "childrenTop":I
    .end local v21    # "position":I
    .local v24, "sel":Landroid/view/View;
    :goto_1ab
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1664
    if-eqz v24, :cond_368

    .line 1665
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v2, :cond_343

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_343

    const/16 v25, 0x1

    .line 1666
    .local v25, "shouldPlaceFocus":Z
    :goto_1be
    if-eqz v16, :cond_347

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_347

    const/16 v19, 0x1

    .line 1667
    .local v19, "maintainedFocus":Z
    :goto_1c8
    if-eqz v25, :cond_35e

    if-nez v19, :cond_35e

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_35e

    .line 1668
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_34b

    .line 1670
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1683
    :goto_1e5
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1698
    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_1ed
    :goto_1ed
    if-eqz v8, :cond_21f

    .line 1699
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1703
    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-nez v2, :cond_3a9

    const/4 v2, -0x1

    if-eq v9, v2, :cond_3a9

    .line 1706
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, v9, v2

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v21

    .line 1708
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1709
    .local v23, "restoreView":Landroid/view/View;
    if-eqz v23, :cond_21f

    .line 1710
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 1725
    .end local v21    # "position":I
    .end local v23    # "restoreView":Landroid/view/View;
    :cond_21f
    :goto_21f
    if-eqz v16, :cond_227

    .line 1726
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1729
    :cond_227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1730
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v2, :cond_245

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1733
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 1735
    :cond_245
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1736
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1738
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateScrollIndicators()V

    .line 1740
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_25f

    .line 1741
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1744
    :cond_25f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 1746
    if-nez v10, :cond_6

    goto/16 :goto_20

    .line 1612
    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :pswitch_266
    if-eqz v4, :cond_274

    .line 1613
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .line 1615
    .end local v24    # "sel":Landroid/view/View;
    :cond_274
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v24

    .line 1617
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .line 1619
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_27c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1620
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .line 1622
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_290
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v24

    .line 1623
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1ab

    .line 1626
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_2a1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1627
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v24

    .line 1628
    .restart local v24    # "sel":Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1ab

    .line 1631
    .end local v24    # "sel":Landroid/view/View;
    :pswitch_2b1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->reconcileSelectedPosition()I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .line 1632
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .end local v24    # "sel":Landroid/view/View;
    :pswitch_2c5
    move-object/from16 v2, p0

    .line 1634
    invoke-direct/range {v2 .. v7}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v24

    .line 1635
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .line 1643
    .end local v24    # "sel":Landroid/view/View;
    :cond_2cd
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v21

    .line 1644
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 1645
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v24

    .line 1646
    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .line 1648
    .end local v21    # "position":I
    .end local v24    # "sel":Landroid/view/View;
    :cond_2f2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_319

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_319

    .line 1649
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-nez v3, :cond_314

    .end local v6    # "childrenTop":I
    :goto_30c
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_314
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_30c

    .line 1651
    :cond_319
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v2, v0, :cond_33a

    .line 1652
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v20, :cond_335

    .end local v6    # "childrenTop":I
    :goto_32d
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .end local v24    # "sel":Landroid/view/View;
    .restart local v6    # "childrenTop":I
    :cond_335
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_32d

    .line 1655
    :cond_33a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v24

    .restart local v24    # "sel":Landroid/view/View;
    goto/16 :goto_1ab

    .line 1665
    .end local v6    # "childrenTop":I
    :cond_343
    const/16 v25, 0x0

    goto/16 :goto_1be

    .line 1666
    .restart local v25    # "shouldPlaceFocus":Z
    :cond_347
    const/16 v19, 0x0

    goto/16 :goto_1c8

    .line 1674
    .restart local v19    # "maintainedFocus":Z
    :cond_34b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v15

    .line 1675
    .local v15, "focused":Landroid/view/View;
    if-eqz v15, :cond_354

    .line 1676
    invoke-virtual {v15}, Landroid/view/View;->clearFocus()V

    .line 1678
    :cond_354
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1e5

    .line 1681
    .end local v15    # "focused":Landroid/view/View;
    :cond_35e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1e5

    .line 1687
    .end local v19    # "maintainedFocus":Z
    .end local v25    # "shouldPlaceFocus":Z
    :cond_368
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v2, v0, :cond_37c

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v2, v0, :cond_39b

    .line 1688
    :cond_37c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v26, v0

    sub-int v2, v2, v26

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1689
    .local v11, "child":Landroid/view/View;
    if-eqz v11, :cond_1ed

    .line 1690
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_1ed

    .line 1693
    .end local v11    # "child":Landroid/view/View;
    :cond_39b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1ed

    .line 1712
    :cond_3a9
    const/4 v2, -0x1

    if-eq v9, v2, :cond_21f

    .line 1713
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, v9, v2

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v21

    .line 1715
    .restart local v21    # "position":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 1716
    .restart local v23    # "restoreView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_21f

    move-object/from16 v0, v23

    if-eq v8, v0, :cond_21f

    .line 1717
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1718
    if-eqz v23, :cond_21f

    .line 1719
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_3dc
    .catchall {:try_start_12c .. :try_end_3dc} :catchall_120

    goto/16 :goto_21f

    .line 1522
    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_93
        :pswitch_ac
        :pswitch_93
        :pswitch_93
        :pswitch_93
    .end packed-switch

    .line 1610
    :pswitch_data_3ec
    .packed-switch 0x1
        :pswitch_2a1
        :pswitch_266
        :pswitch_290
        :pswitch_2b1
        :pswitch_27c
        :pswitch_2c5
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 2020
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2021
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2044
    :cond_b
    :goto_b
    return v2

    .line 2025
    :cond_c
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2026
    .local v1, "count":I
    iget-boolean v3, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_37

    .line 2027
    if-eqz p2, :cond_26

    .line 2028
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2029
    :goto_1b
    if-ge p1, v1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2030
    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 2033
    :cond_26
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2034
    :goto_2c
    if-ltz p1, :cond_37

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 2035
    add-int/lit8 p1, p1, -0x1

    goto :goto_2c

    .line 2040
    :cond_37
    if-ltz p1, :cond_b

    if-ge p1, v1, :cond_b

    move v2, p1

    .line 2044
    goto :goto_b
.end method

.method lookForSelectablePositionAfter(IIZ)I
    .registers 10
    .param p1, "current"    # I
    .param p2, "position"    # I
    .param p3, "lookDown"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2060
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2061
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    move v1, v3

    .line 2092
    :cond_c
    :goto_c
    return v1

    .line 2066
    :cond_d
    invoke-virtual {p0, p2, p3}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2067
    .local v1, "after":I
    if-ne v1, v3, :cond_c

    .line 2072
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2073
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {p1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 2074
    if-eqz p3, :cond_36

    .line 2075
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2076
    :goto_27
    if-le p2, p1, :cond_32

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 2077
    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    .line 2079
    :cond_32
    if-gt p2, p1, :cond_4c

    move v1, v3

    .line 2080
    goto :goto_c

    .line 2083
    :cond_36
    const/4 v4, 0x0

    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2084
    :goto_3d
    if-ge p2, p1, :cond_48

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_48

    .line 2085
    add-int/lit8 p2, p2, 0x1

    goto :goto_3d

    .line 2087
    :cond_48
    if-lt p2, p1, :cond_4c

    move v1, v3

    .line 2088
    goto :goto_c

    :cond_4c
    move v1, p2

    .line 2092
    goto :goto_c
.end method

.method final measureHeightOfChildren(IIIII)I
    .registers 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 1253
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1254
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_f

    .line 1255
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 1309
    :cond_e
    :goto_e
    return v6

    .line 1259
    :cond_f
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 1260
    .local v9, "returnedHeight":I
    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v10, :cond_6e

    iget-object v10, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6e

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1263
    .local v3, "dividerHeight":I
    :goto_23
    const/4 v6, 0x0

    .line 1268
    .local v6, "prevHeightWithoutPartialChild":I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2d

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 1269
    :cond_2d
    iget-object v7, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1270
    .local v7, "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v8

    .line 1271
    .local v8, "recyle":Z
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 1273
    .local v5, "isScrap":[Z
    move v4, p2

    .local v4, "i":I
    :goto_36
    if-gt v4, p3, :cond_7a

    .line 1274
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 1276
    .local v2, "child":Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1278
    if-lez v4, :cond_42

    .line 1280
    add-int/2addr v9, v3

    .line 1284
    :cond_42
    if-eqz v8, :cond_56

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    iget v10, v10, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1286
    const/4 v10, -0x1

    invoke-virtual {v7, v2, v10}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1289
    :cond_56
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1291
    move/from16 v0, p4

    if-lt v9, v0, :cond_70

    .line 1294
    if-ltz p5, :cond_6b

    move/from16 v0, p5

    if-le v4, v0, :cond_6b

    if-lez v6, :cond_6b

    move/from16 v0, p4

    if-ne v9, v0, :cond_e

    :cond_6b
    move/from16 v6, p4

    goto :goto_e

    .line 1260
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "dividerHeight":I
    .end local v4    # "i":I
    .end local v5    # "isScrap":[Z
    .end local v6    # "prevHeightWithoutPartialChild":I
    .end local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .end local v8    # "recyle":Z
    :cond_6e
    const/4 v3, 0x0

    goto :goto_23

    .line 1302
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "dividerHeight":I
    .restart local v4    # "i":I
    .restart local v5    # "isScrap":[Z
    .restart local v6    # "prevHeightWithoutPartialChild":I
    .restart local v7    # "recycleBin":Landroid/widget/AbsListView$RecycleBin;
    .restart local v8    # "recyle":Z
    :cond_70
    if-ltz p5, :cond_77

    move/from16 v0, p5

    if-lt v4, v0, :cond_77

    .line 1303
    move v6, v9

    .line 1273
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .end local v2    # "child":Landroid/view/View;
    :cond_7a
    move v6, v9

    .line 1309
    goto :goto_e
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3618
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 3620
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3621
    .local v0, "count":I
    if-lez v0, :cond_19

    .line 3622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3623
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3622
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3625
    :cond_16
    invoke-virtual {p0}, Landroid/widget/AdapterView;->removeAllViews()V

    .line 3627
    .end local v1    # "i":I
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 19
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 3561
    invoke-super/range {p0 .. p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3563
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3564
    .local v2, "adapter":Landroid/widget/ListAdapter;
    const/4 v5, -0x1

    .line 3565
    .local v5, "closetChildIndex":I
    const/4 v4, 0x0

    .line 3566
    .local v4, "closestChildTop":I
    if-eqz v2, :cond_5d

    if-eqz p1, :cond_5d

    if-eqz p3, :cond_5d

    .line 3567
    iget v12, p0, Landroid/view/View;->mScrollX:I

    iget v13, p0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    .line 3571
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    iget v14, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v14

    if-ge v12, v13, :cond_29

    .line 3572
    const/4 v12, 0x0

    iput v12, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3573
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3578
    :cond_29
    iget-object v11, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3579
    .local v11, "otherRect":Landroid/graphics/Rect;
    const v9, 0x7fffffff

    .line 3580
    .local v9, "minDistance":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3581
    .local v3, "childCount":I
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3583
    .local v7, "firstPosition":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_35
    if-ge v8, v3, :cond_5d

    .line 3585
    add-int v12, v7, v8

    invoke-interface {v2, v12}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v12

    if-nez v12, :cond_42

    .line 3583
    :cond_3f
    :goto_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 3589
    :cond_42
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3590
    .local v10, "other":Landroid/view/View;
    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3591
    invoke-virtual {p0, v10, v11}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3592
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v11, v1}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    .line 3594
    .local v6, "distance":I
    if-ge v6, v9, :cond_3f

    .line 3595
    move v9, v6

    .line 3596
    move v5, v8

    .line 3597
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_3f

    .line 3602
    .end local v3    # "childCount":I
    .end local v6    # "distance":I
    .end local v7    # "firstPosition":I
    .end local v8    # "i":I
    .end local v9    # "minDistance":I
    .end local v10    # "other":Landroid/view/View;
    .end local v11    # "otherRect":Landroid/graphics/Rect;
    :cond_5d
    if-ltz v5, :cond_66

    .line 3603
    iget v12, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v12, v5

    invoke-virtual {p0, v12, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 3607
    :goto_65
    return-void

    .line 3605
    :cond_66
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_65
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3816
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3817
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 3818
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3822
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3823
    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3825
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 3826
    .local v1, "count":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3827
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3828
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3917
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3919
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 3920
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v2, :cond_1b

    iget v5, v2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1b

    move v0, v3

    .line 3921
    .local v0, "isHeading":Z
    :goto_13
    invoke-static {v4, v3, p2, v3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v1

    .line 3922
    .local v1, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 3923
    return-void

    .end local v0    # "isHeading":Z
    .end local v1    # "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    :cond_1b
    move v0, v4

    .line 3920
    goto :goto_13
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2138
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2143
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1144
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1146
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1147
    .local v11, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1148
    .local v10, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 1149
    .local v12, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1151
    .local v4, "heightSize":I
    const/4 v9, 0x0

    .line 1152
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1153
    .local v7, "childHeight":I
    const/4 v8, 0x0

    .line 1155
    .local v8, "childState":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_92

    move v0, v2

    :goto_1d
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1156
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_5b

    if-eqz v11, :cond_27

    if-nez v10, :cond_5b

    .line 1158
    :cond_27
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1160
    .local v6, "child":Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1162
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1163
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1164
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v8, v0}, Landroid/widget/ListView;->combineMeasuredStates(II)I

    move-result v8

    .line 1166
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1168
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 1172
    .end local v6    # "child":Landroid/view/View;
    :cond_5b
    if-nez v11, :cond_99

    .line 1173
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v12, v0, v1

    .line 1179
    :goto_6d
    if-nez v10, :cond_81

    .line 1180
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1184
    :cond_81
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_8c

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1186
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1189
    :cond_8c
    invoke-virtual {p0, v12, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1190
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1191
    return-void

    .line 1155
    :cond_92
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1d

    .line 1176
    :cond_99
    const/high16 v0, -0x1000000

    and-int/2addr v0, v8

    or-int/2addr v12, v0

    goto :goto_6d
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1125
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 1126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1127
    .local v2, "focusedChild":Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 1128
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1129
    .local v1, "childPosition":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1130
    .local v0, "childBottom":I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1131
    .local v3, "offset":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1132
    .local v4, "top":I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_35

    .line 1133
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1135
    :cond_35
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1138
    .end local v0    # "childBottom":I
    .end local v1    # "childPosition":I
    .end local v2    # "focusedChild":Landroid/view/View;
    .end local v3    # "offset":I
    .end local v4    # "top":I
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1139
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 3907
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 3908
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3909
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 3911
    :cond_10
    return-void
.end method

.method pageScroll(I)Z
    .registers 10
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2310
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2311
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2316
    :cond_f
    const/16 v5, 0x21

    if-ne p1, v5, :cond_60

    .line 2317
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2318
    .local v1, "nextPage":I
    const/4 v0, 0x0

    .line 2326
    .local v0, "down":Z
    :goto_21
    if-ltz v1, :cond_5f

    .line 2327
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0, v5, v1, v0}, Landroid/widget/ListView;->lookForSelectablePositionAfter(IIZ)I

    move-result v2

    .line 2328
    .local v2, "position":I
    if-ltz v2, :cond_5f

    .line 2329
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2330
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2332
    if-eqz v0, :cond_45

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v5

    if-le v2, v3, :cond_45

    .line 2333
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2336
    :cond_45
    if-nez v0, :cond_4f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 2337
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2340
    :cond_4f
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2341
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2342
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 2343
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5e
    move v3, v4

    .line 2350
    .end local v0    # "down":Z
    .end local v1    # "nextPage":I
    .end local v2    # "position":I
    :cond_5f
    return v3

    .line 2319
    :cond_60
    const/16 v5, 0x82

    if-ne p1, v5, :cond_5f

    .line 2320
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2321
    .restart local v1    # "nextPage":I
    const/4 v0, 0x1

    .restart local v0    # "down":Z
    goto :goto_21
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1221
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 411
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 414
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 415
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 417
    :cond_20
    const/4 v0, 0x1

    .line 419
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 422
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 318
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "result":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 321
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_20

    .line 322
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->onChanged()V

    .line 324
    :cond_20
    const/4 v0, 0x1

    .line 326
    :cond_21
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 329
    .end local v0    # "result":Z
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 572
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 575
    .local v9, "rectTopWithinChild":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 576
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 578
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 579
    .local v6, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 580
    .local v8, "listUnfadedTop":I
    add-int v7, v8, v6

    .line 581
    .local v7, "listUnfadedBottom":I
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 583
    .local v5, "fadingEdge":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 585
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gtz v13, :cond_3a

    if-le v9, v5, :cond_3b

    .line 586
    :cond_3a
    add-int/2addr v8, v5

    .line 590
    :cond_3b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 591
    .local v2, "childCount":I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 593
    .local v1, "bottomOfBottomChild":I
    invoke-direct {p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 595
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v14, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v14, v14, -0x1

    if-lt v13, v14, :cond_5f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_60

    .line 597
    :cond_5f
    sub-int/2addr v7, v5

    .line 601
    :cond_60
    const/4 v11, 0x0

    .line 603
    .local v11, "scrollYDelta":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_9f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_9f

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_98

    .line 610
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 617
    :goto_79
    sub-int v4, v1, v7

    .line 618
    .local v4, "distanceToBottom":I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 638
    .end local v4    # "distanceToBottom":I
    :cond_7f
    :goto_7f
    if-eqz v11, :cond_d0

    const/4 v10, 0x1

    .line 639
    .local v10, "scroll":Z
    :goto_82
    if-eqz v10, :cond_97

    .line 640
    neg-int v13, v11

    invoke-direct {p0, v13}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 641
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {p0, v13, v0}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 643
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 645
    :cond_97
    return v10

    .line 613
    .end local v10    # "scroll":Z
    :cond_98
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_79

    .line 619
    :cond_9f
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_7f

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_7f

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_c8

    .line 626
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 633
    :goto_b8
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 634
    .local v12, "top":I
    sub-int v3, v12, v8

    .line 635
    .local v3, "deltaToTop":I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_7f

    .line 629
    .end local v3    # "deltaToTop":I
    .end local v12    # "top":I
    :cond_c8
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_b8

    .line 638
    :cond_d0
    const/4 v10, 0x0

    goto :goto_82
.end method

.method resetList()V
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 525
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 527
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 530
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 80
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_11

    .line 465
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 468
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 469
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 471
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_29

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8f

    .line 472
    :cond_29
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 477
    :goto_34
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 478
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 481
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_97

    .line 484
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 485
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 486
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 487
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 489
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 490
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 492
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 495
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_92

    .line 496
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 500
    .local v0, "position":I
    :goto_7e
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 501
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 503
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_8b

    .line 505
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 514
    .end local v0    # "position":I
    :cond_8b
    :goto_8b
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 515
    return-void

    .line 474
    :cond_8f
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_34

    .line 498
    :cond_92
    invoke-virtual {p0, v4, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_7e

    .line 508
    .end local v0    # "position":I
    :cond_97
    iput-boolean v5, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 509
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 511
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    goto :goto_8b
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .param p1, "color"    # I

    .prologue
    .line 3187
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1f

    const/4 v0, 0x1

    .line 3188
    .local v0, "opaque":Z
    :goto_7
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3189
    if-eqz v0, :cond_1b

    .line 3190
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_16

    .line 3191
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3193
    :cond_16
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3195
    :cond_1b
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3196
    return-void

    .line 3187
    .end local v0    # "opaque":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 3444
    if-eqz p1, :cond_1e

    .line 3445
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3449
    :goto_9
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3450
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3451
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3452
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3453
    return-void

    .line 3447
    :cond_1e
    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    goto :goto_9
.end method

.method public setDividerHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 3469
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3470
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 3471
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3472
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .param p1, "footerDividersEnabled"    # Z

    .prologue
    .line 3507
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3508
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3509
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .param p1, "headerDividersEnabled"    # Z

    .prologue
    .line 3484
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3485
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3486
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .param p1, "itemsCanFocus"    # Z

    .prologue
    .line 3150
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 3151
    if-nez p1, :cond_9

    .line 3152
    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 3154
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "footer"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3548
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3549
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3550
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "header"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3527
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3528
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_9

    .line 3529
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3531
    :cond_9
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1937
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1938
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .prologue
    .line 2100
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2101
    .local v0, "count":I
    if-lez v0, :cond_c

    .line 2102
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2113
    :goto_b
    return-void

    .line 2106
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 2107
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_b

    .line 2109
    :cond_14
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2110
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_b
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 1977
    :cond_4
    :goto_4
    return-void

    .line 1954
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1955
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1956
    if-ltz p1, :cond_15

    .line 1957
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1963
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 1964
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1965
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1967
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2f

    .line 1968
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1969
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1972
    :cond_2f
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v0, :cond_38

    .line 1973
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 1975
    :cond_38
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_4

    .line 1960
    :cond_3c
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_15
.end method

.method setSelectionInt(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1986
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1987
    const/4 v0, 0x0

    .line 1989
    .local v0, "awakeScrollbars":Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1991
    .local v1, "selectedPosition":I
    if-ltz v1, :cond_d

    .line 1992
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_1f

    .line 1993
    const/4 v0, 0x1

    .line 1999
    :cond_d
    :goto_d
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v2, :cond_16

    .line 2000
    iget-object v2, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 2003
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2005
    if-eqz v0, :cond_1e

    .line 2006
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 2008
    :cond_1e
    return-void

    .line 1994
    :cond_1f
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_d

    .line 1995
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public smoothScrollByOffset(I)V
    .registers 2
    .param p1, "offset"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 937
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    .line 938
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 2
    .param p1, "position"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 928
    return-void
.end method
