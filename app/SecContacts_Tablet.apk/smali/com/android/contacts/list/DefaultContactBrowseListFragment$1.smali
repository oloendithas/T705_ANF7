.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;
.super Lcom/android/contacts/list/ProfileAndContactsLoader;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0, p2}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # invokes: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->shouldForceLoad()Z
    invoke-static {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$100(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-super {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->onContentChanged()V

    .line 560
    :cond_0
    return-void
.end method
