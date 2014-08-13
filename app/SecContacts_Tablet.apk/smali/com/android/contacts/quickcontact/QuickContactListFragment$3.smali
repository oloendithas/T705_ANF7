.class Lcom/android/contacts/quickcontact/QuickContactListFragment$3;
.super Ljava/lang/Object;
.source "QuickContactListFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 602
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 606
    .local v0, "action":Lcom/android/contacts/quickcontact/Action;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$800(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;->onItemLongClicked(Lcom/android/contacts/quickcontact/Action;)Z

    .line 607
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
