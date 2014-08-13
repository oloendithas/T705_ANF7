.class final Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;
.super Ljava/lang/Object;
.source "ContactMultiSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$400(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V

    .line 562
    return-void
.end method

.method public onRevertAction()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method public onSelectedAction(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SelectedAccounts"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 551
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 552
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 553
    return-void
.end method

.method public onTitleUpdated(II)V
    .locals 1
    .param p1, "selectedItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$502(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mTotalItemCount:I
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$602(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$AccountPickerActionListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateActionBarTitleInTwoPaneMode()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$700(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    .line 572
    :cond_0
    return-void
.end method
