.class public final Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddMemberDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AddMemberDialogFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    new-instance v0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;-><init>()V

    .line 65
    .local v0, "instance":Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "AddMemberDialogFragment"

    const-string v1, "Dismiss the dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 82
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 91
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0401e3

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 104
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v4, 0x7f0e0321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 105
    const v4, 0x7f0e0268

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 107
    new-instance v2, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 139
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0263

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 144
    .local v1, "addMemberDialog":Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 146
    return-object v1
.end method
