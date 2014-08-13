.class Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->getSelectAllViewClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

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

    .line 283
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v7, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    .line 284
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 285
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 286
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 287
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDisplayView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$300(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v7, 0x7f0800be

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 288
    .local v1, "cb":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "i":I
    :cond_0
    move v4, v6

    .line 283
    goto :goto_0

    .line 290
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 292
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 295
    .end local v3    # "idx":I
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 296
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    .line 300
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    move v4, v5

    :goto_4
    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v7, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V

    .line 302
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 303
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 304
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d02df

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    :cond_3
    return-void

    .line 298
    .end local v0    # "bar":Landroid/app/ActionBar;
    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    :cond_5
    move v4, v6

    .line 300
    goto :goto_4
.end method
