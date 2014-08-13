.class final Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$DataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentDataChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 3136
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onFavoriteDataChanged(Z)V
    .locals 6
    .param p1, "isListEmpty"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 3145
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3172
    :cond_0
    :goto_0
    return-void

    .line 3153
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v2, v2, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3155
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v4, v2, Lcom/android/contacts/activities/PeopleActivity;->mDeleteFavoritesMenu:Landroid/view/MenuItem;

    if-nez p1, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3158
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3160
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-boolean p1, v2, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    .line 3161
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v4, 0x7f0903b9

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3162
    .local v1, "noContactView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3163
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v4}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v4

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->showEmptyViewIfNeeded(I)V
    invoke-static {v2, v4}, Lcom/android/contacts/activities/PeopleActivity;->access$3900(Lcom/android/contacts/activities/PeopleActivity;I)V

    .line 3164
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3165
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v4, 0x7f0903c1

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3166
    .local v0, "favoritesDetailContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3167
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentDataChangeListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-boolean v2, v2, Lcom/android/contacts/activities/PeopleActivity;->mIsFavoriteListEmpty:Z

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0    # "favoritesDetailContainer":Landroid/view/View;
    .end local v1    # "noContactView":Landroid/view/View;
    :cond_5
    move v2, v3

    .line 3155
    goto :goto_1
.end method
