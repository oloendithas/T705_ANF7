.class public Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDeletionMenuDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final EXTRA_SELECTED_ITEM:Ljava/lang/String; = "extraSelectedItemDialog"

.field private static dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;


# instance fields
.field private mDeleteGroupDialogTitle:Ljava/lang/String;

.field private mSelectedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 155
    return-void
.end method

.method public static dismissDialog()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 67
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "selectedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    .line 58
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 59
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteGroup"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->setSelectedGroup(Ljava/util/ArrayList;)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v1, "extraSelectedItemDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 77
    .local v5, "dialogInflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    .line 81
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 82
    .local v4, "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f0e025a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const v1, 0x7f0e025b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0401e3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 103
    .local v0, "menuAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 129
    .local v6, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v8, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$3;

    invoke-direct {v8, p0}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;)V

    .line 139
    .local v8, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 146
    .local v7, "groupDeleteDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 148
    return-object v7

    .line 80
    .end local v0    # "menuAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    .end local v4    # "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "groupDeleteDialog":Landroid/app/AlertDialog;
    .end local v8    # "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "extraSelectedItemDialog"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    return-void
.end method

.method public setSelectedGroup(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "selectedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    .line 153
    return-void
.end method
