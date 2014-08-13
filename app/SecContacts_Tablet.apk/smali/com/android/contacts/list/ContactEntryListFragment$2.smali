.class Lcom/android/contacts/list/ContactEntryListFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0

    .prologue
    .line 458
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$2;, "Lcom/android/contacts/list/ContactEntryListFragment.2;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 462
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment$2;, "Lcom/android/contacts/list/ContactEntryListFragment.2;"
    const-string v0, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/contacts/list/ContactEntryListFragment;->scheduleSecretModeChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$200(Lcom/android/contacts/list/ContactEntryListFragment;Z)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    const-string v0, "com.samsung.android.intent.action.CONTACT_PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/contacts/list/ContactEntryListFragment;->scheduleSecretModeChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$200(Lcom/android/contacts/list/ContactEntryListFragment;Z)V

    goto :goto_0
.end method
