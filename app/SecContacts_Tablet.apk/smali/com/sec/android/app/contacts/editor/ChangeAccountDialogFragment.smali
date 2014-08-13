.class public Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "ChangeAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static final CHANGE_ACCOUNT_FRAGMENT_TAG:Ljava/lang/String; = "ChangeAccountDialogFragment"

.field private static final KEY_EXTRA_ARGS:Ljava/lang/String; = "extra_args"

.field private static final KEY_LIST_FILTER:Ljava/lang/String; = "list_filter"

.field private static final KEY_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"

.field private static final SUBACTIVITY_ADD_NEW_ACCOUNT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SelectAccountDialogFragment"

.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private static final mPositiveOnClickListener:Landroid/view/View$OnClickListener;


# instance fields
.field public final SIM_ONE:I

.field public final SIM_ZERO:I

.field private mListener:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mPositiveOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->SIM_ZERO:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->SIM_ONE:I

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$100()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorUtils;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorUtils;

    .prologue
    .line 48
    sput-object p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object p0
.end method

.method public static dismissDialog(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 115
    const-string v1, "ChangeAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    .line 118
    .local v0, "fragment":Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 121
    :cond_0
    return-void
.end method

.method public static isShowing(Landroid/app/FragmentManager;)Z
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 124
    const-string v1, "ChangeAccountDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    .line 127
    .local v0, "fragment":Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    goto :goto_0
.end method

.method private onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 6
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    const/4 v5, 0x0

    .line 219
    sget-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 222
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e03fc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    const/4 p1, 0x0

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 274
    :cond_2
    :goto_0
    return-void

    .line 235
    :cond_3
    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e00a3

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    :goto_1
    const/4 p1, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e00a2

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 268
    :cond_5
    const-string v0, "com.osp.app.signin"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 269
    sget-object v0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 272
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "titleResourceId"    # I
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p3, "extraArgs"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "title_res_id"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v3, "list_filter"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 102
    const-string v3, "extra_args"

    if-nez p3, :cond_0

    sget-object p3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p3    # "extraArgs":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    const-string v3, "ChangeAccountDialogFragment"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 105
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    if-eqz v3, :cond_1

    .line 106
    check-cast v1, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    .end local v1    # "f":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 108
    :cond_1
    new-instance v2, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;-><init>()V

    .line 109
    .local v2, "instance":Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {v2, p4}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->setListener(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;)V

    .line 111
    const-string v3, "ChangeAccountDialogFragment"

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 213
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 143
    .local v4, "filter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v0, v6, v4, v7, v8}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/AccountWithDataSet;Z)V

    .line 146
    .local v0, "accountAdapter":Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v3, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    .line 155
    .local v3, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e020c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v6, 0x7f0e0295

    const-string v7, "title_res_id"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 192
    const v6, 0x7f0e0294

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0347

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;-><init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 205
    .local v5, "result":Landroid/app/AlertDialog;
    return-object v5

    .line 202
    .end local v5    # "result":Landroid/app/AlertDialog;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->mListener:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$Listener;

    .line 135
    return-void
.end method
