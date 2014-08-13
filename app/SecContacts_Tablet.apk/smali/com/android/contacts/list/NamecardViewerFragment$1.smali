.class Lcom/android/contacts/list/NamecardViewerFragment$1;
.super Ljava/lang/Object;
.source "NamecardViewerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/NamecardViewerFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/NamecardViewerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardViewerFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/android/contacts/list/NamecardCursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    iget-object v2, v2, Lcom/android/contacts/list/NamecardViewerFragment;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    iget-object v3, v3, Lcom/android/contacts/list/NamecardViewerFragment;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    iget-object v4, v4, Lcom/android/contacts/list/NamecardViewerFragment;->mSelection:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    iget v5, v5, Lcom/android/contacts/list/NamecardViewerFragment;->mSortOrder:I

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/NamecardCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "cursor"    # Landroid/database/Cursor;
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
    .line 125
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardViewerFragment;->access$000(Lcom/android/contacts/list/NamecardViewerFragment;)Lcom/android/contacts/list/NamecardViewerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    new-instance v1, Lcom/android/contacts/list/NamecardViewerAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/contacts/list/NamecardViewerAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    # setter for: Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;
    invoke-static {v0, v1}, Lcom/android/contacts/list/NamecardViewerFragment;->access$002(Lcom/android/contacts/list/NamecardViewerFragment;Lcom/android/contacts/list/NamecardViewerAdapter;)Lcom/android/contacts/list/NamecardViewerAdapter;

    .line 130
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardViewerFragment;->access$000(Lcom/android/contacts/list/NamecardViewerFragment;)Lcom/android/contacts/list/NamecardViewerAdapter;

    move-result-object v0

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->isVoLTEEnabled:Z
    invoke-static {}, Lcom/android/contacts/list/NamecardViewerFragment;->access$100()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/NamecardViewerAdapter;->setVolteEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardViewerFragment;->access$200(Lcom/android/contacts/list/NamecardViewerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/NamecardViewerFragment;->access$000(Lcom/android/contacts/list/NamecardViewerFragment;)Lcom/android/contacts/list/NamecardViewerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardViewerFragment;->access$200(Lcom/android/contacts/list/NamecardViewerFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    iget v1, v1, Lcom/android/contacts/list/NamecardViewerFragment;->mCurrPostion:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/NamecardViewerFragment$1;->this$0:Lcom/android/contacts/list/NamecardViewerFragment;

    # getter for: Lcom/android/contacts/list/NamecardViewerFragment;->mAdapter:Lcom/android/contacts/list/NamecardViewerAdapter;
    invoke-static {v0}, Lcom/android/contacts/list/NamecardViewerFragment;->access$000(Lcom/android/contacts/list/NamecardViewerFragment;)Lcom/android/contacts/list/NamecardViewerAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/NamecardViewerAdapter;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 116
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/NamecardViewerFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 140
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
