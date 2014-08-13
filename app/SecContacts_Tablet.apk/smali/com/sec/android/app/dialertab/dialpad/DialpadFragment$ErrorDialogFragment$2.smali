.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V
    .locals 0

    .prologue
    .line 11307
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 11309
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11310
    .local v3, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 11312
    .local v1, "currSimId":I
    :try_start_0
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 11313
    .local v4, "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 11314
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getDefaultSimForVoiceCalls()I

    move-result v1

    .line 11315
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ADD_VOICEMAIL currSimId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11321
    .end local v4    # "mTelephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v7, "feature_chn_duos"

    invoke-static {v7}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkDualSim()Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 11322
    .local v0, "checkDualSim":Z
    :goto_1
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ADD_VOICEMAIL checkDualSim : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 11323
    if-eqz v0, :cond_6

    .line 11324
    const-string v7, "isVoiceMailServiceDualSim"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11325
    const-string v7, "isVoiceMailSettings"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11326
    iget-object v7, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 11327
    const-string v6, "CallSettingTab"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11337
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11338
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11340
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11341
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v5, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 11343
    :cond_3
    return-void

    .line 11317
    .end local v0    # "checkDualSim":Z
    :catch_0
    move-exception v2

    .line 11318
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 11319
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->DBG:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2200()Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    move v0, v6

    .line 11321
    goto :goto_1

    .line 11329
    .restart local v0    # "checkDualSim":Z
    :cond_5
    const-string v5, "CallSettingTab"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 11332
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v6

    if-ne v6, v5, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/internal/telephony/MultiSimManager;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11333
    const-string v6, "isVoiceMailSettings"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11334
    const-string v6, "CallSettingTab"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method
