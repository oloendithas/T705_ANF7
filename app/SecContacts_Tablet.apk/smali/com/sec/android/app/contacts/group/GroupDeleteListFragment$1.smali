.class Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;
.super Ljava/lang/Object;
.source "GroupDeleteListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 240
    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$000()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # setter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$002(Landroid/content/Context;)Landroid/content/Context;

    .line 242
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/group/AggGroupNameLoader;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "loader":Lcom/sec/android/app/contacts/group/AggGroupNameLoader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "system_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->IsICEGroupAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ICE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Starred in Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 256
    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->configureEmptyView(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$100(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;Z)V

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    # getter for: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->mAdapter:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$200(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->this$0:Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    # invokes: Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->updateHeaderViewAndDoneButton()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->access$300(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V

    .line 264
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
