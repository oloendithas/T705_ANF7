.class Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailLoaderFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 2941
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 2941
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 2945
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 2993
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 2994
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 2949
    if-nez p1, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$3100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyState()V

    .line 2974
    :goto_0
    return-void

    .line 2959
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$3200(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;-><init>(Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 2979
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->clearCustomSearchViewFocus()V

    .line 2981
    if-eqz p1, :cond_0

    .line 2982
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2983
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2984
    const-string v1, "finishActivityOnSaveCompleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2986
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2988
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
