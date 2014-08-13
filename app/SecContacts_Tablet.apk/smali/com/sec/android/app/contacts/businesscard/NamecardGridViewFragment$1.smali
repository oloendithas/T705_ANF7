.class Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;
.super Ljava/lang/Object;
.source "NamecardGridViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;
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
.field final synthetic this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10
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
    const/4 v2, 0x0

    .line 331
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v0, "loader":Landroid/content/CursorLoader;
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mCustomSearchQueryString:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$000(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "query":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 334
    const-string v8, ""

    .line 336
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 337
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    sget-object v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->CONTACT_URI_FOR_NAMECARD:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 345
    :goto_0
    sget-object v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->PROJECTION_CONTACT_NAMECARD:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 346
    const-string v1, "is_private > 0 and namecard_photo_uri IS NOT NULL"

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 348
    const/4 v9, 0x0

    .line 349
    .local v9, "sortOrder":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget v1, v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSortOrder:I

    packed-switch v1, :pswitch_data_0

    .line 360
    const-string v9, "_id DESC"

    .line 363
    :goto_1
    invoke-virtual {v0, v9}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 365
    return-object v0

    .line 341
    .end local v9    # "sortOrder":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 342
    .local v7, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 343
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 351
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .restart local v9    # "sortOrder":Ljava/lang/String;
    :pswitch_0
    const-string v9, "_id ASC"

    .line 352
    goto :goto_1

    .line 354
    :pswitch_1
    const-string v9, "sort_key"

    .line 355
    goto :goto_1

    .line 357
    :pswitch_2
    const-string v9, "CASE WHEN data1 IS NULL THEN 1 ELSE 0 END, data1"

    .line 358
    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 371
    :cond_0
    const-string v0, "NamecardGridViewFragment"

    const-string v3, "onLoadFinished(): cursor is null or cursor.moveToFirst return false"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$102(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;I)I

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$200(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mSearchNoMatchesView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$300(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/NamecardListActivity;

    invoke-virtual {v0, v2}, Lcom/android/contacts/activities/NamecardListActivity;->setSearchBarVisible(Z)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->setCustomActionBar(Z)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$202(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mListener:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;

    iget-object v2, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;->onCountChanged(I)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # invokes: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->configureEmptyView(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$400(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)V

    .line 394
    :cond_2
    :goto_0
    return-void

    .line 383
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTextChanged:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$202(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)Z

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    # setter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v0, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$102(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;I)I

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mListener:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;

    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$OnGridViewLoadFinishedListener;->onCountChanged(I)V

    .line 386
    iget-object v3, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mTotalCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$100(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)I

    move-result v0

    if-gtz v0, :cond_4

    move v0, v1

    :goto_1
    # invokes: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->configureEmptyView(Z)V
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$400(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;Z)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mAdapter:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$500(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$600(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->this$0:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    # getter for: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->mActionModeCallback:Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->access$600(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;)Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;

    move-result-object v0

    # invokes: Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->updateSelectionMenu()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;->access$700(Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$ActionModeCallback;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 386
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 327
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 398
    .local p1, "arg0":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
