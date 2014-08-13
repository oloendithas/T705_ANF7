.class Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;
.super Ljava/lang/Object;
.source "KnoxSelectionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$contactIds:[J

.field final synthetic val$personaIds:[I


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;[I[JLandroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->this$0:Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->val$personaIds:[I

    iput-object p3, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->val$contactIds:[J

    iput-object p4, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 67
    const-string v1, "KnoxSelectionDialogFragment"

    const-string v2, "KNOX1 click"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "action"

    const-string v2, "MoveTo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "src"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v1, "target"

    iget-object v2, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->val$personaIds:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v1, "contact_ids"

    iget-object v2, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->val$contactIds:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 73
    iget-object v1, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 74
    iget-object v1, p0, Lcom/android/contacts/interactions/KnoxSelectionDialogFragment$2;->this$0:Lcom/android/contacts/interactions/KnoxSelectionDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 75
    return-void
.end method
