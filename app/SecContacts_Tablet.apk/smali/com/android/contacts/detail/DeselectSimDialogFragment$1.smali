.class Lcom/android/contacts/detail/DeselectSimDialogFragment$1;
.super Ljava/lang/Object;
.source "DeselectSimDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/DeselectSimDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/DeselectSimDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/DeselectSimDialogFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/contacts/detail/DeselectSimDialogFragment$1;->this$0:Lcom/android/contacts/detail/DeselectSimDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/detail/DeselectSimDialogFragment$1;->this$0:Lcom/android/contacts/detail/DeselectSimDialogFragment;

    # getter for: Lcom/android/contacts/detail/DeselectSimDialogFragment;->mListener:Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/DeselectSimDialogFragment;->access$000(Lcom/android/contacts/detail/DeselectSimDialogFragment;)Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/contacts/detail/DeselectSimDialogFragment$1;->this$0:Lcom/android/contacts/detail/DeselectSimDialogFragment;

    # getter for: Lcom/android/contacts/detail/DeselectSimDialogFragment;->mListener:Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/DeselectSimDialogFragment;->access$000(Lcom/android/contacts/detail/DeselectSimDialogFragment;)Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;->onDoneSelected()V

    .line 71
    :cond_0
    return-void
.end method
