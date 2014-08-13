.class Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;
.super Ljava/lang/Object;
.source "DeleteContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedCountChanged(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 106
    # setter for: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mSelectedCount:I
    invoke-static {p1}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$002(I)I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateSaveButtonStatus()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$100(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->mIsTablet:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$200(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;->access$300(Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;)V

    .line 111
    :cond_0
    return-void
.end method
