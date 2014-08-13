.class public final Lcom/android/contacts/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_EXTRA_ARGS:Ljava/lang/String; = "extra_args"

.field private static final KEY_IMPORT_PATH:Ljava/lang/String; = "importPath"

.field private static final KEY_IMPORT_SIMID:Ljava/lang/String; = "importSIMID"

.field private static final KEY_LIST_FILTER:Ljava/lang/String; = "list_filter"

.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field private static final KEY_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SelectAccountDialogFragment"


# instance fields
.field public mImportPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/SelectAccountDialogFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 5
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 142
    .local v2, "targetFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v3, :cond_3

    .line 143
    const-string v3, "ImportExportDialogFragment"

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SelectSimDialogFragment"

    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 147
    const-string v3, "importPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->setImportPath(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 180
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, v2

    .line 161
    check-cast v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 162
    .local v1, "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    goto :goto_0

    .line 164
    .end local v1    # "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_3
    if-nez v2, :cond_1

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_args"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .restart local v0    # "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 167
    const-string v3, "importPath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->setImportPath(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "titleResourceId"    # I
    .param p3, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p4, "extraArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "targetFragment":Landroid/app/Fragment;, "TF;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "title_res_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v3, "list_filter"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 75
    const-string v3, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p4    # "extraArgs":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 77
    new-instance v2, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;-><init>()V

    .line 79
    .local v2, "instance":Lcom/android/contacts/editor/SelectAccountDialogFragment;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    if-eqz p1, :cond_1

    const-string v3, "ImportExportDialogFragment"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SelectSimDialogFragment"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 85
    :cond_1
    const-string v3, "SelectAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getImportPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 131
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 132
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 133
    .local v0, "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 135
    .end local v0    # "target":Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 96
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 97
    .local v4, "filter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 100
    .local v0, "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v3, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    .line 110
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 111
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    new-instance v6, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$2;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 123
    .local v5, "result":Landroid/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 124
    return-object v5
.end method

.method public setImportPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/contacts/editor/SelectAccountDialogFragment;->mImportPath:Ljava/lang/String;

    .line 193
    return-void
.end method
