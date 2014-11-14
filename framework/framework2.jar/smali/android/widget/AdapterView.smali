.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$1;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;,
        Landroid/widget/AdapterView$OnTwMultiSelectedListener;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

.field mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 83
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 93
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 125
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 162
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 168
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 173
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 179
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 211
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 216
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 235
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 83
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 93
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 125
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 162
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 168
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 173
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 179
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 211
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 216
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 235
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 83
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 93
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 125
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 162
    iput v3, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 168
    iput-wide v1, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 173
    iput v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 179
    iput-wide v1, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 211
    iput v3, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 216
    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 235
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 250
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 252
    :cond_27
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/AdapterView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/AdapterView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 1043
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 1054
    :goto_4
    return-void

    .line 1046
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1047
    .local v3, "selection":I
    if-ltz v3, :cond_1e

    .line 1048
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1049
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 1052
    .end local v2    # "v":Landroid/view/View;
    :cond_1e
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_4
.end method

.method private isScrollableForAccessibility()Z
    .registers 6

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 1118
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1119
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1c

    .line 1120
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1121
    .local v1, "itemCount":I
    if-lez v1, :cond_1c

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1b

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    .line 1124
    .end local v1    # "itemCount":I
    :cond_1c
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .registers 3

    .prologue
    .line 1057
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1065
    :cond_c
    :goto_c
    return-void

    .line 1060
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 1061
    .local v0, "position":I
    if-ltz v0, :cond_c

    .line 1063
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 883
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 884
    const/4 p1, 0x0

    .line 887
    :cond_a
    if-eqz p1, :cond_2d

    .line 888
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 889
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 899
    :goto_18
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_28

    .line 900
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 906
    :cond_28
    :goto_28
    return-void

    .line 893
    :cond_29
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 903
    :cond_2d
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 904
    :cond_36
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 604
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 617
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 645
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 630
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1129
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

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

