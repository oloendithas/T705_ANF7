.class Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;
.super Ljava/lang/Object;
.source "ACDeleteLanguages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

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
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, "checked":Z
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    const/4 v1, 0x0

    .line 158
    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_1
    # invokes: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v6, v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Z)V

    .line 159
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 160
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # setter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$302(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Z)Z

    .line 164
    :goto_2
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 165
    check-cast v2, Landroid/view/ViewGroup;

    .line 166
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "cb":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 168
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0    # "cb":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 171
    .end local v2    # "group":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$300(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    .line 176
    :goto_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 177
    return-void

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 158
    goto :goto_1

    .line 162
    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # setter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mAllSelected:Z
    invoke-static {v3, v5}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$302(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Z)Z

    goto :goto_2

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$1;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3
.end method
