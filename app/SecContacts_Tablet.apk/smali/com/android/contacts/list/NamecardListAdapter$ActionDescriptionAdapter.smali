.class Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;
.super Ljava/lang/Object;
.source "NamecardListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/NamecardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionDescriptionAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/list/NamecardListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/NamecardListAdapter;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardListAdapter;->access$1700(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 604
    iput-object p2, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    .line 605
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 619
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 624
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 629
    if-nez p2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400aa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    .local v0, "action":Ljava/lang/String;
    const v2, 0x7f09022e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 635
    .local v1, "text2":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/contacts/list/NamecardListAdapter$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 671
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/DataSetObserver;

    .prologue
    .line 657
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/DataSetObserver;

    .prologue
    .line 662
    return-void
.end method