.method checkFocus()V
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 864
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 865
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_e
    move v1, v4

    .line 866
    .local v1, "empty":Z
    :goto_f
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_17
    move v2, v4

    .line 870
    .local v2, "focusable":Z
    :goto_18
    if-eqz v2, :cond_41

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_41

    move v3, v4

    :goto_1f
    invoke-super {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 871
    if-eqz v2, :cond_43

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_43

    move v3, v4

    :goto_29
    invoke-super {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 872
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 873
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    move v5, v4

    :cond_39
    invoke-direct {p0, v5}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 875
    :cond_3c
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_3d
    move v1, v5

    .line 865
    goto :goto_f

    .restart local v1    # "empty":Z
    :cond_3f
    move v2, v5

    .line 866
    goto :goto_18

    .restart local v2    # "focusable":Z
    :cond_41
    move v3, v5

    .line 870
    goto :goto_1f

    :cond_43
    move v3, v5

    .line 871
    goto :goto_29
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 1198
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 1199
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1200
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1201
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1203
    :cond_19
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1069
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1070
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1072
    const/4 v1, 0x1

    .line 1074
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 944
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 936
    return-void
.end method

.method findSyncPosition()I
    .registers 20

    .prologue
    .line 1214
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1216
    .local v2, "count":I
    if-nez v2, :cond_8

    .line 1217
    const/4 v14, -0x1

    .line 1289
    :cond_7
    :goto_7
    return v14

    .line 1220
    :cond_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1221
    .local v8, "idToMatch":J
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1224
    .local v14, "seed":I
    const-wide/high16 v15, -0x8000000000000000L

    cmp-long v15, v8, v15

    if-nez v15, :cond_18

    .line 1225
    const/4 v14, -0x1

    goto :goto_7

    .line 1229
    :cond_18
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1230
    add-int/lit8 v15, v2, -0x1

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    const-wide/16 v17, 0x64

    add-long v3, v15, v17

    .line 1237
    .local v3, "endTime":J
    move v5, v14

    .line 1240
    .local v5, "first":I
    move v10, v14

    .line 1243
    .local v10, "last":I
    const/4 v11, 0x0

    .line 1253
    .local v11, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1254
    .local v1, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v1, :cond_40

    .line 1255
    const/4 v14, -0x1

    goto :goto_7

    .line 1273
    .local v6, "hitFirst":Z
    .local v7, "hitLast":Z
    .local v12, "rowId":J
    :cond_36
    if-nez v6, :cond_3c

    if-eqz v11, :cond_62

    if-nez v7, :cond_62

    .line 1275
    :cond_3c
    add-int/lit8 v10, v10, 0x1

    .line 1276
    move v14, v10

    .line 1278
    const/4 v11, 0x0

    .line 1258
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_40
    :goto_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    cmp-long v15, v15, v3

    if-gtz v15, :cond_5c

    .line 1259
    invoke-interface {v1, v14}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    .line 1260
    .restart local v12    # "rowId":J
    cmp-long v15, v12, v8

    if-eqz v15, :cond_7

    .line 1265
    add-int/lit8 v15, v2, -0x1

    if-ne v10, v15, :cond_5e

    const/4 v7, 0x1

    .line 1266
    .restart local v7    # "hitLast":Z
    :goto_55
    if-nez v5, :cond_60

    const/4 v6, 0x1

    .line 1268
    .restart local v6    # "hitFirst":Z
    :goto_58
    if-eqz v7, :cond_36

    if-eqz v6, :cond_36

    .line 1289
    .end local v6    # "hitFirst":Z
    .end local v7    # "hitLast":Z
    .end local v12    # "rowId":J
    :cond_5c
    const/4 v14, -0x1

    goto :goto_7

    .line 1265
    .restart local v12    # "rowId":J
    :cond_5e
    const/4 v7, 0x0

    goto :goto_55

    .line 1266
    .restart local v7    # "hitLast":Z
    :cond_60
    const/4 v6, 0x0

    goto :goto_58

    .line 1279
    .restart local v6    # "hitFirst":Z
    :cond_62
    if-nez v7, :cond_68

    if-nez v11, :cond_40

    if-nez v6, :cond_40

    .line 1281
    :cond_68
    add-int/lit8 v5, v5, -0x1

    .line 1282
    move v14, v5

    .line 1284
    const/4 v11, 0x1

    goto :goto_40
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 734
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 824
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 777
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 915
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 916
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public getItemIdAtPosition(I)J
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 920
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 921
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v1, -0x8000000000000000L

    :goto_a
    return-wide v1

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_a
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 787
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 291
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 361
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 407
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getOnTwMultiSelectedListener()Landroid/widget/AdapterView$OnTwMultiSelectedListener;
    .registers 2

    .prologue
    .line 451
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    return-object v0
.end method

.method public final getOnTwNotifyKeyPressListener()Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;
    .registers 2

    .prologue
    .line 532
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 747
    move-object v3, p1

    .line 750
    .local v3, "listItem":Landroid/view/View;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_10

    move-result v6

    if-nez v6, :cond_12

    .line 751
    move-object v3, v4

    goto :goto_2

    .line 753
    .end local v4    # "v":Landroid/view/View;
    :catch_10
    move-exception v1

    .line 767
    :cond_11
    :goto_11
    return v5

    .line 759
    .restart local v4    # "v":Landroid/view/View;
    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 760
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v0, :cond_11

    .line 761
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 762
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_11

    .line 760
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 718
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 719
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 720
    .local v1, "selection":I
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    if-ltz v1, :cond_17

    .line 721
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 723
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getSelectedItemId()J
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1133
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1134
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1136
    .local v1, "found":Z
    if-lez v0, :cond_40

    .line 1141
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_20

    .line 1144
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1148
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 1149
    .local v2, "newPos":I
    if-ltz v2, :cond_20

    .line 1151
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1152
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_20

    .line 1154
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1155
    const/4 v1, 0x1

    .line 1159
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_20
    if-nez v1, :cond_40

    .line 1161
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1164
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_2a

    .line 1165
    add-int/lit8 v2, v0, -0x1

    .line 1167
    :cond_2a
    if-gez v2, :cond_2d

    .line 1168
    const/4 v2, 0x0

    .line 1172
    :cond_2d
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1173
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_37

    .line 1175
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1177
    :cond_37
    if-ltz v3, :cond_40

    .line 1178
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1179
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1180
    const/4 v1, 0x1

    .line 1184
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_40
    if-nez v1, :cond_4f

    .line 1186
    iput v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1187
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1188
    iput v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1189
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1190
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1191
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1194
    :cond_4f
    invoke-virtual {p0}, Landroid/view/View;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1195
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 834
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1301
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 999
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1000
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1001
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1104
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1105
    const-class v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1106
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 1107
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_20

    .line 1109
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 1111
    :cond_20
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 1112
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1113
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 1114
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 1115
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1093
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1094
    const-class v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1095
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1096
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1097
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_20

    .line 1098
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1100
    :cond_20
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 685
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 686
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1079
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1081
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1082
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1084
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1085
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1086
    const/4 v1, 0x1

    .line 1088
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1e

    .line 307
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    instance-of v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v1, :cond_f

    .line 308
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 310
    :cond_f
    if-eqz p1, :cond_14

    .line 311
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 313
    :cond_14
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    .line 317
    :cond_1e
    return v0
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1334
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2e

    .line 1335
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1336
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1337
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2f

    .line 1339
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1340
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1341
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1342
    if-eqz v1, :cond_2c

    .line 1343
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1345
    :cond_2c
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1362
    .end local v1    # "v":Landroid/view/View;
    :cond_2e
    :goto_2e
    return-void

    .line 1348
    :cond_2f
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1349
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1350
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5a

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1351
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1355
    :goto_4b
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1356
    if-eqz v1, :cond_57

    .line 1357
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1359
    :cond_57
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_2e

    .line 1353
    :cond_5a
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_4b
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 680
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 658
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 670
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .line 1020
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1022
    :cond_10
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_2a

    .line 1027
    :cond_18
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_24

    .line 1028
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V

    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 1030
    :cond_24
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1036
    :cond_29
    :goto_29
    return-void

    .line 1032
    :cond_2a
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 1033
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_29
.end method

.method selectionChangedForAccessibility()V
    .registers 1

    .prologue
    .line 1039
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 1040
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    .line 803
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 806
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 808
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 811
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 812
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 813
    .local v1, "empty":Z
    :cond_1a
    :goto_1a
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 814
    return-void

    .line 812
    .end local v1    # "empty":Z
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public setFocusable(Z)V
    .registers 7
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 839
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 840
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 842
    .local v1, "empty":Z
    :goto_f
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 843
    if-nez p1, :cond_15

    .line 844
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 847
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 848
    return-void

    .end local v1    # "empty":Z
    :cond_23
    move v1, v2

    .line 840
    goto :goto_f

    .restart local v1    # "empty":Z
    :cond_25
    move v3, v2

    .line 847
    goto :goto_1f
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 852
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 853
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_23

    :cond_e
    move v1, v3

    .line 855
    .local v1, "empty":Z
    :goto_f
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 856
    if-eqz p1, :cond_15

    .line 857
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 860
    :cond_15
    if-eqz p1, :cond_25

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_1f
    :goto_1f
    invoke-super {p0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 861
    return-void

    .end local v1    # "empty":Z
    :cond_23
    move v1, v2

    .line 853
    goto :goto_f

    .restart local v1    # "empty":Z
    :cond_25
    move v3, v2

    .line 860
    goto :goto_1f
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1319
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1320
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1322
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1323
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1324
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1326
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 926
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 283
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 284
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 350
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 353
    :cond_a
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 354
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 403
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 404
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1309
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1310
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1311
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method public setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    .prologue
    .line 442
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    .line 443
    return-void
.end method

.method public setTwNotifyOnKeyPressListener(Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    .prologue
    .line 523
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    .line 524
    return-void
.end method

.method public twNotifyKeyPress(Landroid/view/View;IJZ)Z
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z

    .prologue
    .line 540
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    if-eqz v0, :cond_10

    .line 541
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwNotifyKeyPressListener:Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/widget/AdapterView$OnTwNotifyKeyPressListener;->onTwNotifyKeyPress(Landroid/widget/AdapterView;Landroid/view/View;IJZ)V

    .line 542
    const/4 v0, 0x1

    .line 545
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public twNotifyMultiSelectedStart()V
    .registers 2

    .prologue
    .line 473
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_9

    .line 474
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-interface {v0}, Landroid/widget/AdapterView$OnTwMultiSelectedListener;->OnTwMultiSelectStart()V

    .line 477
    :cond_9
    return-void
.end method

.method public twNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .registers 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z
    .param p6, "ctrlPressState"    # Z
    .param p7, "PenPressState"    # Z

    .prologue
    .line 460
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_13

    .line 461
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/widget/AdapterView$OnTwMultiSelectedListener;->onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V

    .line 462
    const/4 v0, 0x1

    .line 465
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public twNotifyMultiSelectedStop()V
    .registers 2

    .prologue
    .line 484
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    if-eqz v0, :cond_9

    .line 485
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnTwMultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-interface {v0}, Landroid/widget/AdapterView$OnTwMultiSelectedListener;->OnTwMultiSelectStop()V

    .line 487
    :cond_9
    return-void
.end method
