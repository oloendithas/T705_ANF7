.class Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;
.super Ljava/lang/Object;
.source "FavoriteFonbletFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$PositionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrquentPortPositionChangeLisener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$1;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;-><init>(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)V

    return-void
.end method


# virtual methods
.method public loadSelection(III)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "config"    # I

    .prologue
    .line 340
    const-string v0, "FavoriteFonbletFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StrquentPortPositionChangeLisener setPosition index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", config : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1000(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment$StrquentPortPositionChangeLisener;->this$0:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    # getter for: Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->mStrequentLandFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->access$1000(Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactTileListFragment;->setPosition(II)V

    .line 347
    :cond_0
    return-void
.end method
