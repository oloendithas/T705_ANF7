.class Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;
.super Ljava/lang/Object;
.source "PrivateContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$AddPrivateContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedCountChanged(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->access$002(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;I)I

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->updateSaveButtonStatus()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->access$100(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->access$200(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;->access$300(Lcom/sec/android/app/contacts/activities/PrivateContactsActivity;)V

    .line 97
    :cond_0
    return-void
.end method
