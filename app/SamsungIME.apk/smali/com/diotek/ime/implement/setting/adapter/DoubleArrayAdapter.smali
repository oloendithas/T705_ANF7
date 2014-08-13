.class public Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DoubleArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
        ">;"
    }
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private ctv:Landroid/widget/TextView;

.field private deleteItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private item:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    .line 42
    iput p2, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    .line 43
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;>;"
    .local p4, "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    iput-object p3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    .line 33
    iput-object p4, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    .line 34
    iput p2, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    .line 35
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public add(Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;)V
    .locals 1
    .param p1, "object"    # Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->add(Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    .line 100
    .local v0, "data":Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v0    # "data":Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 103
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 89
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0800b6

    const/4 v5, 0x0

    .line 48
    move-object v1, p2

    .line 49
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 50
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 51
    .local v2, "vi":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    .line 54
    .local v0, "p":Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;
    if-eqz v0, :cond_2

    .line 55
    const v3, 0x7f0800b7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f0800b8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    .line 57
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    const v4, 0x7f03008d

    if-ne v3, v4, :cond_3

    .line 58
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 59
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->ctv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getSubstitutions()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 68
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 76
    :cond_2
    :goto_1
    return-object v1

    .line 60
    :cond_3
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->mResourceId:I

    const v4, 0x7f03008c

    if-ne v3, v4, :cond_1

    .line 61
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 62
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;>;"
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 95
    return-void
.end method
