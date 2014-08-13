.class Lcom/android/contacts/quickcontact/QuickContactListFragment$2;
.super Ljava/lang/Object;
.source "QuickContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 583
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 593
    .local v0, "action":Lcom/android/contacts/quickcontact/Action;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->isNeedConfirm(Landroid/content/Context;Lcom/android/contacts/quickcontact/Action;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsPermissionUtils;->createPermissionPopup(Landroid/content/Context;)Landroid/app/AlertDialog;

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V

    goto :goto_0
.end method
