.class Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;
.super Ljava/lang/Object;
.source "FavoriteFonbletFragment.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailFavoriteLoaderFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 392
    const-string v0, "FavoriteFonbletFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactDetailFavoriteLoaderFragmentListener onDetailsLoaded result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-nez p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1200(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1200(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyState()V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1300(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener$1;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$ContactDetailFavoriteLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
