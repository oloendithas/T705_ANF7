.class Lcom/android/contacts/activities/NamecardListActivity$3;
.super Ljava/lang/Object;
.source "NamecardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NamecardListActivity;->buildDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NamecardListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NamecardListActivity;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardListActivity$3;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$3;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getNamecardSortOrder()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$3;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    iget-object v0, v0, Lcom/android/contacts/activities/NamecardListActivity;->mPreference:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0, p2}, Lcom/android/contacts/preference/ContactsPreferences;->setNamecardSortOrder(I)V

    .line 438
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$3;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    # getter for: Lcom/android/contacts/activities/NamecardListActivity;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/android/contacts/activities/NamecardListActivity;->access$000(Lcom/android/contacts/activities/NamecardListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$3;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    # getter for: Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/contacts/activities/NamecardListActivity;->access$100(Lcom/android/contacts/activities/NamecardListActivity;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/businesscard/NamecardGridViewFragment;->reOrder(I)V

    .line 444
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 445
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardListActivity$3;->this$0:Lcom/android/contacts/activities/NamecardListActivity;

    # getter for: Lcom/android/contacts/activities/NamecardListActivity;->mListFragment:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/contacts/activities/NamecardListActivity;->access$100(Lcom/android/contacts/activities/NamecardListActivity;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/NamecardListFragment;

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/NamecardListFragment;->reOrder(I)V

    goto :goto_0
.end method
