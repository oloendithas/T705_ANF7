.class public Lcom/android/systemui/recent/RecentsHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field private mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mOnScrollListener:Ljava/lang/Runnable;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 70
    .local v0, "densityScale":F
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 71
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 72
    invoke-static {p1, p2, p0, v4}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    .line 73
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method private adjustViewPadding(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "padding"    # I

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 312
    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "i"    # I

    .prologue
    .line 446
    return-void
.end method

.method private update()V
    .locals 26

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0d0018

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 106
    .local v13, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingStart()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getPaddingTop()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingBottom()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 109
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 111
    .local v18, "v":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 114
    .end local v18    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v16

    .line 115
    .local v16, "transitioner":Landroid/animation/LayoutTransition;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mRecycledViews:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 119
    .local v14, "recycledViews":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_8

    .line 120
    const/4 v12, 0x0

    .line 121
    .local v12, "old":Landroid/view/View;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 122
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "old":Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 123
    .restart local v12    # "old":Landroid/view/View;
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 124
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v12, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 128
    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->adjustViewPadding(Landroid/view/View;I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->addViewCallback(Landroid/view/View;)V

    .line 134
    :cond_2
    new-instance v11, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 141
    .local v11, "noOpListener":Landroid/view/View$OnTouchListener;
    new-instance v22, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 149
    new-instance v9, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    .line 155
    .local v9, "launchAppListener":Landroid/view/View$OnClickListener;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 158
    .local v7, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v22, :cond_3

    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v22, :cond_6

    .line 159
    :cond_3
    iget-object v6, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    .line 160
    .local v6, "clickView":Landroid/view/View;
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->recentItem:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_2
    move-object v15, v6

    .line 165
    .local v15, "thumbnailView":Landroid/view/View;
    new-instance v10, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1, v15}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 172
    .local v10, "longClickListener":Landroid/view/View$OnLongClickListener;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setClickable(Z)V

    .line 174
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v22, :cond_4

    .line 175
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f05000d

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    .line 176
    .local v20, "zoomIn":Landroid/view/animation/Animation;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f05000e

    invoke-static/range {v22 .. v23}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v21

    .line 177
    .local v21, "zoomOut":Landroid/view/animation/Animation;
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 178
    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 179
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    .end local v20    # "zoomIn":Landroid/view/animation/Animation;
    .end local v21    # "zoomOut":Landroid/view/animation/Animation;
    :cond_4
    invoke-virtual {v15, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {v15, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 202
    new-instance v22, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    new-instance v22, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 226
    const v22, 0x7f08008d

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 227
    .local v4, "appTitle":Landroid/view/View;
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v22, :cond_5

    sget-boolean v22, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v22, :cond_7

    .line 119
    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 162
    .end local v4    # "appTitle":Landroid/view/View;
    .end local v6    # "clickView":Landroid/view/View;
    .end local v10    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v15    # "thumbnailView":Landroid/view/View;
    :cond_6
    iget-object v6, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrameShadow:Landroid/view/View;

    .restart local v6    # "clickView":Landroid/view/View;
    goto/16 :goto_2

    .line 233
    .restart local v4    # "appTitle":Landroid/view/View;
    .restart local v10    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .restart local v15    # "thumbnailView":Landroid/view/View;
    :cond_7
    iget-object v5, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrameShadow:Landroid/view/View;

    .line 266
    .local v5, "bgView":Landroid/view/View;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 267
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 268
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$9;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 291
    .end local v4    # "appTitle":Landroid/view/View;
    .end local v5    # "bgView":Landroid/view/View;
    .end local v6    # "clickView":Landroid/view/View;
    .end local v7    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v9    # "launchAppListener":Landroid/view/View$OnClickListener;
    .end local v10    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v11    # "noOpListener":Landroid/view/View$OnTouchListener;
    .end local v12    # "old":Landroid/view/View;
    .end local v15    # "thumbnailView":Landroid/view/View;
    .end local v19    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 295
    new-instance v17, Lcom/android/systemui/recent/RecentsHorizontalScrollView$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$10;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 305
    .local v17, "updateScroll":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 306
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 337
    return-void
.end method

.method public drawFadedEdges(Landroid/graphics/Canvas;IIII)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget v6, p0, Landroid/view/View;->mScrollX:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLeftFadingEdgeStrength()F

    move-result v10

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRightFadingEdgeStrength()F

    move-result v11

    iget v12, p0, Landroid/view/View;->mPaddingTop:I

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    .line 385
    :cond_0
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .param p1, "persistentTaskId"    # I

    .prologue
    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 94
    .local v0, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    .line 98
    .end local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 91
    .restart local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 361
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 362
    .local v3, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 369
    .end local v1    # "item":Landroid/view/View;
    :goto_1
    return-object v1

    .line 362
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "item":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V

    .line 432
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 354
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 342
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, "contentView":Landroid/view/View;
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 347
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 348
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 436
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 438
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 439
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 440
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V

    .line 442
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 419
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 420
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 421
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 422
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 424
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setOverScrollEffectPadding(II)V

    .line 425
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    sget-boolean v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentsPanelView"

    const-string v1, "onInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 393
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 450
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 454
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 455
    .local v0, "transition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLastScrollPosition:I

    .line 463
    new-instance v1, Lcom/android/systemui/recent/RecentsHorizontalScrollView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$11;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllViewsInLayout()V
    .locals 8

    .prologue
    .line 518
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 519
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 520
    .local v4, "scrollX":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v2, 0x0

    .local v2, "delayCounter":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 521
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, "child":Landroid/view/View;
    new-instance v5, Lcom/android/systemui/recent/RecentsHorizontalScrollView$13;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$13;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;Landroid/view/View;)V

    mul-int/lit8 v6, v2, 0x64

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 529
    add-int/lit8 v2, v2, 0x1

    .line 520
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->dismissChild(Landroid/view/View;)V

    .line 317
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .prologue
    const/high16 v7, -0x80000000

    .line 476
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 477
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsHorizontalScrollView$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView$12;-><init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    invoke-virtual {v5, v6}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 487
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 489
    .local v1, "childWidthMeasureSpec":I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 491
    .local v2, "childheightMeasureSpec":I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 493
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    .line 495
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 497
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 498
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/recent/RecentsCallback;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 514
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 510
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1, "minAlpha"    # F

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 78
    return-void
.end method

.method public setOnScrollListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    .line 397
    return-void
.end method
