.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
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
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 699
    const-string v0, "contactUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 700
    .local v2, "lookupUri":Landroid/net/Uri;
    new-instance v0, Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;ZZZZ)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .param p2, "data"    # Lcom/android/contacts/ContactLoader$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;",
            "Lcom/android/contacts/ContactLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 706
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getRequestedUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :goto_0
    return-void

    .line 710
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to load contact"

    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 714
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/ContactLoader$Result;->isNotFound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 715
    const-string v0, "SetDefaultActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/contacts/ContactLoader;

    .end local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader;->getLookupUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 718
    .restart local p1    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$1900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 695
    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    return-void
.end method
