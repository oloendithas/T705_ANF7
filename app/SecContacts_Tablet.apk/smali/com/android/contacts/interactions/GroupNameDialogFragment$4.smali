.class Lcom/android/contacts/interactions/GroupNameDialogFragment$4;
.super Ljava/lang/Object;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    # getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->ok_button:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$200(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$4;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    # getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 144
    return-void
.end method
