.class public final Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectRingtoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SelectRingtoneDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 46
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    :try_start_0
    new-instance v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;-><init>()V

    .line 66
    .local v1, "instance":Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 67
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "instance":Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 143
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 144
    check-cast v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    .line 145
    .local v0, "target":Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    invoke-interface {v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onRingtoneSelectorCancelled()V

    .line 147
    .end local v0    # "target":Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0e0253

    .line 76
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 80
    .local v2, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0401e3

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 93
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v4, 0x7f0e0254

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 95
    const v4, 0x7f0e0257

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 97
    new-instance v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 133
    .local v1, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 135
    .local v3, "editRingtoneDlg":Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 136
    return-object v3
.end method
