.class Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;
.super Ljava/lang/Object;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/AccountFilterActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/AccountFilterActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/AccountFilterActivity;Lcom/android/contacts/list/AccountFilterActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/AccountFilterActivity;
    .param p2, "x1"    # Lcom/android/contacts/list/AccountFilterActivity$1;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;

    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, v1}, Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 192
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    if-nez p2, :cond_0

    .line 202
    # getter for: Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/AccountFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to load filters"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    # getter for: Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/list/AccountFilterActivity;->access$400(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    iget-object v3, p0, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;->this$0:Lcom/android/contacts/list/AccountFilterActivity;

    # getter for: Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-static {v3}, Lcom/android/contacts/list/AccountFilterActivity;->access$300(Lcom/android/contacts/list/AccountFilterActivity;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;>;"
    return-void
.end method
