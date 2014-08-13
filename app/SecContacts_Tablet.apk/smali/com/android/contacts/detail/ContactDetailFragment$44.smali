.class Lcom/android/contacts/detail/ContactDetailFragment$44;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->makeAlerttoneEntry(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0

    .prologue
    .line 3862
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3865
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3877
    :goto_0
    return-void

    .line 3866
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->isKnoxOrPersonalAccount()Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3867
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e018e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3871
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$44;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mCustomAlerttone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$2400(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getAlertTonePickerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3874
    :catch_0
    move-exception v0

    .line 3875
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ContactDetailFragment"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
