.class public Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;
.super Landroid/app/DialogFragment;
.source "SIMManagementDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# static fields
.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field public static final TAG:Ljava/lang/String; = "SIMManagementDialogFragment"

.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private isAirplaneMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 63
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mExternalSdCardMounted:Z

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 66
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 204
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 206
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 209
    .local v3, "size":I
    if-le v3, v5, :cond_0

    .line 211
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 212
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0e0128

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 226
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return v4

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_1
    invoke-static {v6, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    move v4, v5

    .line 226
    goto :goto_0

    .line 224
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 78
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;-><init>()V

    .line 79
    .local v0, "fragment":Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;
    const-string v1, "SIMManagementDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 237
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 238
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 245
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "SelectAccountDialogFragment"

    invoke-virtual {v9, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    .line 88
    .local v2, "accountDialogFragment":Lcom/android/contacts/editor/SelectAccountDialogFragment;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 95
    .local v6, "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 99
    .local v5, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0401e3

    invoke-direct {v3, p0, v9, v10, v5}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 111
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->isAirplaneMode:Z

    .line 115
    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->isAirplaneMode:Z

    if-nez v7, :cond_3

    .line 116
    const v7, 0x7f0e03b3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    const-string v7, "sec_container_1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 121
    const v7, 0x7f0e03b4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 124
    :cond_2
    const v7, 0x7f0e03b5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 127
    .end local v0    # "PACKAGE_NAME":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 174
    .local v4, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e03bb

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v9, -0x1

    invoke-virtual {v7, v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v9, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 188
    .local v1, "SimMgmtDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 190
    return-object v1
.end method
