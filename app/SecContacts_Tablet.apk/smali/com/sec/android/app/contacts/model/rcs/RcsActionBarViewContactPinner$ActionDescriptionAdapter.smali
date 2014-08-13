.class Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionDescriptionAdapter"
.end annotation


# instance fields
.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    .line 87
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400aa

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 121
    .local v0, "ad":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    const v2, 0x7f09022e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "text2":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/DataSetObserver;

    .prologue
    .line 144
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/DataSetObserver;

    .prologue
    .line 149
    return-void
.end method
