.class final Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentDataChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 2809
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/DialtactsActivity$1;

    .prologue
    .line 2809
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onFavoriteDataChanged(Z)V
    .locals 10
    .param p1, "isListEmpty"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2815
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 2816
    .local v3, "tab":Landroid/app/ActionBar$Tab;
    # setter for: Lcom/android/contacts/activities/DialtactsActivity;->isFavouriteEmptyStatus:Z
    invoke-static {p1}, Lcom/android/contacts/activities/DialtactsActivity;->access$3602(Z)Z

    .line 2817
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 2818
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    if-eqz v4, :cond_0

    .line 2819
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v7, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    if-nez p1, :cond_2

    move v4, v5

    :goto_0
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2820
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$2300(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "favorite_strquent_listview_state"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2821
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e03dc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2822
    if-nez p1, :cond_3

    .line 2823
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0208df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2833
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->isUsingTwoPanel:Z
    invoke-static {v4}, Lcom/android/contacts/activities/DialtactsActivity;->access$1200(Lcom/android/contacts/activities/DialtactsActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2834
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v7, 0x7f0902b7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2835
    .local v0, "mBrowserView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v7, 0x7f0902bc

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2836
    .local v1, "mDetailsView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    const v7, 0x7f0902c7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2838
    .local v2, "mFavouriteEmptyView":Landroid/view/View;
    if-eqz p1, :cond_6

    .line 2839
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2840
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2841
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2849
    .end local v0    # "mBrowserView":Landroid/view/View;
    .end local v1    # "mDetailsView":Landroid/view/View;
    .end local v2    # "mFavouriteEmptyView":Landroid/view/View;
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_1

    .line 2850
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mDeleteFavoriteItem:Landroid/view/MenuItem;

    if-nez p1, :cond_7

    :goto_3
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2859
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 2819
    goto :goto_0

    .line 2825
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0208de

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 2827
    :cond_4
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e03db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2828
    if-nez p1, :cond_5

    .line 2829
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0208af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 2831
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget-object v4, v4, Lcom/android/contacts/activities/DialtactsActivity;->mChangeViewMenu:Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/contacts/activities/DialtactsActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0208ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2843
    .restart local v0    # "mBrowserView":Landroid/view/View;
    .restart local v1    # "mDetailsView":Landroid/view/View;
    .restart local v2    # "mFavouriteEmptyView":Landroid/view/View;
    :cond_6
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2844
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2845
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .end local v0    # "mBrowserView":Landroid/view/View;
    .end local v1    # "mDetailsView":Landroid/view/View;
    .end local v2    # "mFavouriteEmptyView":Landroid/view/View;
    :cond_7
    move v5, v6

    .line 2850
    goto :goto_3
.end method
