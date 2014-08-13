.class Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;
.super Ljava/lang/Object;
.source "DeleteEmergencyContactsConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->access$000(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->access$000(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$Listener;->onDoneSelected()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;

    # invokes: Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->removeEmergencyMessages()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;->access$100(Lcom/sec/android/app/contacts/emergency/DeleteEmergencyContactsConfirmDialogFragment;)V

    .line 116
    return-void
.end method
