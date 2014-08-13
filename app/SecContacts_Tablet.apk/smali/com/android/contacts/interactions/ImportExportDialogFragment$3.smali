.class Lcom/android/contacts/interactions/ImportExportDialogFragment$3;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "dismissDialog":Z
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 339
    .local v5, "resId":I
    const v6, 0x7f0e02bb

    if-eq v5, v6, :cond_0

    const v6, 0x7f0e00d4

    if-eq v5, v6, :cond_0

    const v6, 0x7f0e02c8

    if-eq v5, v6, :cond_0

    const v6, 0x7f0e02bc

    if-eq v5, v6, :cond_0

    const v6, 0x7f0e03f8

    if-eq v5, v6, :cond_0

    const v6, 0x7f0e02c9

    if-ne v5, v6, :cond_2

    :cond_0
    sget v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    if-nez v6, :cond_2

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    sparse-switch v5, :sswitch_data_0

    .line 507
    const/4 v0, 0x1

    .line 508
    const-string v6, "ImportExportDialogFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_1
    if-eqz v0, :cond_1

    .line 513
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 371
    :sswitch_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    const-string v7, "vnd.sec.contact.sim2"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleDualStandbyImportRequest(I)Z
    invoke-static {v6, v5}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z

    move-result v0

    .line 377
    goto :goto_1

    .line 381
    :cond_3
    :sswitch_1
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z
    invoke-static {v6, v5}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z

    move-result v0

    .line 382
    goto :goto_1

    .line 386
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 388
    const/4 v0, 0x1

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-string v6, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "exportIntent":Landroid/content/Intent;
    const-string v6, "additional"

    const-string v7, "intent.action.EXPORT_TO_INTERNEL_SDCARD"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 395
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x1

    .line 396
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .restart local v1    # "exportIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ct_backup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 401
    :cond_5
    const-string v6, "file_name"

    iget-object v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/interactions/ImportExportDialogFragment;->getVcardName()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$200(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v6, "path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Contacts/Export"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 408
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableSelectableListToExportSdCard"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 410
    const/4 v0, 0x1

    .line 411
    new-instance v1, Landroid/content/Intent;

    const-string v6, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v1    # "exportIntent":Landroid/content/Intent;
    const-string v6, "additional"

    const-string v7, "intent.action.EXPORT_TO_EXTERNEL_SDCARD"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 417
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x1

    .line 418
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .restart local v1    # "exportIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/ct_backup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 423
    :cond_7
    const-string v6, "file_name"

    iget-object v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    # invokes: Lcom/android/contacts/interactions/ImportExportDialogFragment;->getVcardName()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$200(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v6, "path"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/Contacts/Export"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 447
    .end local v1    # "exportIntent":Landroid/content/Intent;
    :sswitch_4
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    .line 482
    .local v4, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v6, "ril.initPB"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 483
    .local v3, "mPbReady":Z
    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    .line 486
    const/4 v0, 0x1

    .line 487
    new-instance v2, Landroid/content/Intent;

    const-string v6, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v2, "intentCopy":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 489
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 491
    .end local v2    # "intentCopy":Landroid/content/Intent;
    :cond_a
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0e0114

    invoke-static {v6, v7}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 492
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 499
    .end local v3    # "mPbReady":Z
    .end local v4    # "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :sswitch_5
    const/4 v0, 0x1

    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v6, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .restart local v2    # "intentCopy":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 502
    iget-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00d1 -> :sswitch_0
        0x7f0e00d2 -> :sswitch_0
        0x7f0e02bb -> :sswitch_2
        0x7f0e02bc -> :sswitch_3
        0x7f0e02bd -> :sswitch_1
        0x7f0e02be -> :sswitch_1
        0x7f0e02c8 -> :sswitch_4
        0x7f0e02c9 -> :sswitch_4
        0x7f0e03f7 -> :sswitch_0
        0x7f0e03f8 -> :sswitch_5
    .end sparse-switch
.end method
