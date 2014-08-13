.class public Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactDetailFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 3039
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 5
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
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3053
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const v2, 0x7f0e01b5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3056
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mOnlineSearchMode:I
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$3500(Lcom/android/contacts/activities/PeopleActivity;)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsUsingTwoPanes:Z
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$2700(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3057
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3059
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3065
    :goto_0
    return-void

    .line 3061
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1, p1, p2, v4, v4}, Lcom/android/contacts/ContactSaveService;->createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3063
    .restart local v0    # "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onItemClicked(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3043
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    :goto_0
    return-void

    .line 3044
    :catch_0
    move-exception v0

    .line 3045
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$3400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->setCallSipPressed(Z)V

    .line 3046
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No activity found for intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
