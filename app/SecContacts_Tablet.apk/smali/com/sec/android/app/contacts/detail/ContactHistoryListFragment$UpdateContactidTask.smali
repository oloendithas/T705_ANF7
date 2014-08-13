.class Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "ContactHistoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateContactidTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "target"    # Landroid/app/Fragment;

    .prologue
    .line 777
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 778
    check-cast p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p2    # "target":Landroid/app/Fragment;
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 779
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 774
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Void;

    .end local p2    # "x1":[Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "target"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p2, "params"    # [Ljava/lang/Void;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    # invokes: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateContactId()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 790
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V
    .locals 3
    .param p1, "target"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .param p2, "result"    # Ljava/lang/Void;

    .prologue
    .line 795
    invoke-super {p0, p1, p2}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    .line 797
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 798
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 774
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Void;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->onPostExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 3
    .param p1, "target"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .prologue
    .line 783
    # getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    .line 784
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 785
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 774
    check-cast p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->onPreExecute(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    return-void
.end method
