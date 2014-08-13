.class Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;
.super Ljava/lang/Object;
.source "FavoriteFonbletFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;->this$1:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;->this$1:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;->this$1:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1200(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;->this$1:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1200(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method
