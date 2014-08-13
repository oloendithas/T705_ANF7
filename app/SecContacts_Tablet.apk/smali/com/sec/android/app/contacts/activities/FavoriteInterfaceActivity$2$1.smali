.class Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f0e0508

    const v3, 0x7f0e034f

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 330
    .local v0, "adapterCount":I
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$200(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectAllPopupMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$000(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 342
    .end local v0    # "adapterCount":I
    :cond_0
    return-void

    .line 333
    .restart local v0    # "adapterCount":I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$200(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$100(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;->this$1:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;

    iget-object v2, v2, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
