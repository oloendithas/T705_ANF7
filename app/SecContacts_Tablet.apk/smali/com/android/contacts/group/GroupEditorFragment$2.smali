.class Lcom/android/contacts/group/GroupEditorFragment$2;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$2;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$2;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/GroupEditorFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$2;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # getter for: Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/GroupEditorFragment$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$2;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName()Z
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$200(Lcom/android/contacts/group/GroupEditorFragment;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onUpdateDoneButton(Z)V

    .line 547
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 552
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 557
    return-void
.end method
