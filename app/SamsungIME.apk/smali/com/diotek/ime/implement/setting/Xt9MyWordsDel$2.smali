.class Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;
.super Ljava/lang/Object;
.source "Xt9MyWordsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 138
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "checked":Z
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    const/4 v1, 0x0

    .line 149
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v5

    :goto_1
    # invokes: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->setDoneMenuEnabled(Z)V
    invoke-static {v7, v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$200(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)V

    .line 150
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v4, v7, :cond_3

    .line 151
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # setter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v4, v5}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$302(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)Z

    .line 155
    :goto_2
    instance-of v4, p2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 156
    check-cast v2, Landroid/view/ViewGroup;

    .line 157
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 158
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "cb":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    .line 160
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0    # "cb":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 165
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    .line 170
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 171
    return-void

    .line 146
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    .line 149
    goto :goto_1

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # setter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mAllSelected:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$302(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Z)Z

    goto :goto_2

    .line 157
    .restart local v0    # "cb":Landroid/view/View;
    .restart local v2    # "group":Landroid/view/ViewGroup;
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 168
    .end local v0    # "cb":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$2;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_4
.end method
