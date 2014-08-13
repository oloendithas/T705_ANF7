.class public Lcom/android/systemui/recent/RecentsVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "RecentsVerticalScrollView.java"

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
    .line 60
    sget-boolean v0, Lcom/android/systemui/recent/RecentsPanelView;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v0, "densityScale":F
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 75
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 77
    const/4 v2, 0x1

    invoke-static {p1, p2, p0, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    .line 78
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "i"    # I

    .prologue
    .line 434
    return-void
.end method

.method private update()V
    .locals 23

    .prologue
    .line 107
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 109
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 112
    .end local v17    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v15

    .line 113
    .local v15, "transitioner":Landroid/animation/LayoutTransition;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 121
    .local v13, "recycledViews":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_8

    .line 122
    const/4 v12, 0x0

    .line 123
    .local v12, "old":Landroid/view/View;
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 124
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "old":Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 125
    .restart local v12    # "old":Landroid/view/View;
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 126
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v12, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 130
    .local v18, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->addViewCallback(Landroid/view/View;)V

    .line 134
    :cond_2
    new-instance v11, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 141
    .local v11, "noOpListener":Landroid/view/View$OnTouchListener;
    new-instance v21, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 149
    new-instance v9, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    .line 155
    .local v9, "launchAppListener":Landroid/view/View$OnClickListener;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 157
    .local v7, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v21, :cond_3

    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v21, :cond_6

    .line 158
    :cond_3
    iget-object v6, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    .line 162
    .local v6, "clickView":Landroid/view/View;
    :goto_2
    move-object v14, v6

    .line 163
    .local v14, "thumbnailView":Landroid/view/View;
    new-instance v10, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1, v14}, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 170
    .local v10, "longClickListener":Landroid/view/View$OnLongClickListener;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setClickable(Z)V

    .line 172
    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v21, :cond_4

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f05000d

    invoke-static/range {v21 .. v22}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v19

    .line 174
    .local v19, "zoomIn":Landroid/view/animation/Animation;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f05000e

    invoke-static/range {v21 .. v22}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    .line 175
    .local v20, "zoomOut":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 176
    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 177
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    .end local v19    # "zoomIn":Landroid/view/animation/Animation;
    .end local v20    # "zoomOut":Landroid/view/animation/Animation;
    :cond_4
    invoke-virtual {v14, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    invoke-virtual {v14, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 198
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 199
    new-instance v21, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 209
    new-instance v21, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 223
    const v21, 0x7f08008d

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 224
    .local v4, "appTitle":Landroid/view/View;
    const-string v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v21, :cond_5

    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v21, :cond_7

    .line 227
    :cond_5
    invoke-virtual {v4, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 160
    .end local v4    # "appTitle":Landroid/view/View;
    .end local v6    # "clickView":Landroid/view/View;
    .end local v10    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v14    # "thumbnailView":Landroid/view/View;
    :cond_6
    iget-object v6, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrameShadow:Landroid/view/View;

    .restart local v6    # "clickView":Landroid/view/View;
    goto/16 :goto_2

    .line 229
    .restart local v4    # "appTitle":Landroid/view/View;
    .restart local v10    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .restart local v14    # "thumbnailView":Landroid/view/View;
    :cond_7
    iget-object v5, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->bgFrameShadow:Landroid/view/View;

    .line 262
    .local v5, "bgView":Landroid/view/View;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 263
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 264
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView$8;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, v7, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/systemui/recent/RecentsVerticalScrollView$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView$9;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    .line 286
    .end local v4    # "appTitle":Landroid/view/View;
    .end local v5    # "bgView":Landroid/view/View;
    .end local v6    # "clickView":Landroid/view/View;
    .end local v7    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v9    # "launchAppListener":Landroid/view/View$OnClickListener;
    .end local v10    # "longClickListener":Landroid/view/View$OnLongClickListener;
    .end local v11    # "noOpListener":Landroid/view/View$OnTouchListener;
    .end local v12    # "old":Landroid/view/View;
    .end local v14    # "thumbnailView":Landroid/view/View;
    .end local v18    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 289
    new-instance v16, Lcom/android/systemui/recent/RecentsVerticalScrollView$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView$10;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 299
    .local v16, "updateScroll":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 300
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 325
    return-void
.end method

.method public drawFadedEdges(Landroid/graphics/Canvas;IIII)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v13

    .line 369
    .local v13, "offsetRequired":Z
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {p0, v13}, Landroid/view/View;->getFadeTop(Z)I

    move-result v1

    add-int v4, p4, v1

    iget v6, p0, Landroid/view/View;->mScrollX:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getBottomFadingEdgeStrength()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Landroid/view/View;->mPaddingTop:I

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    .line 374
    .end local v13    # "offsetRequired":Z
    :cond_0
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .param p1, "persistentTaskId"    # I

    .prologue
    .line 96
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 99
    .local v0, "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    .line 103
    .end local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return-object v2

    .line 96
    .restart local v0    # "holder":Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
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
    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 349
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 350
    .local v3, "y":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

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

    .line 358
    .end local v1    # "item":Landroid/view/View;
    :goto_1
    return-object v1

    .line 350
    .restart local v1    # "item":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "item":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 362
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 402
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
    .line 390
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 393
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
    .line 492
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mFadedEdgeDrawHelper:Lcom/android/systemui/recent/FadedEdgeDrawHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/FadedEdgeDrawHelper;->onAttachedToWindowCallback(Landroid/widget/LinearLayout;Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 342
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 329
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v1, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, "contentView":Landroid/view/View;
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 336
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 427
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 428
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 429
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 430
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 345
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 408
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 410
    const v1, 0x7f080097

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 411
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 413
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setOverScrollEffectPadding(II)V

    .line 414
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 308
    sget-boolean v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentsPanelView"

    const-string v1, "onInterceptTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 378
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 382
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
    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 442
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 443
    .local v0, "transition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    .line 451
    new-instance v1, Lcom/android/systemui/recent/RecentsVerticalScrollView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$11;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 507
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 508
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 509
    .local v4, "scrollY":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v2, 0x0

    .local v2, "delayCounter":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 510
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 511
    .local v0, "child":Landroid/view/View;
    new-instance v5, Lcom/android/systemui/recent/RecentsVerticalScrollView$13;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$13;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    mul-int/lit8 v6, v2, 0x64

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 518
    add-int/lit8 v2, v2, 0x1

    .line 509
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->dismissChild(Landroid/view/View;)V

    .line 305
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .prologue
    const/high16 v7, -0x80000000

    .line 464
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 465
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$12;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$12;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v5, v6}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 476
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 478
    .local v1, "childWidthMeasureSpec":I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 480
    .local v2, "childheightMeasureSpec":I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 482
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    .line 484
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 486
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 487
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/recent/RecentsCallback;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 503
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 499
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1, "minAlpha"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 83
    return-void
.end method

.method public setOnScrollListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mOnScrollListener:Ljava/lang/Runnable;

    .line 386
    return-void
.end method
