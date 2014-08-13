.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;
.super Landroid/os/AsyncTask;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 870
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 875
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$RefreshTask;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mEabDaemon:Lcom/sec/android/app/contacts/eab/EABContactsDaemon;
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$400(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->sendSubscribetoContacts()V

    .line 878
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
