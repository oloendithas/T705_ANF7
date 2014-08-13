.class final Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;
.super Ljava/lang/Object;
.source "FavoriteFonbletFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentDataChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V

    return-void
.end method


# virtual methods
.method public onFavoriteDataChanged(Z)V
    .locals 4
    .param p1, "isListEmpty"    # Z

    .prologue
    .line 327
    const-string v1, "FavoriteFonbletFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFavoriteDataChanged isListEmpty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    # setter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->isFavouriteEmptyStatus:Z
    invoke-static {p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$802(Z)Z

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 331
    .local v0, "config":I
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # invokes: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->selectLayout(IZ)V
    invoke-static {v1, v0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$900(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;IZ)V

    .line 333
    return-void
.end method
