.class public Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CheckboxArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final SET_FALSE:I = 0x2

.field public static final SET_TRUE:I = 0x1

.field public static final UNUSED:I


# instance fields
.field private cb:Landroid/widget/CheckBox;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAllSelected:I

.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "deleteItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    .line 33
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    .line 35
    iput-object p3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    .line 36
    iput p2, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mResourceId:I

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    move-object v1, p2

    .line 42
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 43
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 44
    .local v2, "vi":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->item:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 48
    const v3, 0x7f0800bf

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    .line 49
    const v3, 0x7f0800be

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    .line 50
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 51
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 53
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    if-ne v3, v5, :cond_2

    .line 54
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    :cond_1
    :goto_0
    return-object v1

    .line 55
    :cond_2
    iget v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 56
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->deleteItem:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->tv:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 62
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckAll(I)V
    .locals 0
    .param p1, "check"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->mAllSelected:I

    .line 72
    return-void
.end method
