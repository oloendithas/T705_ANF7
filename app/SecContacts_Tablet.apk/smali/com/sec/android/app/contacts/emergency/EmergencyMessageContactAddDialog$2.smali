.class Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;
.super Ljava/lang/Object;
.source "EmergencyMessageContactAddDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    packed-switch p2, :pswitch_data_0

    .line 150
    const-string v1, "EmergencyMessageContactAddDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 135
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.emergencymessagecontactcreateactivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "pick-multi-emergency-message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "maxRecipientCount"

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    # getter for: Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->access$000(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "existingRecipientCount"

    iget-object v2, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    # getter for: Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->access$100(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;->this$0:Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
