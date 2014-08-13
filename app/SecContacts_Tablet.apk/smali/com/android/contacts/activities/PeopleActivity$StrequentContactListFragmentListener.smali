.class final Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactTileListFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StrequentContactListFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 3100
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactSelected(Landroid/net/Uri;)V
    .locals 6
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 3104
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3105
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$3600(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "favorite_strquent_listview_state"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3106
    .local v0, "bListViewState":Z
    if-eqz v0, :cond_2

    .line 3107
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->setupFavoriteDetailFragment(Landroid/net/Uri;)V
    invoke-static {v3, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$3700(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 3108
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-object p1, v3, Lcom/android/contacts/activities/PeopleActivity;->mSelectedFavoriteUri:Landroid/net/Uri;

    .line 3132
    .end local v0    # "bListViewState":Z
    :cond_1
    :goto_0
    return-void

    .line 3110
    .restart local v0    # "bListViewState":Z
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3112
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3113
    .local v1, "intentQuick":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3114
    const/high16 v3, 0x14200000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3117
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3121
    .end local v0    # "bListViewState":Z
    .end local v1    # "intentQuick":Landroid/content/Intent;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3122
    .local v2, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.jcontacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3123
    const-string v3, "com.android.jcontacts"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3125
    :cond_4
    sget-boolean v3, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v3, :cond_5

    .line 3126
    const-string v3, "PeopleActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onContactSelected :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # invokes: Lcom/android/contacts/activities/PeopleActivity;->sendSubscribe(Landroid/net/Uri;)V
    invoke-static {v3, p1}, Lcom/android/contacts/activities/PeopleActivity;->access$3800(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V

    .line 3129
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
