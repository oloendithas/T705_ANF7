.class Lcom/android/contacts/activities/ContactDetailActivity$7;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .param p2, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const v2, 0x7f0e01b5

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 791
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 794
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 796
    return-void
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 750
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.contacts.action.JOINED_CONTACT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 751
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/16 v6, 0x65

    invoke-virtual {v5, p1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 768
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 769
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v5}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v3

    .line 770
    .local v3, "keyListener":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v5, :cond_0

    .line 771
    move-object v0, v3

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment;

    move-object v1, v0

    .line 772
    .local v1, "currentFragment":Lcom/android/contacts/detail/ContactDetailFragment;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->setCallSipPressed(Z)V

    .line 784
    .end local v1    # "currentFragment":Lcom/android/contacts/detail/ContactDetailFragment;
    .end local v3    # "keyListener":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    :cond_0
    :goto_1
    return-void

    .line 753
    :cond_1
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 754
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v5}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v3

    .line 755
    .restart local v3    # "keyListener":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    const/4 v1, 0x0

    .line 756
    .restart local v1    # "currentFragment":Lcom/android/contacts/detail/ContactDetailFragment;
    if-eqz v3, :cond_2

    instance-of v5, v3, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v5, :cond_2

    .line 757
    move-object v0, v3

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment;

    move-object v1, v0

    .line 759
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isPenMultiWindow(Landroid/app/Activity;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 760
    new-instance v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    .line 761
    .local v4, "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    invoke-virtual {v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->minimizeWindow()V

    .line 764
    .end local v1    # "currentFragment":Lcom/android/contacts/detail/ContactDetailFragment;
    .end local v3    # "keyListener":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    .end local v4    # "mMultiWindowActivity":Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v5, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v2

    .line 776
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity$7;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    # getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v5}, Lcom/android/contacts/activities/ContactDetailActivity;->access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v3

    .line 777
    .restart local v3    # "keyListener":Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    if-eqz v3, :cond_4

    instance-of v5, v3, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v5, :cond_4

    move-object v1, v3

    .line 778
    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment;

    .line 779
    .restart local v1    # "currentFragment":Lcom/android/contacts/detail/ContactDetailFragment;
    invoke-virtual {v1, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->setCallSipPressed(Z)V

    .line 782
    .end local v1    # "currentFragment":Lcom/android/contacts/detail/ContactDetailFragment;
    :cond_4
    const-string v5, "ContactDetailActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
