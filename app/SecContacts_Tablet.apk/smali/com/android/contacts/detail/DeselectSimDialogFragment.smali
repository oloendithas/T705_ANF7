.class public Lcom/android/contacts/detail/DeselectSimDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeselectSimDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeselectSimDialogFragment"


# instance fields
.field private mListener:Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/DeselectSimDialogFragment;)Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/DeselectSimDialogFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/contacts/detail/DeselectSimDialogFragment;->mListener:Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "listener"    # Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;

    .prologue
    .line 77
    new-instance v0, Lcom/android/contacts/detail/DeselectSimDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/detail/DeselectSimDialogFragment;-><init>()V

    .line 79
    .local v0, "fragment":Lcom/android/contacts/detail/DeselectSimDialogFragment;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/DeselectSimDialogFragment;->setListener(Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;)V

    .line 80
    const-string v1, "DeselectSimDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v2, 0x7f0e0493

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e0490

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/contacts/detail/DeselectSimDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/detail/DeselectSimDialogFragment$1;-><init>(Lcom/android/contacts/detail/DeselectSimDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 73
    .local v0, "deselectSimDialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 99
    .local v0, "targetFragment":Landroid/app/Fragment;
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/contacts/detail/DeselectSimDialogFragment;->mListener:Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;

    .line 87
    return-void
.end method
