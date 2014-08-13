.class final Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactBrowserActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowserActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 2808
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 2808
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onAddToFavoritesAction(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2888
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2889
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "starred"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2890
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2891
    return-void
.end method

.method public onCallContactAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 2903
    return-void
.end method

.method public onCreateNewContactAction()V
    .locals 4

    .prologue
    .line 2858
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2859
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2860
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2861
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2863
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2864
    return-void
.end method

.method public onDeleteContactAction(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 2912
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 2913
    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 2868
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2869
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2872
    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2873
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2874
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 2875
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2877
    :cond_1
    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2879
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2880
    :cond_2
    const-string v2, "finishActivityOnSaveCompleted"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2883
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/16 v3, 0xd

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2884
    return-void
.end method

.method public onFinishAction()V
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    .line 2918
    return-void
.end method

.method public onInvalidSelection()V
    .locals 4

    .prologue
    .line 2922
    const/4 v1, 0x0

    .line 2923
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 2924
    .local v0, "currentFilter":Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 2938
    :goto_0
    return-void

    .line 2927
    :cond_0
    iget v2, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x6

    if-ne v2, v3, :cond_1

    .line 2928
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 2930
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 2937
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$3000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0

    .line 2934
    :cond_1
    move-object v1, v0

    .line 2935
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_1
.end method

.method public onRemoveFromFavoritesAction(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 2895
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2896
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "starred"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2897
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2898
    return-void
.end method

.method public onSelectionChange()V
    .locals 2

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2813
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getSelectedContactUri()Landroid/net/Uri;

    move-result-object v1

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 2815
    :cond_1
    return-void
.end method

.method public onSmsContactAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForTextMessage(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 2908
    return-void
.end method

.method public onViewContactAction(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 2819
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2820
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V
    invoke-static {v1, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$2800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 2854
    :goto_0
    return-void

    .line 2822
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2824
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2825
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2831
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/PeopleActivity;->clearCustomSearchViewFocus()V

    .line 2837
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2838
    const-string v1, "finishActivityOnUpSelected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2841
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsFromPhoneAppForDetail:Z
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2900(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2842
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2844
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
