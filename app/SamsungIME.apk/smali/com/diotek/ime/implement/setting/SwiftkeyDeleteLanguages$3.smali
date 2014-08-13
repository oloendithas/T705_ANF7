.class Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;
.super Ljava/lang/Object;
.source "SwiftkeyDeleteLanguages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 228
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const v8, 0x7f0d02df

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "checked":Z
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 233
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 234
    const/4 v2, 0x0

    .line 239
    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    move v4, v5

    :goto_1
    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->setDoneMenuEnabled(Z)V
    invoke-static {v7, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$500(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)V

    .line 240
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v4, v7, :cond_5

    .line 241
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    .line 245
    :goto_2
    instance-of v4, p2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p2

    .line 246
    check-cast v3, Landroid/view/ViewGroup;

    .line 247
    .local v3, "group":Landroid/view/ViewGroup;
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 248
    .local v1, "cb":Landroid/view/View;
    instance-of v4, v1, Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    .line 249
    check-cast v1, Landroid/widget/CheckBox;

    .end local v1    # "cb":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 252
    .end local v3    # "group":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 253
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    .line 254
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->selectAllItem()V

    .line 258
    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 260
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 261
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->deselectAllItem()V

    .line 266
    :cond_1
    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 267
    .local v0, "bar":Landroid/app/ActionBar;
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    if-eqz v4, :cond_8

    .line 268
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_2
    :goto_5
    return-void

    .line 236
    .end local v0    # "bar":Landroid/app/ActionBar;
    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$200(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mLPlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 239
    goto/16 :goto_1

    .line 243
    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$102(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;Z)Z

    goto/16 :goto_2

    .line 256
    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_3

    .line 262
    :cond_7
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/PopupMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v7, 0x7f080112

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->mSelectAllPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;)Landroid/widget/PopupMenu;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    const v7, 0x7f080113

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 269
    .restart local v0    # "bar":Landroid/app/ActionBar;
    :cond_8
    if-eqz v0, :cond_2

    .line 270
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyDeleteLanguages;

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

    goto/16 :goto_5
.end method
