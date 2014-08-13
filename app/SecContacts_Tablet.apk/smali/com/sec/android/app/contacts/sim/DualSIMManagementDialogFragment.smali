.class public Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;
.super Landroid/app/DialogFragment;
.source "DualSIMManagementDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;


# static fields
.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field public static final SIM2_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim2"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim"

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DualSIMManagementDialogFragment"

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

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 81
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mExternalSdCardMounted:Z

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 84
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 187
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 190
    .local v3, "size":I
    if-le v3, v5, :cond_0

    .line 192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0e0128

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 207
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_0
    return v4

    .line 205
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

    .line 207
    goto :goto_0

    .line 205
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 95
    new-instance v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;-><init>()V

    .line 96
    .local v0, "fragment":Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;
    const-string v1, "DualSIMManagementDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 218
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 219
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 226
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 105
    .local v4, "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 109
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0401e3

    invoke-direct {v1, p0, v6, v7, v3}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 121
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->isAirplaneMode:Z

    .line 125
    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->isAirplaneMode:Z

    if-nez v5, :cond_2

    .line 126
    const v5, 0x7f0e03b3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    const-string v5, "sec_container_1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 131
    const v5, 0x7f0e03b4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 134
    :cond_1
    const v5, 0x7f0e03b5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 137
    .end local v0    # "PACKAGE_NAME":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 169
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0e03bb

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onSimChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const v11, 0x7f0e03b5

    const v10, 0x7f0e03b4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 275
    const-string v6, "resourceId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const v7, 0x7f0e03b3

    if-ne v6, v7, :cond_3

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 278
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 280
    .local v4, "size":I
    const-string v6, "vnd.sec.contact.sim2"

    iget-object v7, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "resourceId"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v8, :cond_0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    :cond_0
    invoke-static {v6, v7, v5, v9}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V

    .line 326
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v4    # "size":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 327
    return-void

    .line 283
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .restart local v1    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v4    # "size":I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "resourceId"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v4, v8, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    :cond_2
    invoke-static {v6, v7, v5, v8}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 285
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v4    # "size":I
    :cond_3
    const-string v5, "resourceId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 287
    const/4 v3, 0x0

    .line 288
    .local v3, "intentCopy":Landroid/content/Intent;
    const-string v5, "vnd.sec.contact.sim2"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentCopy":Landroid/content/Intent;
    const-string v5, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v3    # "intentCopy":Landroid/content/Intent;
    :goto_1
    const-string v5, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v5, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const-string v5, "CONTACT_SELECTION_TITLE"

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentCopy":Landroid/content/Intent;
    const-string v5, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intentCopy":Landroid/content/Intent;
    goto :goto_1

    .line 304
    .end local v3    # "intentCopy":Landroid/content/Intent;
    :cond_5
    const-string v5, "resourceId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v11, :cond_7

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, "deleteIntent":Landroid/content/Intent;
    const-string v5, "vnd.sec.contact.sim2"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 310
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "deleteIntent":Landroid/content/Intent;
    const-string v5, "intent.action.DELETE_SIM2_CONTACT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v2    # "deleteIntent":Landroid/content/Intent;
    :goto_2
    const-string v5, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    const-string v5, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    const-string v5, "CONTACT_SELECTION_TITLE"

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 314
    :cond_6
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "deleteIntent":Landroid/content/Intent;
    const-string v5, "intent.action.DELETE_SIM_CONTACT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2    # "deleteIntent":Landroid/content/Intent;
    goto :goto_2

    .line 324
    .end local v2    # "deleteIntent":Landroid/content/Intent;
    :cond_7
    const-string v5, "DualSIMManagementDialogFragment"

    const-string v6, "selectSimForDS No matching case "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSimSelectorCancelled()V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 333
    return-void
.end method

.method selectSimForDS(I)Z
    .locals 7
    .param p1, "resId"    # I

    .prologue
    const v6, 0x7f0e03b5

    const v5, 0x7f0e03b4

    const v4, 0x7f0e03b3

    const/4 v1, 0x1

    .line 230
    if-ne p1, v4, :cond_0

    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "resourceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, p0, v4, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 263
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    return v1

    .line 240
    :cond_0
    if-ne p1, v5, :cond_1

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v2, "resourceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, p0, v5, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 250
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    if-ne p1, v6, :cond_2

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v2, "resourceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, p0, v6, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 261
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2
    const-string v1, "DualSIMManagementDialogFragment"

    const-string v2, "selectSimForDS No matching case "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v1, 0x0

    goto :goto_0
.end method
