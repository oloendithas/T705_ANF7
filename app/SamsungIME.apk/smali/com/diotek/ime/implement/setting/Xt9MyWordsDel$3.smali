.class Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;
.super Ljava/lang/Object;
.source "Xt9MyWordsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 182
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    # setter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v6, v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$302(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)Z

    .line 183
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 184
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$500(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$500(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0800be

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 187
    .local v0, "cb":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "i":I
    :cond_0
    move v3, v5

    .line 182
    goto :goto_0

    .line 189
    .restart local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 194
    .end local v2    # "idx":I
    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    .line 199
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    :goto_4
    # invokes: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$200(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)V

    .line 201
    return-void

    .line 197
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$3;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    :cond_4
    move v4, v5

    .line 199
    goto :goto_4
.end method
