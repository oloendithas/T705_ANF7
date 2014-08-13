.class Lcom/android/contacts/list/ContactTileListFragment$5;
.super Ljava/lang/Object;
.source "ContactTileListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactTileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactTileListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 793
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 795
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v1, v1, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1202(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 799
    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 800
    .local v0, "id":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedContactIds:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$000(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setItemChecked(Ljava/lang/Long;Z)V

    .line 802
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 806
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->refreshActionBarMode()V

    .line 816
    .end local v0    # "id":Ljava/lang/Long;
    :cond_2
    :goto_1
    return-void

    .line 801
    .restart local v0    # "id":Ljava/lang/Long;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 809
    .end local v0    # "id":Ljava/lang/Long;
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 811
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v1, v1, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v1, :cond_2

    .line 812
    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1202(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public onContextContactSelected(Lcom/android/contacts/list/ContactTileView;)V
    .locals 4
    .param p1, "contactTileView"    # Lcom/android/contacts/list/ContactTileView;

    .prologue
    .line 819
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mContactTileView:Lcom/android/contacts/list/ContactTileView;
    invoke-static {v2, p1}, Lcom/android/contacts/list/ContactTileListFragment;->access$1702(Lcom/android/contacts/list/ContactTileListFragment;Lcom/android/contacts/list/ContactTileView;)Lcom/android/contacts/list/ContactTileView;

    .line 820
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mIsSelectionMode:Z
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1400(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 821
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment;->startActionMode()V

    .line 822
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v0

    .line 823
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 824
    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mTWJoinListView:Z
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1300(Lcom/android/contacts/list/ContactTileListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$1600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/contacts/list/ContactTileListFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 826
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    iget-boolean v2, v2, Lcom/android/contacts/list/ContactTileListFragment;->mSelectionVisible:Z

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # setter for: Lcom/android/contacts/list/ContactTileListFragment;->mSelectedFavoriteUri:Landroid/net/Uri;
    invoke-static {v2, v0}, Lcom/android/contacts/list/ContactTileListFragment;->access$1202(Lcom/android/contacts/list/ContactTileListFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/ContactTileAdapter;->setItemChecked(Ljava/lang/Long;Z)V

    .line 831
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$600(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 832
    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment$5;->this$0:Lcom/android/contacts/list/ContactTileListFragment;

    # getter for: Lcom/android/contacts/list/ContactTileListFragment;->mActionModeCallback:Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;
    invoke-static {v2}, Lcom/android/contacts/list/ContactTileListFragment;->access$100(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileListFragment$ActionModeCallback;->updateSelectionMenu()V

    .line 834
    .end local v0    # "contactUri":Landroid/net/Uri;
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-void
.end method
