.class public Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelEditDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2797
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 4
    .param p0, "fragment"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 2800
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;-><init>()V

    .line 2804
    .local v0, "dialog":Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2805
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "cancelEditor"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2809
    :goto_0
    return-void

    .line 2806
    :catch_0
    move-exception v1

    .line 2807
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2813
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e01da

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e01db

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2827
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method
