.class final Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;
.super Ljava/lang/Object;
.source "FavoriteFonbletFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListLandFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListLandFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContactDetailLandLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$600(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 311
    return-void
.end method
