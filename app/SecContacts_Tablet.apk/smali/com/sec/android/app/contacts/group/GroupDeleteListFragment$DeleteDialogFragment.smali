.class public Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDeleteListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteDialogFragment"
.end annotation


# static fields
.field private static final EXTRA_SELECTED_ITEM:Ljava/lang/String; = "extraSelectedItemDialog"


# instance fields
.field private mDeleteGroupDialogTitle:Ljava/lang/String;

.field private mSelectedList:Ljava/util/ArrayList;
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
    .line 290
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static show(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;)V
    .locals 3
    .param p0, "fragment"    # Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;

    .prologue
    .line 303
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;-><init>()V

    .line 305
    .local v0, "dialog":Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteGroup"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment;->getGroupsToDelete()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    .line 307
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 312
    if-eqz p1, :cond_0

    .line 313
    const-string v1, "extraSelectedItemDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 318
    .local v5, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 319
    .local v4, "menu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f0e025a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const v1, 0x7f0e025b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 323
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    .line 328
    :goto_0
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0401e3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 345
    .local v0, "menuAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 442
    .local v6, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 448
    .local v7, "groupDeleteDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 450
    return-object v7

    .line 325
    .end local v0    # "menuAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    .end local v6    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "groupDeleteDialog":Landroid/app/AlertDialog;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e026c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mDeleteGroupDialogTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 298
    const-string v0, "extraSelectedItemDialog"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeleteListFragment$DeleteDialogFragment;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    return-void
.end method
