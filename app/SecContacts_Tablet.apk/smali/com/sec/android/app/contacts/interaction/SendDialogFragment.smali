.class public Lcom/sec/android/app/contacts/interaction/SendDialogFragment;
.super Landroid/app/DialogFragment;
.source "SendDialogFragment.java"


# static fields
.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field public static final TAG:Ljava/lang/String; = "SendDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 65
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SendDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/SendDialogFragment;-><init>()V

    .line 67
    .local v0, "fragment":Lcom/sec/android/app/contacts/interaction/SendDialogFragment;
    const-string v1, "SendDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 78
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0401e3

    invoke-direct {v1, p0, v4, v5, v3}, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/SendDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 92
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v4, 0x7f0e0233

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 93
    const v4, 0x7f0e0232

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 95
    new-instance v2, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/SendDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 165
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0231

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/SendDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/SendDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 179
    .local v0, "SendDialog":Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 181
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 188
    return-void
.end method
