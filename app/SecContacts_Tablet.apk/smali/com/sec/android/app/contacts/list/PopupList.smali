.class public Lcom/sec/android/app/contacts/list/PopupList;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;,
        Lcom/sec/android/app/contacts/list/PopupList$Item;,
        Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

.field private final mAnchorView:Landroid/view/View;

.field private mContentList:Landroid/widget/ListView;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/list/PopupList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnPopupItemClickListener:Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

.field private mPopupHeight:I

.field private mPopupOffsetY:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Lcom/sec/android/app/contacts/list/PopupList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/PopupList$1;-><init>(Lcom/sec/android/app/contacts/list/PopupList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 129
    new-instance v0, Lcom/sec/android/app/contacts/list/PopupList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/PopupList$2;-><init>(Lcom/sec/android/app/contacts/list/PopupList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 141
    new-instance v0, Lcom/sec/android/app/contacts/list/PopupList$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/PopupList$3;-><init>(Lcom/sec/android/app/contacts/list/PopupList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 83
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/list/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/list/PopupList;)Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnPopupItemClickListener:Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/list/PopupList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/PopupList;->updatePopupLayoutParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/list/PopupList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 194
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "popup":Landroid/widget/PopupWindow;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020983

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;

    const v3, 0x101006d

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContentList:Landroid/widget/ListView;

    .line 201
    new-instance v1, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;-><init>(Lcom/sec/android/app/contacts/list/PopupList;Lcom/sec/android/app/contacts/list/PopupList$1;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 205
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 206
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 208
    return-object v0
.end method

.method private updatePopupLayoutParams()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContentList:Landroid/widget/ListView;

    .line 174
    .local v0, "content":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 176
    .local v3, "popup":Landroid/widget/PopupWindow;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .local v2, "p":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 181
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v1

    .line 182
    .local v1, "maxHeight":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupHeight:I

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :goto_0
    iput v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWidth:I

    .line 190
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0156

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupOffsetY:I

    .line 191
    return-void

    .line 187
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/contacts/list/PopupList$Item;

    invoke-direct {v1, p1, p2}, Lcom/sec/android/app/contacts/list/PopupList$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 96
    :cond_0
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAdapter:Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public disMiss()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 170
    :cond_0
    return-void
.end method

.method public findItem(I)Lcom/sec/android/app/contacts/list/PopupList$Item;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 212
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/list/PopupList$Item;

    .line 213
    .local v1, "item":Lcom/sec/android/app/contacts/list/PopupList$Item;
    iget v2, v1, Lcom/sec/android/app/contacts/list/PopupList$Item;->id:I

    if-ne v2, p1, :cond_0

    .line 216
    .end local v1    # "item":Lcom/sec/android/app/contacts/list/PopupList$Item;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnPopupItemClickListener(Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnPopupItemClickListener:Lcom/sec/android/app/contacts/list/PopupList$OnPopupItemClickListener;

    .line 89
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mOnGLobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 158
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/PopupList;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/PopupList;->updatePopupLayoutParams()V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/contacts/list/PopupList;->mPopupOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, -0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method
