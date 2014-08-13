.class Lcom/android/contacts/activities/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 912
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "favorite_strquent_listview_state"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 913
    .local v0, "bListViewState":Z
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "favorite_strquent_listview_state"

    if-nez v0, :cond_2

    move v1, v2

    :goto_0
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 914
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isFonblet:Z
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$100(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 915
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mFavoriteFonbletFragment:Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2400(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;

    move-result-object v1

    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/favorite/FavoriteFonbletFragment;->setStreListViewState(Z)V

    .line 921
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v1, v3

    .line 913
    goto :goto_0

    .line 919
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$6;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mStrequentFragment:Lcom/android/contacts/list/ContactTileListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$2500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactTileListFragment;

    move-result-object v1

    if-nez v0, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactTileListFragment;->setStreListViewState(Z)V

    goto :goto_1
.end method
