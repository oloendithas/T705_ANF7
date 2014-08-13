.class Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;
.super Landroid/os/AsyncTask;
.source "EabContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$1;

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;-><init>(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    iget-object v1, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    # invokes: Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->access$100(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->fetchdatabase(Landroid/content/ContentResolver;J)V

    .line 192
    const-string v0, "success"

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 188
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "EAB-EabContactBrowseListFragment"

    const-string v1, "  EabContactBrowseListFragment - DatabaseTask  onPostExecute is called"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    # getter for: Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->access$200(Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;)Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment$DatabaseTask;->this$0:Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EabContactBrowseListFragment;->reloadData()V

    .line 205
    :goto_0
    const-string v0, "EAB-EabContactBrowseListFragment"

    const-string v1, "  DatabaseTask  onPostExecute is Exiting "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 203
    :cond_0
    const-string v0, "EAB-EabContactBrowseListFragment"

    const-string v1, "onPostExecute mAdapter is null "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
