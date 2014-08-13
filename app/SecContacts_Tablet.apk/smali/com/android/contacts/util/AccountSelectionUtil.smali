.class public Lcom/android/contacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AccountSelectionUtil"

.field public static final SIM2_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim2"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim"

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field public static final TAG:Ljava/lang/String; = "AccountSelectionUtil"

.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 247
    sparse-switch p1, :sswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 250
    :sswitch_0
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 254
    :sswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim2(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 258
    :sswitch_2
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 263
    :sswitch_3
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00d1 -> :sswitch_0
        0x7f0e00d2 -> :sswitch_0
        0x7f0e02bd -> :sswitch_3
        0x7f0e02be -> :sswitch_3
        0x7f0e03b3 -> :sswitch_2
        0x7f0e03f7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 392
    if-nez p0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v2, "importIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 398
    .local v0, "activity":Landroid/app/Activity;
    instance-of v4, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    if-eqz v4, :cond_4

    move-object v0, p0

    .line 399
    check-cast v0, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    .line 403
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SelectAccountDialogFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    .line 404
    .local v3, "selectAccountFragment":Lcom/android/contacts/editor/SelectAccountDialogFragment;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ImportExportDialogFragment"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    .line 405
    .local v1, "importExportFragment":Lcom/android/contacts/interactions/ImportExportDialogFragment;
    if-eqz p1, :cond_1

    .line 406
    const-string v4, "account_name"

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v4, "account_type"

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v4, "data_set"

    iget-object v5, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    :cond_1
    sget-boolean v4, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v4, :cond_2

    .line 412
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    sget-object v4, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 415
    :cond_2
    if-eqz v1, :cond_5

    .line 416
    const-string v4, "importPath"

    invoke-virtual {v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    :cond_3
    :goto_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    .line 421
    const/4 v4, 0x0

    sput-object v4, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 422
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1    # "importExportFragment":Lcom/android/contacts/interactions/ImportExportDialogFragment;
    .end local v3    # "selectAccountFragment":Lcom/android/contacts/editor/SelectAccountDialogFragment;
    :cond_4
    move-object v0, p0

    .line 401
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    goto :goto_1

    .line 417
    .restart local v1    # "importExportFragment":Lcom/android/contacts/interactions/ImportExportDialogFragment;
    .restart local v3    # "selectAccountFragment":Lcom/android/contacts/editor/SelectAccountDialogFragment;
    :cond_5
    if-eqz v3, :cond_3

    .line 418
    const-string v4, "importPath"

    invoke-virtual {v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.IMPORT_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "importIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    if-eqz p1, :cond_0

    .line 317
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    :cond_0
    const-class v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "selectAllOnLoad"    # Z

    .prologue
    .line 350
    if-nez p0, :cond_0

    .line 351
    const-string v2, "AccountSelectionUtil"

    const-string v3, "Null Context in doImportFromSim"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 357
    .local v1, "phonebookManagerSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.IMPORT_SIM_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "importIntent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    if-eqz p1, :cond_1

    .line 361
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v2, "data_set"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :cond_1
    const-class v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 370
    const-string v2, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    const-string v2, "SHOW_CONFIRMATION_DIALOG"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 374
    const-string v2, "CONTACT_SELECTION_TITLE"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    .end local v0    # "importIntent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v0    # "importIntent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    if-eqz p1, :cond_3

    .line 381
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v2, "data_set"

    iget-object v3, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    :cond_3
    const-string v2, "com.samsung.usim.contacts"

    const-string v3, "com.samsung.usim.contacts.SecSimContacts"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static doImportFromSim2(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.IMPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "importIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    if-eqz p1, :cond_0

    .line 334
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "data_set"

    iget-object v2, p1, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :cond_0
    const-class v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method public static doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p3, "bIsSim1"    # Z

    .prologue
    .line 270
    sparse-switch p1, :sswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 272
    :sswitch_0
    if-nez p3, :cond_0

    .line 273
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim2(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 280
    :sswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim2(Landroid/content/Context;Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d1 -> :sswitch_0
        0x7f0e03f7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-static {p0, p1, v0, v0}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    .line 117
    .local v5, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const v1, 0x7f0e00d3

    if-ne p1, v1, :cond_2

    .line 118
    invoke-virtual {v5}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_0
    const-string v1, "AccountSelectionUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The number of available accounts: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 136
    .local v7, "dialogContext":Landroid/content/Context;
    :goto_1
    const-string v1, "layout_inflater"

    invoke-virtual {v7, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 138
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/util/AccountSelectionUtil$1;

    const v2, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 227
    .local v0, "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-nez p2, :cond_0

    .line 228
    new-instance v6, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 230
    .local v6, "accountSelectedListener":Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    move-object p2, v6

    .line 232
    .end local v6    # "accountSelectedListener":Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    :cond_0
    if-nez p3, :cond_1

    .line 233
    new-instance p3, Lcom/android/contacts/util/AccountSelectionUtil$2;

    .end local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    invoke-direct {p3}, Lcom/android/contacts/util/AccountSelectionUtil$2;-><init>()V

    .line 239
    .restart local p3    # "onCancelListener":Landroid/content/DialogInterface$OnCancelListener;
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0128

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "accountAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v3    # "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v4    # "dialogInflater":Landroid/view/LayoutInflater;
    .end local v7    # "dialogContext":Landroid/content/Context;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "writableAccountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 133
    :cond_3
    new-instance v7, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v7, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v7    # "dialogContext":Landroid/content/Context;
    goto :goto_1
.end method
