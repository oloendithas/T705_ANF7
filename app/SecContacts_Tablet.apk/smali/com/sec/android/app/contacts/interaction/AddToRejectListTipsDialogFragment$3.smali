.class Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;
.super Ljava/lang/Object;
.source "AddToRejectListTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

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
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->neverShowAddToRejectListTipsAgain(Landroid/content/Context;)V

    .line 117
    :cond_0
    return-void
.end method
