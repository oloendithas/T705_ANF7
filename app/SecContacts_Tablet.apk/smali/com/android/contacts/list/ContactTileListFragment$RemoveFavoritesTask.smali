.class Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;
.super Landroid/os/AsyncTask;
.source "ContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFavoritesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 2077
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/ContactTileListFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/ContactTileListFragment$1;

    .prologue
    .line 2077
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->removeFavorites()V

    .line 2082
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 2077
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # invokes: Lcom/android/contacts/list/ContactTileListFragment;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$2600(Lcom/android/contacts/list/ContactTileListFragment;)V

    .line 2088
    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {}, Lcom/android/contacts/list/ContactTileListFragment;->access$2700()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2089
    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionMode:Landroid/view/ActionMode;
    invoke-static {}, Lcom/android/contacts/list/ContactTileListFragment;->access$2700()Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2091
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2077
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    .line 2095
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0221

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mProgressDialog:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$2802(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 2097
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$RemoveFavoritesTask;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsProgressShowing:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$2902(Lcom/android/contacts/list/ContactTileListFragment;Z)Z

    .line 2098
    return-void
.end method
