.class Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/PopupList;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/list/PopupList;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/list/PopupList;Lcom/sec/android/app/contacts/list/PopupList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/list/PopupList;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/list/PopupList$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;-><init>(Lcom/sec/android/app/contacts/list/PopupList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$600(Lcom/sec/android/app/contacts/list/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$600(Lcom/sec/android/app/contacts/list/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/PopupList;->access$600(Lcom/sec/android/app/contacts/list/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/PopupList$Item;

    iget v0, v0, Lcom/sec/android/app/contacts/list/PopupList$Item;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 237
    if-nez p2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/PopupList;->access$700(Lcom/sec/android/app/contacts/list/PopupList;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 240
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 241
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/PopupList$ItemDataAdapter;->this$0:Lcom/sec/android/app/contacts/list/PopupList;

    # getter for: Lcom/sec/android/app/contacts/list/PopupList;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/list/PopupList;->access$600(Lcom/sec/android/app/contacts/list/PopupList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/list/PopupList$Item;

    iget-object v1, v1, Lcom/sec/android/app/contacts/list/PopupList$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-object p2
.end method
