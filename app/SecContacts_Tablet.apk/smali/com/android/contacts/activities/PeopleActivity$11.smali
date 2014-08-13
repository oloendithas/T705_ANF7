.class Lcom/android/contacts/activities/PeopleActivity$11;
.super Landroid/content/BroadcastReceiver;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 6201
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x2

    .line 6203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6204
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.contacts.activities.PeopleActivity.Phone"

    if-ne v0, v2, :cond_1

    .line 6205
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 6217
    :cond_0
    :goto_0
    return-void

    .line 6206
    :cond_1
    const-string v2, "com.android.contacts.activities.PeopleActivity.All"

    if-ne v0, v2, :cond_3

    .line 6207
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_0

    .line 6208
    :cond_3
    const-string v2, "com.android.contacts.activities.PeopleActivity.Favourites"

    if-ne v0, v2, :cond_5

    .line 6209
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;
    invoke-static {v2}, Lcom/android/contacts/activities/PeopleActivity;->access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mIsPhone:Z
    invoke-static {v3}, Lcom/android/contacts/activities/PeopleActivity;->access$600(Lcom/android/contacts/activities/PeopleActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 6210
    :cond_5
    const-string v1, "com.android.contacts.activities.PeopleActivity.Delete"

    if-ne v0, v1, :cond_6

    .line 6211
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$5400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6212
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$5400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->doDeleteAction()V

    goto :goto_0

    .line 6213
    :cond_6
    const-string v1, "com.android.contacts.activities.PeopleActivity.Edit"

    if-ne v0, v1, :cond_0

    .line 6214
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$5400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6215
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$11;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$5400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactLoaderFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->doEditAction()V

    goto :goto_0
.end method
