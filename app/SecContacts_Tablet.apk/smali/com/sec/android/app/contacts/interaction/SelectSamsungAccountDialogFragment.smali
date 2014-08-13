.class public final Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectSamsungAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final KEY_EXTRA_ARGS:Ljava/lang/String; = "extra_args"

.field private static final KEY_LIST_FILTER:Ljava/lang/String; = "list_filter"

.field private static final KEY_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"

.field public static final TAG:Ljava/lang/String; = "SelectSamsungAccountDialogFragment"

.field private static sListener:Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 96
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;ILandroid/os/Bundle;)V
    .locals 5
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "listener"    # Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;
    .param p2, "titleResourceId"    # I
    .param p3, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "title_res_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v3, "list_filter"

    sget-object v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SAMSUNG:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 50
    const-string v3, "extra_args"

    if-nez p3, :cond_0

    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p3    # "extraArgs":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    sput-object p1, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;

    .line 53
    new-instance v2, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;-><init>()V

    .line 55
    .local v2, "instance":Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    const-string v3, "SelectSamsungAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SelectSamsungAccountDialogFragment"

    const-string v4, "IllegalStateException occurs."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 90
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 93
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 68
    .local v4, "filter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 71
    .local v0, "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v3, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    .line 81
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 84
    .local v5, "result":Landroid/app/AlertDialog;
    return-object v5
.end method
