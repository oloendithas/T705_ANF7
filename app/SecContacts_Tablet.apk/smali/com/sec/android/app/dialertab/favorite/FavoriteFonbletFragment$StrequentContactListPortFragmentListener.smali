.class final Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;
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
    name = "StrequentContactListPortFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrequentContactListPortFragmentListener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$700(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    return-void
.end method
