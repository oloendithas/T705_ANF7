.class final Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$DataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactBrowseDataChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 2769
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 2769
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactDataChanged(Z)V
    .locals 2
    .param p1, "isListEmpty"    # Z

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 2774
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->isUpdateMenu:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2400(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2775
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mEnhancedAssistantMenu:Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$2600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mEAMReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2500(Lcom/android/contacts/activities/PeopleActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    .line 2776
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->registerEamReceiver()V

    .line 2777
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactBrowseDataChangedListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/activities/PeopleActivity;->isUpdateMenu:Z
    invoke-static {v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2402(Lcom/android/contacts/activities/PeopleActivity;Z)Z

    .line 2805
    :cond_1
    return-void
.end method
