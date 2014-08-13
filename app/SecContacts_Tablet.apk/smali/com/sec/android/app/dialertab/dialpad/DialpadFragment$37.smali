.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->showSpeedDialDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$mIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)V
    .locals 0

    .prologue
    .line 10596
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->val$mIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "mButton"    # I

    .prologue
    const/4 v3, 0x1

    .line 10599
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10601
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-ne v1, v3, :cond_0

    .line 10602
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e019c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 10622
    :goto_0
    return-void

    .line 10603
    :cond_0
    sget v1, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 10604
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e019b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10606
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.contacts.list.action.SPEED_DIAL_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10608
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10611
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10614
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10615
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "actionbar_title"

    const-string v2, "Speed dial setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10616
    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10617
    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10618
    const-string v1, "has_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10619
    const-string v1, "index"

    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->val$mIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10620
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$37;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v1, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
