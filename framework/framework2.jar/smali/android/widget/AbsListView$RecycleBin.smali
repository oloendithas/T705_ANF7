.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3

    .prologue
    .line 8282
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8296
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$5100(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;

    .prologue
    .line 8282
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5102(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AbsListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 8282
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .registers 14

    .prologue
    .line 8635
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 8636
    .local v3, "maxViews":I
    iget v9, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8637
    .local v9, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8638
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v9, :cond_2d

    .line 8639
    aget-object v4, v5, v1

    .line 8640
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 8641
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 8642
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 8643
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_16
    if-ge v2, v0, :cond_2a

    .line 8644
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    # invokes: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v11, v10, v12}, Landroid/widget/AbsListView;->access$5900(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8643
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_16

    .line 8638
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 8648
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_2d
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v10, :cond_52

    .line 8649
    const/4 v1, 0x0

    :goto_32
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_52

    .line 8650
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8651
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_4f

    .line 8652
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8653
    add-int/lit8 v1, v1, -0x1

    .line 8649
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 8657
    .end local v8    # "v":Landroid/view/View;
    :cond_52
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_77

    .line 8658
    const/4 v1, 0x0

    :goto_57
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_77

    .line 8659
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8660
    .restart local v8    # "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_74

    .line 8661
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8662
    add-int/lit8 v1, v1, -0x1

    .line 8658
    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 8666
    .end local v8    # "v":Landroid/view/View;
    :cond_77
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .registers 9
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 8489
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 8490
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_a

    .line 8554
    :cond_9
    :goto_9
    return-void

    .line 8494
    :cond_a
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8498
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 8499
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8503
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8509
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v4}, Landroid/view/View;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 8513
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8514
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_69

    .line 8515
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_41

    .line 8518
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_39

    .line 8519
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8521
    :cond_39
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    .line 8522
    :cond_41
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v3, :cond_58

    .line 8525
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_52

    .line 8526
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8528
    :cond_52
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 8531
    :cond_58
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_63

    .line 8532
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 8534
    :cond_63
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 8537
    :cond_69
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_89

    .line 8538
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8544
    :goto_72
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 8545
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8548
    :cond_7b
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8550
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_9

    .line 8551
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_9

    .line 8540
    :cond_89
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72
.end method

.method clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 8365
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 8366
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8367
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8368
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_44

    .line 8369
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsListView;->access$5500(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8368
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 8372
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_20
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8373
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23
    if-ge v0, v4, :cond_44

    .line 8374
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 8375
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8376
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2e
    if-ge v1, v3, :cond_41

    .line 8377
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    # invokes: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v6, v5, v7}, Landroid/widget/AbsListView;->access$5600(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8376
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 8373
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 8381
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_44
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v5, :cond_4d

    .line 8382
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 8384
    :cond_4d
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_56

    .line 8385
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 8387
    :cond_56
    return-void
.end method

.method clearTransientStateViews()V
    .registers 2

    .prologue
    .line 8456
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    .line 8457
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8459
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 8460
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 8462
    :cond_12
    return-void
.end method

.method fillActiveViews(II)V
    .registers 9
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 8397
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_9

    .line 8398
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8400
    :cond_9
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 8403
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8404
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, p1, :cond_28

    .line 8405
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8406
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 8408
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_25

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_25

    .line 8411
    aput-object v1, v0, v2

    .line 8404
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 8414
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_28
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 8424
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 8425
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8426
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_11

    array-length v4, v0

    if-ge v1, v4, :cond_11

    .line 8427
    aget-object v2, v0, v1

    .line 8428
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 8431
    .end local v2    # "match":Landroid/view/View;
    :goto_10
    return-object v2

    :cond_11
    move-object v2, v3

    goto :goto_10
.end method

.method getScrapView(I)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 8468
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 8469
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8476
    :goto_b
    return-object v1

    .line 8471
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8472
    .local v0, "whichScrap":I
    if-ltz v0, :cond_24

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 8473
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_b

    .line 8476
    :cond_24
    const/4 v1, 0x0

    goto :goto_b
.end method

.method getTransientStateView(I)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 8435
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_26

    .line 8436
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 8437
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8438
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 8449
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_25
    return-object v3

    .line 8441
    :cond_26
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_40

    .line 8442
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 8443
    .local v2, "index":I
    if-ltz v2, :cond_40

    .line 8444
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 8445
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_25

    .line 8449
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_40
    const/4 v3, 0x0

    goto :goto_25
.end method

.method public markChildrenDirty()V
    .registers 9

    .prologue
    .line 8327
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    .line 8328
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8329
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8330
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v4, :cond_39

    .line 8331
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8330
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8334
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_1a
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8335
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1d
    if-ge v1, v5, :cond_39

    .line 8336
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 8337
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 8338
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    if-ge v2, v4, :cond_36

    .line 8339
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8338
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 8335
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8343
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_39
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_54

    .line 8344
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8345
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_44
    if-ge v1, v0, :cond_54

    .line 8346
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8345
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 8349
    .end local v0    # "count":I
    :cond_54
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_6f

    .line 8350
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 8351
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v0, :cond_6f

    .line 8352
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 8351
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 8355
    .end local v0    # "count":I
    :cond_6f
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8672
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 8673
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8682
    :cond_a
    return-void

    .line 8675
    :cond_b
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8676
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8677
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v3, :cond_a

    .line 8678
    aget-object v1, v2, v0

    .line 8679
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8677
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method removeSkippedScrap()V
    .registers 6

    .prologue
    .line 8560
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 8568
    :goto_4
    return-void

    .line 8563
    :cond_5
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8564
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1f

    .line 8565
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    # invokes: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v3, v2, v4}, Landroid/widget/AbsListView;->access$5700(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8564
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 8567
    :cond_1f
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4
.end method

.method scrapActiveViews()V
    .registers 15

    .prologue
    .line 8574
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8575
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v12, :cond_66

    const/4 v2, 0x1

    .line 8576
    .local v2, "hasListener":Z
    :goto_7
    iget v12, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_68

    const/4 v7, 0x1

    .line 8578
    .local v7, "multipleScraps":Z
    :goto_d
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8579
    .local v9, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8580
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_9b

    .line 8581
    aget-object v10, v0, v3

    .line 8582
    .local v10, "victim":Landroid/view/View;
    if-eqz v10, :cond_63

    .line 8583
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    .line 8585
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v11, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 8587
    .local v11, "whichScrap":I
    const/4 v12, 0x0

    aput-object v12, v0, v3

    .line 8589
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    .line 8590
    .local v8, "scrapHasTransientState":Z
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v12

    if-eqz v12, :cond_2f

    if-eqz v8, :cond_7e

    .line 8592
    :cond_2f
    const/4 v12, -0x2

    if-eq v11, v12, :cond_3a

    if-eqz v8, :cond_3a

    .line 8594
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v13, 0x0

    # invokes: Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v12, v10, v13}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 8596
    :cond_3a
    if-eqz v8, :cond_63

    .line 8597
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v12, v12, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_6a

    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v12, v12, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_6a

    .line 8598
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v12, :cond_53

    .line 8599
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8601
    :cond_53
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v12, v12, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v12, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8602
    .local v4, "id":J
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8580
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v11    # "whichScrap":I
    :cond_63
    :goto_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 8575
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "victim":Landroid/view/View;
    :cond_66
    const/4 v2, 0x0

    goto :goto_7

    .line 8576
    .restart local v2    # "hasListener":Z
    :cond_68
    const/4 v7, 0x0

    goto :goto_d

    .line 8604
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapHasTransientState":Z
    .restart local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "victim":Landroid/view/View;
    .restart local v11    # "whichScrap":I
    :cond_6a
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v12, :cond_75

    .line 8605
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8607
    :cond_75
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_63

    .line 8613
    :cond_7e
    if-eqz v7, :cond_84

    .line 8614
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v9, v12, v11

    .line 8616
    :cond_84
    invoke-virtual {v10}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8617
    iget v12, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    iput v12, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 8618
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8620
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8621
    if-eqz v2, :cond_63

    .line 8622
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v12, v10}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_63

    .line 8627
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v10    # "victim":Landroid/view/View;
    .end local v11    # "whichScrap":I
    :cond_9b
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 8628
    return-void
.end method

.method setCacheColorHint(I)V
    .registers 12
    .param p1, "color"    # I

    .prologue
    .line 8690
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 8691
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8692
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8693
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v5, :cond_39

    .line 8694
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8693
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 8697
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_1a
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8698
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    if-ge v2, v6, :cond_39

    .line 8699
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 8700
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8701
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_28
    if-ge v3, v5, :cond_36

    .line 8702
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8701
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 8698
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 8707
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_39
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8708
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 8709
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_49

    .line 8710
    aget-object v7, v0, v2

    .line 8711
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_46

    .line 8712
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8709
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 8715
    .end local v7    # "victim":Landroid/view/View;
    :cond_49
    return-void
.end method

.method public setViewTypeCount(I)V
    .registers 6
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 8313
    const/4 v2, 0x1

    if-ge p1, v2, :cond_b

    .line 8314
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8317
    :cond_b
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 8318
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p1, :cond_1a

    .line 8319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 8318
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 8321
    :cond_1a
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8322
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8323
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8324
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .registers 3
    .param p1, "viewType"    # I

    .prologue
    .line 8358
    if-ltz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
