.class Lcom/android/contacts/list/ContactTileListFragment$4;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 645
    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment$11;->$SwitchMap$com$android$contacts$list$ContactTileAdapter$DisplayType:[I

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactTileLoaderFactory;->createStarredLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    .line 653
    :goto_0
    return-object v0

    .line 649
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactTileLoaderFactory;->createStrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0

    .line 651
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactTileLoaderFactory;->createStrequentPhoneOnlyLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0

    .line 653
    :pswitch_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactTileLoaderFactory;->createFrequentLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 641
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$4;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/16 v10, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 663
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/contacts/list/ContactTileAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 668
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 669
    .local v4, "newDataCount":I
    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I
    invoke-static {}, Lcom/android/contacts/list/ContactTileListFragment;->access$700()I

    move-result v7

    if-ne v8, v7, :cond_2

    .line 670
    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I
    invoke-static {v4}, Lcom/android/contacts/list/ContactTileListFragment;->access$702(I)I

    .line 671
    :cond_2
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 672
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactTileListFragment;->finishActionMode()V

    .line 673
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 674
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVisibility(I)V

    .line 675
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$900(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 676
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$900(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 677
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 678
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;->onFavoriteDataChanged(Z)V

    .line 727
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 728
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 729
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    goto :goto_0

    .line 680
    :cond_6
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v7, v7, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v7, :cond_7

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I
    invoke-static {}, Lcom/android/contacts/list/ContactTileListFragment;->access$700()I

    move-result v7

    if-eq v7, v4, :cond_7

    .line 681
    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->oldDataCount:I
    invoke-static {v8}, Lcom/android/contacts/list/ContactTileListFragment;->access$702(I)I

    .line 682
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactTileListFragment;->finishActionMode()V

    .line 684
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 685
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVisibility(I)V

    .line 687
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$900(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 688
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mEmptyViewContainer:Landroid/widget/LinearLayout;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$900(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 690
    :cond_9
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v7, v7, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$500(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    move-result-object v7

    sget-object v8, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    if-ne v7, v8, :cond_f

    .line 691
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 692
    const-string v7, "_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 693
    .local v1, "id":J
    const-string v7, "lookup"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "lookupKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v8, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;
    invoke-static {v7, v8}, Lcom/android/contacts/list/ContactTileListFragment;->access$1102(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 697
    .end local v1    # "id":J
    .end local v3    # "lookupKey":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    .line 698
    .local v5, "selectionExists":Z
    :cond_b
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 699
    const-string v7, "_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 700
    .restart local v1    # "id":J
    const-string v7, "lookup"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 701
    .restart local v3    # "lookupKey":Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v7, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 703
    .local v6, "tempUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1200(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 704
    const/4 v5, 0x1

    .line 708
    .end local v1    # "id":J
    .end local v3    # "lookupKey":Ljava/lang/String;
    .end local v6    # "tempUri":Landroid/net/Uri;
    :cond_c
    if-nez v5, :cond_d

    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 709
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v7}, Lcom/android/contacts/list/ContactTileListFragment;->selectFirstUri()V

    .line 715
    .end local v5    # "selectionExists":Z
    :cond_d
    :goto_2
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 716
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mDataChangeListener:Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;->onFavoriteDataChanged(Z)V

    .line 718
    :cond_e
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 719
    .local v0, "config":Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    iget v7, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 724
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-static {v7}, Lcom/android/contacts/list/ContactTileListFragment;->access$800(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    goto/16 :goto_1

    .line 712
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_f
    iget-object v7, p0, Lcom/android/contacts/list/ContactTileListFragment$4;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    const/4 v8, 0x0

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mFirstFavoriteUri:Landroid/net/Uri;
    invoke-static {v7, v8}, Lcom/android/contacts/list/ContactTileListFragment;->access$1102(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 641
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment$4;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 735
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
