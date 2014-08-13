.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$16;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->requestDeleteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 3412
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$16;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneSelected()V
    .locals 2

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$16;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mShouldUpdateDeleteContactList:Z
    invoke-static {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$1302(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Z)Z

    .line 3416
    return-void
.end method
